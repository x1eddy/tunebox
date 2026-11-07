import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart' show Value;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../ai/credit.dart';
import '../../state/owner.dart' show logEvent;
import '../db/database.dart';
import 'yt_service.dart' show stripPipeGarnish;

@immutable
class LyricLine {
  const LyricLine(this.time, this.text);
  final Duration time;
  final String text;
}

@immutable
class Lyrics {
  const Lyrics({this.lines = const [], this.plain, this.source = 'none'});

  /// Timed lines, in order. Empty when only [plain] text is known.
  final List<LyricLine> lines;
  final String? plain;
  final String source;

  bool get synced => lines.isNotEmpty;
  bool get isEmpty => lines.isEmpty && (plain == null || plain!.trim().isEmpty);

  /// Index of the line being sung at [position], or -1 before the first.
  int lineAt(Duration position) {
    var lo = 0, hi = lines.length - 1, found = -1;
    while (lo <= hi) {
      final mid = (lo + hi) >> 1;
      if (lines[mid].time <= position) {
        found = mid;
        lo = mid + 1;
      } else {
        hi = mid - 1;
      }
    }
    return found;
  }
}

/// Reads LRC: "[mm:ss.xx]text", several stamps per line allowed, plus an
/// optional "[offset:+/-ms]". Metadata tags ([ar:], [ti:]…) are ignored.
List<LyricLine> parseLrc(String lrc) {
  final stamp = RegExp(r'\[(\d{1,3}):(\d{1,2})(?:[.:](\d{1,3}))?\]');
  final offsetTag = RegExp(r'\[offset:\s*([+-]?\d+)\]', caseSensitive: false);
  final offset = int.tryParse(offsetTag.firstMatch(lrc)?.group(1) ?? '') ?? 0;
  final out = <LyricLine>[];
  for (final raw in const LineSplitter().convert(lrc)) {
    final stamps = stamp.allMatches(raw).toList();
    if (stamps.isEmpty) continue;
    final text = raw.substring(stamps.last.end).trim();
    for (final m in stamps) {
      final min = int.parse(m.group(1)!);
      final sec = int.parse(m.group(2)!);
      final frac = m.group(3);
      final ms = frac == null
          ? 0
          : int.parse(frac.padRight(3, '0').substring(0, 3));
      // A positive offset means the lyrics should show earlier.
      final t = Duration(
        milliseconds: (min * 60 + sec) * 1000 + ms - offset,
      );
      out.add(LyricLine(t.isNegative ? Duration.zero : t, text));
    }
  }
  out.sort((a, b) => a.time.compareTo(b.time));
  return out;
}

/// "Song (Official Video) [HD]" -> "Song". What LRCLIB knows songs by.
String cleanTitle(String title) {
  var t = stripPipeGarnish(title);
  t = t.replaceAll(
    RegExp(
      r'[\(\[][^\)\]]*(official|video|audio|lyric|visuali[sz]er|hd|4k|remaster|mv|m/v)[^\)\]]*[\)\]]',
      caseSensitive: false,
    ),
    '',
  );
  // "Artist - Title" uploads
  final dash = t.indexOf(' - ');
  if (dash > 0) t = t.substring(dash + 3);
  t = t.replaceAll(RegExp(r'\s+(ft\.?|feat\.?|featuring)\s.*$', caseSensitive: false), '');
  return t.replaceAll(RegExp(r'\s+'), ' ').trim();
}

/// Finds lyrics: an .lrc file next to a local song, else LRCLIB (free, open,
/// no account). Everything found, and every miss, is cached.
class LyricsService {
  LyricsService(this._db, {http.Client? client})
    : _http = client ?? http.Client();

  final AppDatabase _db;
  final http.Client _http;
  final _memory = <String, Lyrics>{};

  static const _ua = 'TuneBox/1.0 (https://tunebox.pages.dev)';

  Future<Lyrics> forSong(Song song, {bool refresh = false}) async {
    final hit = _memory[song.id];
    if (hit != null && !refresh) return hit;
    if (!refresh) {
      final row = await _db.cachedLyrics(song.id);
      if (row != null) {
        final l = _fromRow(row);
        // A miss is retried after a week; lyrics get added to LRCLIB.
        final stale =
            l.isEmpty &&
            DateTime.now().difference(row.fetchedAt) > const Duration(days: 7);
        if (!stale) return _memory[song.id] = l;
      }
    }
    final found = await _find(song);
    await _db.saveLyrics(
      LyricsCacheCompanion.insert(
        songId: song.id,
        synced: Value(found.synced ? _toLrc(found.lines) : null),
        plain: Value(found.plain),
        source: Value(found.source),
        fetchedAt: Value(DateTime.now()),
      ),
    );
    return _memory[song.id] = found;
  }

