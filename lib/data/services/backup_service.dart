import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';

import '../db/database.dart';

/// Moves what the AI knows — and the library it learned it from — between
/// devices.
///
/// Local files are deliberately left out: their paths mean nothing on another
/// machine. YouTube tracks carry over with their likes, play counts and block
/// flags, so the phone's Home looks like the laptop's the moment it lands.
class BackupService {
  BackupService(this._db);

  final AppDatabase _db;

  static const fileName = 'tunebox-taste.json';
  static const formatVersion = 1;

  /// Where a transfer file is looked for and written.
  ///
  /// On Android this is the app's folder on shared storage, so it can be
  /// filled over USB (`adb push`) or by a file manager without any permission
  /// dance. On iOS it is the Documents folder, which the Files app shows as
  /// "TuneBox". On desktop it sits next to the database.
  Future<Directory> transferDirectory() async {
    if (Platform.isAndroid) {
      final external = await getExternalStorageDirectory();
      if (external != null) {
        if (!external.existsSync()) external.createSync(recursive: true);
        return external;
      }
    }
    return getApplicationDocumentsDirectory();
  }

  Future<File> transferFile() async =>
      File('${(await transferDirectory()).path}/$fileName');

  // ------------------------------------------------------------------ export

  Future<Map<String, Object?>> buildBackup() async {
    final songs = await _db.library();
    final affinities = await _db.allAffinities();
    final events = await _db.recentEvents(limit: 5000);
    final rules = await _db.artistRuleList();

    return {
      'format': formatVersion,
      'createdAt': DateTime.now().toIso8601String(),
      'songs': [
        for (final s in songs)
          if (!s.id.startsWith('local:'))
            {
              'id': s.id,
              'title': s.title,
              'artist': s.artist,
              'album': s.album,
              'artworkUrl': s.artworkUrl,
              'durationMs': s.durationMs,
              'year': s.year,
              'tags': s.tags,
              'liked': s.liked,
              'blocked': s.blocked,
              'playCount': s.playCount,
              'skipCount': s.skipCount,
              'lastPlayed': s.lastPlayed?.millisecondsSinceEpoch,
              'addedAt': s.addedAt.millisecondsSinceEpoch,
            },
      ],
      'affinities': [
        for (final a in affinities)
          {'key': a.key, 'weight': a.weight, 'hits': a.hits},
      ],
      'events': [
        for (final e in events)
          {
            'songId': e.songId,
            'at': e.at.millisecondsSinceEpoch,
            'playedMs': e.playedMs,
            'durationMs': e.durationMs,
            'skipped': e.skipped,
            'origin': e.origin,
            'hour': e.hour,
            'weekday': e.weekday,
          },
      ],
      'artistRules': [
        for (final r in rules) {'artist': r.artist, 'rule': r.rule},
      ],
    };
  }

  /// The transfer file's content, for saving through the system's own
  /// "save as" dialog.
  Future<List<int>> exportBytes() async => utf8.encode(
    const JsonEncoder.withIndent('  ').convert(await buildBackup()),
  );

  /// Writes the transfer file and returns where it went.
  Future<File> export() async {
    final file = await transferFile();
    await file.writeAsString(
      const JsonEncoder.withIndent('  ').convert(await buildBackup()),
      flush: true,
    );
    return file;
  }

  // ------------------------------------------------------------------ import

  Future<BackupSummary> importFromFile(File file) async {
    final raw = jsonDecode(await file.readAsString());
    if (raw is! Map<String, dynamic>) {
      throw const FormatException('not a TuneBox transfer file');
    }
    return importBackup(raw);
  }

  /// Merges a backup into this device. Existing rows are kept and strengthened
  /// rather than overwritten, so importing twice is harmless.
  Future<BackupSummary> importBackup(Map<String, dynamic> backup) async {
    if (backup['format'] != formatVersion) {
      throw FormatException('unsupported backup format: ${backup['format']}');
    }
    // One transaction: thousands of single writes took minutes on a phone,
    // and a failure half way left a half-merged library behind.
    return _db.transaction(() => _merge(backup));
  }

