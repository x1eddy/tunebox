import 'dart:isolate';
import 'dart:math';

import 'package:drift/drift.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_explode_dart/youtube_explode_dart.dart' as yt;

import '../db/database.dart';
import 'innertube.dart';
import 'song_filter.dart';

/// Everything that comes out of YouTube.
///
/// Search, related tracks and metadata are parsed in a background isolate —
/// doing it on the UI isolate visibly freezes the app while a page is parsed.
class YtService {
  YtService({InnerTube? innerTube})
    : _yt = yt.YoutubeExplode(),
      innerTube = innerTube ?? InnerTube();

  final yt.YoutubeExplode _yt;

  /// Stream resolution goes through InnerTube — the scraped watch-page URLs
  /// that youtube_explode produces come back 403.
  final InnerTube innerTube;

  final _downloadClient = http.Client();

  void dispose() {
    _yt.close();
    innerTube.dispose();
    _downloadClient.close();
  }

  Future<void> warmUp() => innerTube.warmUp();

  /// Search.
  ///
  /// YouTube Music first: it only indexes music, so nothing that isn't a song
  /// can come back. Plain YouTube is the fallback, and everything it returns
  /// goes through the strict song filter — its idea of a music query includes
  /// MMA livestreams and basketball games.
  Future<List<SongsCompanion>> search(String query, {int max = 30}) async {
    try {
      final music = await innerTube.musicSearch(query, max: max);
      final rows = _rows(music, strict: false);
      if (rows.isNotEmpty) return rows;
    } catch (_) {
      // fall through to plain YouTube
    }
    try {
      final items = await innerTube.search(query, max: max);
      final rows = _rows(items, strict: true);
      if (rows.isNotEmpty) return rows;
    } catch (_) {
      // fall through to the scraper
    }
    final rows = await Isolate.run(() async {
      final client = yt.YoutubeExplode();
      try {
        final results = await client.search.search(query);
        return [for (final v in results.take(max)) _toMap(v)];
      } finally {
        client.close();
      }
    });
    return [
      for (final row in rows)
        if (looksLikeASong(
          row['title'] as String? ?? '',
          row['duration'] as int? ?? 0,
          artist: row['author'] as String? ?? '',
          strict: true,
        ))
          _fromMap(row),
    ];
  }

  List<SongsCompanion> _rows(List<VideoItem> items, {required bool strict}) => [
    for (final item in items)
      if (looksLikeASong(
        item.title,
        item.durationMs,
        artist: item.author,
        strict: strict,
      ))
        _fromMap({
          'id': item.id,
          'title': item.title,
          'author': item.author,
          'album': item.album,
          'thumb': item.thumbnailUrl,
          'duration': item.durationMs,
          'year': item.year,
        }),
  ];

  /// Songs that go with one song.
  ///
  /// YouTube Music's radio queue is music by construction; YouTube's "related
  /// videos" is whatever the algorithm feels like, so it is only the fallback.
  Future<List<SongsCompanion>> related(String videoId, {int max = 25}) async {
    try {
      final radio = await innerTube.musicRadio(videoId, max: max);
      final rows = _rows(radio, strict: false);
      if (rows.isNotEmpty) return rows;
    } catch (_) {
      // fall through
    }
    try {
      final rows = await Isolate.run(() async {
        final client = yt.YoutubeExplode();
        try {
          final video = await client.videos.get(videoId);
          final list = await client.videos.getRelatedVideos(video);
          if (list == null) return <Map<String, Object?>>[];
          return [for (final v in list.take(max)) _toMap(v)];
        } finally {
          client.close();
        }
      }).timeout(const Duration(seconds: 25));
      return [
        for (final row in rows)
          if (looksLikeASong(
            row['title'] as String? ?? '',
            row['duration'] as int? ?? 0,
            artist: row['author'] as String? ?? '',
            strict: true,
          ))
            _fromMap(row),
      ];
    } catch (_) {
      return const [];
    }
  }