  Lyrics _fromRow(LyricsCacheData row) => Lyrics(
    lines: row.synced == null ? const [] : parseLrc(row.synced!),
    plain: row.plain,
    source: row.source,
  );

  static String _toLrc(List<LyricLine> lines) => lines.map((l) {
    final m = l.time.inMinutes.toString().padLeft(2, '0');
    final s = (l.time.inSeconds % 60).toString().padLeft(2, '0');
    final cs = ((l.time.inMilliseconds % 1000) ~/ 10).toString().padLeft(2, '0');
    return '[$m:$s.$cs]${l.text}';
  }).join('\n');

  Future<Lyrics> _find(Song song) async {
    final path = song.filePath;
    if (path != null) {
      final dot = path.lastIndexOf('.');
      final lrc = File('${dot > 0 ? path.substring(0, dot) : path}.lrc');
      if (lrc.existsSync()) {
        try {
          final text = await lrc.readAsString();
          final lines = parseLrc(text);
          return Lyrics(
            lines: lines,
            plain: lines.isEmpty ? text : null,
            source: 'file',
          );
        } catch (_) {}
      }
    }
    try {
      return await _lrclib(song);
    } catch (e) {
      logEvent('lyrics lookup failed: ${song.title} — $e');
      // Offline or LRCLIB down: do not cache a miss for a week over that.
      throw const LyricsUnavailable();
    }
  }

  Future<Lyrics> _lrclib(Song song) async {
    final title = cleanTitle(song.title);
    final artist = creditedArtist(song);
    final seconds = (song.durationMs / 1000).round();
    final headers = {'User-Agent': _ua};

    Lyrics fromJson(Map<String, dynamic> j) {
      final synced = j['syncedLyrics'] as String?;
      final plain = j['plainLyrics'] as String?;
      if (j['instrumental'] == true) {
        return const Lyrics(plain: '♪', source: 'lrclib');
      }
      return Lyrics(
        lines: synced == null ? const [] : parseLrc(synced),
        plain: plain,
        source: 'lrclib',
      );
    }

    final exact = Uri.https('lrclib.net', '/api/get', {
      'track_name': title,
      'artist_name': artist,
      if (song.album.isNotEmpty) 'album_name': song.album,
      if (seconds > 0) 'duration': '$seconds',
    });
    final r = await _http
        .get(exact, headers: headers)
        .timeout(const Duration(seconds: 10));
    if (r.statusCode == 200) {
      return fromJson(jsonDecode(r.body) as Map<String, dynamic>);
    }
    if (r.statusCode != 404) throw HttpException('LRCLIB ${r.statusCode}');

    // No exact match: search, and accept the closest length within 5 s.
    final search = Uri.https('lrclib.net', '/api/search', {
      'track_name': title,
      'artist_name': artist,
    });
    final s = await _http
        .get(search, headers: headers)
        .timeout(const Duration(seconds: 10));
    if (s.statusCode != 200) throw HttpException('LRCLIB ${s.statusCode}');
    final results = (jsonDecode(s.body) as List).cast<Map<String, dynamic>>();
    Map<String, dynamic>? best;
    var bestDiff = 1 << 30;
    for (final j in results) {
      final d = ((j['duration'] as num?)?.round() ?? 0) - seconds;
      final diff = seconds == 0 ? 0 : d.abs();
      final hasSync = j['syncedLyrics'] != null;
      // prefer synced among equally close results
      final score = diff * 2 - (hasSync ? 1 : 0);
      if (diff <= 5 && score < bestDiff) {
        best = j;
        bestDiff = score;
      }
    }
    if (best != null) return fromJson(best);
    // An extended or live cut: the timings would be wrong, but the words
    // are still the words.
    for (final j in results) {
      final plain = j['plainLyrics'] as String?;
      if (plain != null && plain.trim().isNotEmpty) {
        return Lyrics(plain: plain, source: 'lrclib');
      }
    }
    return const Lyrics(source: 'none');
  }
}

/// Lyrics could not be looked up right now (offline, server down). Not the
/// same as "this song has none".
class LyricsUnavailable implements Exception {
  const LyricsUnavailable();
}