  Future<BackupSummary> _merge(Map<String, dynamic> backup) async {

    var songsAdded = 0;
    var songsMerged = 0;
    for (final raw in (backup['songs'] as List? ?? const [])) {
      final s = raw as Map<String, dynamic>;
      final id = s['id'] as String;
      if (id.startsWith('local:')) continue;
      final existing = await _db.songById(id);

      if (existing == null) {
        await _db.upsertSong(
          SongsCompanion.insert(
            id: id,
            title: s['title'] as String? ?? 'Unknown',
            source: SongSource.youtube,
            artist: Value(s['artist'] as String? ?? ''),
            album: Value(s['album'] as String? ?? ''),
            artworkUrl: Value(s['artworkUrl'] as String?),
            durationMs: Value(s['durationMs'] as int? ?? 0),
            year: Value(s['year'] as int?),
            tags: Value(s['tags'] as String? ?? ''),
            liked: Value(s['liked'] as bool? ?? false),
            blocked: Value(s['blocked'] as bool? ?? false),
            inLibrary: const Value(true),
            playCount: Value(s['playCount'] as int? ?? 0),
            skipCount: Value(s['skipCount'] as int? ?? 0),
            lastPlayed: Value(_date(s['lastPlayed'])),
            addedAt: Value(_date(s['addedAt']) ?? DateTime.now()),
          ),
        );
        songsAdded++;
      } else {
        await _db.patchSong(
          id,
          SongsCompanion(
            liked: Value(existing.liked || (s['liked'] as bool? ?? false)),
            blocked: Value(existing.blocked || (s['blocked'] as bool? ?? false)),
            playCount: Value(
              existing.playCount > (s['playCount'] as int? ?? 0)
                  ? existing.playCount
                  : s['playCount'] as int? ?? 0,
            ),
            skipCount: Value(
              existing.skipCount > (s['skipCount'] as int? ?? 0)
                  ? existing.skipCount
                  : s['skipCount'] as int? ?? 0,
            ),
            tags: Value(
              existing.tags.isNotEmpty
                  ? existing.tags
                  : s['tags'] as String? ?? '',
            ),
            inLibrary: const Value(true),
          ),
        );
        songsMerged++;
      }
    }

    // Weights: keep whichever device holds the stronger opinion. Adding them
    // (as this used to) doubled everything on every import of the same file.
    var weights = 0;
    final local = {
      for (final a in await _db.allAffinities()) a.key: a.weight,
    };
    for (final raw in (backup['affinities'] as List? ?? const [])) {
      final a = raw as Map<String, dynamic>;
      final key = a['key'] as String;
      final weight = (a['weight'] as num?)?.toDouble() ?? 0;
      if (weight == 0) continue;
      if (weight.abs() > (local[key]?.abs() ?? 0)) {
        await _db.setAffinity(key, weight);
        weights++;
      }
    }

    // Plays: a play already on this device (same song, same moment) is not
    // added a second time.
    var events = 0;
    final seen = {
      for (final e in await _db.recentEvents(limit: 1000000))
        '${e.songId}@${e.at.millisecondsSinceEpoch}',
    };
    for (final raw in (backup['events'] as List? ?? const [])) {
      final e = raw as Map<String, dynamic>;
      final at = _date(e['at']) ?? DateTime.now();
      final key = '${e['songId']}@${at.millisecondsSinceEpoch}';
      if (!seen.add(key)) continue;
      await _db.logEvent(
        PlayEventsCompanion.insert(
          songId: e['songId'] as String,
          playedMs: e['playedMs'] as int? ?? 0,
          durationMs: e['durationMs'] as int? ?? 0,
          at: Value(at),
          skipped: Value(e['skipped'] as bool? ?? false),
          origin: Value(e['origin'] as String? ?? 'import'),
          hour: e['hour'] as int? ?? 0,
          weekday: e['weekday'] as int? ?? 1,
        ),
      );
      events++;
    }

    var rules = 0;
    for (final raw in (backup['artistRules'] as List? ?? const [])) {
      final r = raw as Map<String, dynamic>;
      await _db.setArtistRule(r['artist'] as String, r['rule'] as int? ?? 0);
      rules++;
    }

    return BackupSummary(
      songsAdded: songsAdded,
      songsMerged: songsMerged,
      weights: weights,
      events: events,
      rules: rules,
    );
  }

  static DateTime? _date(Object? millis) =>
      millis is int ? DateTime.fromMillisecondsSinceEpoch(millis) : null;
}

class BackupSummary {
  const BackupSummary({
    required this.songsAdded,
    required this.songsMerged,
    required this.weights,
    required this.events,
    required this.rules,
  });

  final int songsAdded;
  final int songsMerged;
  final int weights;
  final int events;
  final int rules;

  @override
  String toString() =>
      '$songsAdded new songs, $songsMerged updated, $weights weights, '
      '$events plays, $rules artist rules';
}