  /// Candidate pool for the AI: a few searches, merged and de-duplicated.
  Future<List<SongsCompanion>> discover(
    List<String> seeds, {
    int perSeed = 14,
  }) async {
    final out = <String, SongsCompanion>{};
    // Shelves claim songs exclusively, so the pool has to be big enough to
    // fill several of them.
    for (final seed in seeds.take(4)) {
      try {
        final found = await search(
          seed,
          max: perSeed,
        ).timeout(const Duration(seconds: 20));
        for (final s in found) {
          out[s.id.value] = s;
        }
      } catch (_) {
        // one bad seed shouldn't empty the shelf
      }
    }
    return out.values.toList();
  }

  /// Best audio format for a video, straight from InnerTube.
  Future<AudioFormat> bestAudio(String videoId, {int maxBitrateKbps = 0}) async {
    final result = await innerTube.player(videoId);
    final format = result.best(maxKbps: maxBitrateKbps);
    if (format == null) {
      throw InnerTubeException(
        result.reason ?? 'no audio stream (${result.status})',
      );
    }
    return format;
  }

  /// All formats to try for [videoId], best first — some videos refuse one
  /// format (HTTP 403) and serve another.
  Future<List<AudioFormat>> audioCandidates(
    String videoId, {
    int maxBitrateKbps = 0,
  }) async {
    final result = await innerTube.player(videoId);
    final list = result.ranked(maxKbps: maxBitrateKbps);
    if (list.isEmpty) {
      throw InnerTubeException(
        result.reason ?? 'no audio stream (${result.status})',
      );
    }
    return list;
  }

  /// Downloads in ranges — googlevideo refuses an unranged GET outright.
  Stream<List<int>> download(AudioFormat format) async* {
    const chunk = 8 * 1024 * 1024;
    final total = format.contentLength;
    var start = 0;

    while (total == 0 || start < total) {
      final end = total == 0 ? start + chunk - 1 : min(start + chunk - 1, total - 1);
      final request = http.Request('GET', Uri.parse(format.url))
        ..headers['user-agent'] = InnerTube.visionUserAgent
        ..headers['range'] = 'bytes=$start-$end';
      final response = await _downloadClient.send(request);
      if (response.statusCode >= 400) {
        throw InnerTubeException('stream returned ${response.statusCode}');
      }
      var received = 0;
      await for (final bytes in response.stream) {
        received += bytes.length;
        yield bytes;
      }
      if (received == 0) break;
      start += received;
      if (total == 0 && received < chunk) break;
    }
  }

  /// Album and release year for one song, or null if YouTube Music has none.
  ///
  /// A music *video* ("Billie Jean" by MichaelJacksonVEVO) has no release year
  /// on YouTube Music — only the catalogue entry does. So when the video says
  /// nothing, look the song itself up and take the **earliest** year the
  /// catalogue offers: Thriller in 1982 rather than a 1995 compilation.
  Future<SongsCompanion?> albumInfo(
    String videoId, {
    String title = '',
    String artist = '',
  }) async {
    try {
      final direct = await innerTube.songInfo(videoId);
      var album = direct?.album ?? '';
      var year = direct?.year;

      if (year == null && title.isNotEmpty) {
        final hits = await innerTube.musicSearch('$artist $title'.trim(), max: 3);
        for (final hit in hits.take(2)) {
          if (!_sameSong(hit.title, title)) continue;
          final info = await innerTube.songInfo(hit.id);
          if (info == null) continue;
          final found = info.year;
          if (found == null) continue;
          final best = year;
          if (best == null || found < best) {
            year = found;
            if (album.isEmpty) album = info.album;
          }
        }
      }

      if (album.isEmpty && year == null) return null;
      return SongsCompanion(
        album: album.isEmpty ? const Value.absent() : Value(album),
        year: year == null ? const Value.absent() : Value(year),
      );
    } catch (_) {
      return null;
    }
  }

  /// Loose title match, so "Billie Jean" lines up with "Billie Jean (2012
  /// Remaster)" but not with "Billie Jean Karaoke Tribute".
  static bool _sameSong(String a, String b) {
    String key(String t) =>
        t.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    final x = key(a);
    final y = key(b);
    if (x.isEmpty || y.isEmpty) return false;
    return x.startsWith(y) || y.startsWith(x);
  }

  /// Keywords and duration — what the AI learns a song's character from.
  Future<SongsCompanion?> details(String videoId) async {
    try {
      final result = await innerTube.player(videoId);
      if (result.title.isEmpty) return null;
      final parsed = splitTitle(result.title, result.author);
      final tags = <String>{
        for (final k in result.keywords) k.toLowerCase().trim(),
      }..removeWhere((t) => t.isEmpty || t.length > 28);
      return SongsCompanion.insert(
        id: videoId,
        title: parsed.$2,
        source: SongSource.youtube,
        artist: Value(parsed.$1),
        durationMs: Value(result.durationMs),
        tags: Value(tags.take(12).join(',')),
      );
    } catch (_) {
      return null;
    }
  }
}

Map<String, Object?> _toMap(yt.Video v) => {
  'id': v.id.value,
  'title': v.title,
  'author': v.author,
  'thumb': 'https://i.ytimg.com/vi/${v.id.value}/mqdefault.jpg',
  'duration': v.duration?.inMilliseconds ?? 0,
  'year': v.uploadDate?.year,
};

SongsCompanion _fromMap(Map<String, Object?> row) {
  final parsed = splitTitle(row['title'] as String, row['author'] as String);
  final album = row['album'] as String? ?? '';
  return SongsCompanion.insert(
    id: row['id'] as String,
    title: parsed.$2,
    source: SongSource.youtube,
    artist: Value(parsed.$1),
    album: Value(album),
    artworkUrl: Value(row['thumb'] as String?),
    durationMs: Value(row['duration'] as int? ?? 0),
    year: Value(row['year'] as int?),
  );
}

/// First [needle] that is not inside brackets, or -1.
///
/// "One (Live - Seattle '89)" has no artist in front of it — splitting on the
/// dash inside the parentheses left "One (Live" as the artist.
int _topLevelIndexOf(String text, String needle) {
  var depth = 0;
  for (var i = 0; i < text.length; i++) {
    final c = text[i];
    if (c == '(' || c == '[' || c == '{') depth++;
    if (c == ')' || c == ']' || c == '}') depth = depth > 0 ? depth - 1 : 0;
    if (depth == 0 && text.startsWith(needle, i)) return i;
  }
  return -1;
}

/// Anything after a pipe is almost always channel garnish:
/// "Soulful Classic Blues | Female Blues Vocals" -> "Soulful Classic Blues".
String stripPipeGarnish(String title) {
  final pipe = title.indexOf('|');
  if (pipe <= 8) return title;
  final head = title.substring(0, pipe).trim();
  return head.isEmpty ? title : head;
}

/// "Cold Atlas - Sodium Lights (Official Video)" -> (Cold Atlas, Sodium Lights)
(String, String) splitTitle(String rawTitle, String author) {
  var title = rawTitle.trim();
  var artist = author.replaceAll(RegExp(r'\s*-\s*Topic$'), '').trim();

  for (final sep in [' - ', ' – ', ' — ', ' | ']) {
    final i = _topLevelIndexOf(title, sep);
    if (i > 0 && i < title.length - sep.length) {
      final left = title.substring(0, i).trim();
      final right = title.substring(i + sep.length).trim();
      if (left.length <= 45) {
        artist = left;
        title = right;
      }
      break;
    }
  }

  title = stripPipeGarnish(title);

  title = title
      .replaceAll(
        RegExp(
          r'\s*[\(\[](official|lyric|audio|video|visualizer|hd|4k|mv|m/v)'
          r'[^\)\]]*[\)\]]',
          caseSensitive: false,
        ),
        '',
      )
      .replaceAll(RegExp(r'\s*\|\s*official.*$', caseSensitive: false), '')
      .trim();

  return (artist, title.isEmpty ? rawTitle : title);
}
