import 'dart:io';
import 'dart:isolate';
import 'dart:math' show min;

import 'package:audio_metadata_reader/audio_metadata_reader.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../db/database.dart';
import 'artwork_service.dart';

const kAudioExtensions = {
  '.mp3', '.m4a', '.aac', '.flac', '.ogg', '.opus', '.wav', '.wma', '.mp4',
};

@immutable
class ScanProgress {
  const ScanProgress({
    required this.scanned,
    required this.total,
    required this.added,
    this.file = '',
    this.done = false,
  });

  final int scanned;
  final int total;
  final int added;
  final String file;
  final bool done;

  double get fraction => total == 0 ? 0 : (scanned / total).clamp(0.0, 1.0);
}

/// Pulls the user's own audio files into the same library as YouTube tracks.
class ImportService {
  ImportService(this._db, this._artwork);

  final AppDatabase _db;
  final ArtworkService _artwork;

  Future<bool> ensurePermission() async {
    if (!Platform.isAndroid) return true;
    final audio = await Permission.audio.request();
    if (audio.isGranted) return true;
    final storage = await Permission.storage.request();
    return storage.isGranted;
  }

  /// Folders worth scanning without asking the user to hunt for them.
  Future<List<String>> suggestedFolders() async {
    final out = <String>[];
    if (Platform.isAndroid) {
      for (final p in [
        '/storage/emulated/0/Music',
        '/storage/emulated/0/Download',
        '/storage/emulated/0/Downloads',
        '/storage/emulated/0/Podcasts',
      ]) {
        if (Directory(p).existsSync()) out.add(p);
      }
    } else if (Platform.isIOS) {
      // An iOS app can only see its own sandbox. "TuneBox" appears in the
      // Files app (UIFileSharingEnabled), so anything dropped in there — or
      // opened with TuneBox from another app, which lands in Inbox — is what
      // there is to scan.
      try {
        final docs = await getApplicationDocumentsDirectory();
        if (docs.existsSync()) out.add(docs.path);
        final inbox = Directory('${docs.path}/Inbox');
        if (inbox.existsSync()) out.add(inbox.path);
      } catch (_) {}
    } else {
      final home = Platform.environment['HOME'];
      if (home != null) {
        for (final p in ['$home/Music', '$home/Downloads']) {
          if (Directory(p).existsSync()) out.add(p);
        }
      }
      try {
        final docs = await getApplicationDocumentsDirectory();
        if (docs.existsSync()) out.add(docs.path);
      } catch (_) {}
    }
    return out;
  }


  Stream<ScanProgress> scanFolders(List<String> folders) async* {
    yield const ScanProgress(scanned: 0, total: 0, added: 0);
    // Walking a big music folder took seconds on the UI thread; only the
    // paths (short strings) come back.
    final paths = await Isolate.run(() => listAudioPaths(folders));
    yield* _importFiles(paths);
  }

  Stream<ScanProgress> importPaths(List<String> paths) =>
      _importFiles([for (final p in paths) if (File(p).existsSync()) p]);

  /// Files are read in small batches on a background isolate. Before, every
  /// file was parsed on the UI thread with its cover in memory, and one
  /// large or odd file could take the whole app down.
  Stream<ScanProgress> _importFiles(List<String> paths) async* {
    var added = 0;
    var scanned = 0;
    yield ScanProgress(scanned: 0, total: paths.length, added: 0);

    for (var start = 0; start < paths.length; start += _batch) {
      final batch = paths.sublist(start, min(start + _batch, paths.length));
      // Only files that are new to the library are read at all.
      final fresh = <String>[];
      for (final path in batch) {
        final id = localId(path);
        final existing = await _db.songById(id);
        if (existing == null) {
          fresh.add(path);
        } else if (existing.filePath != path) {
          await _db.patchSong(id, SongsCompanion(filePath: Value(path)));
        }
      }
      List<LocalTags> tags;
      try {
        tags = fresh.isEmpty
            ? const []
            : await Isolate.run(() => readTagsBatch(fresh));
      } catch (_) {
        // the batch crashed its isolate; fall back to file names
        tags = [for (final p in fresh) LocalTags.fromName(p)];
      }
      for (final t in tags) {
        try {
          await _db.upsertSong(await _toRow(t));
          added++;
        } catch (_) {
          // a file that will not go in should not stop the scan
        }
      }
      scanned += batch.length;
      yield ScanProgress(
        scanned: scanned,
        total: paths.length,
        added: added,
        file: batch.last.split(Platform.pathSeparator).last,
      );
    }
    yield ScanProgress(
      scanned: scanned,
      total: paths.length,
      added: added,
      done: true,
    );
  }

  static const _batch = 8;

  Future<SongsCompanion> _toRow(LocalTags t) async {
    final id = localId(t.path);
    final art = t.picture;
    final artPath = art == null ? null : await _artwork.saveBytes(id, art);
    return SongsCompanion.insert(
      id: id,
      title: t.title,
      source: SongSource.imported,
      artist: Value(t.artist),
      album: Value(t.album),
      artworkPath: Value(artPath),
      durationMs: Value(t.durationMs),
      year: Value(t.year),
      filePath: Value(t.path),
      tags: Value([...t.genres, 'local file'].join(',')),
      fileSize: Value(t.size),
      inLibrary: const Value(true),
    );
  }

  /// Drops rows whose file disappeared from disk.
  ///
  /// An unmounted SD card or a revoked storage permission makes *every* file
  /// look gone; wiping the whole imported library (likes and play counts with
  /// it) because a card was popped out would be unforgivable, so a wholesale
  /// disappearance is treated as "storage is not there right now".
  Future<int> pruneMissing() async {
    final imported = [
      for (final song in await _db.library())
        if (song.source == SongSource.imported) song,
    ];
    if (imported.isEmpty) return 0;

    final missing = [
      for (final song in imported)
        if (song.filePath == null || !File(song.filePath!).existsSync()) song,
    ];
    if (missing.length == imported.length && imported.length > 1) return 0;

    for (final song in missing) {
      await _db.deleteSong(song.id);
    }
    return missing.length;
  }
}

/// Stable id for a file path, without pulling in a crypto package.
String localId(String path) {
  var hash = 0x811c9dc5;
  for (final unit in path.codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xFFFFFFFF;
  }
  return 'local:${hash.toRadixString(16)}';
}

/// Tag titles often carry the track number: "04 Sodium Lights".
String stripTrackNumber(String title) => title
    .trim()
    .replaceFirst(RegExp(r'^\d{1,3}\s*[-._)]?\s+'), '')
    .trim();

/// "04 - Cold Atlas - Sodium Lights" -> (Cold Atlas, Sodium Lights)
(String, String) splitFileName(String stem) {
  var name = stem.replaceAll('_', ' ').trim();
  name = stripTrackNumber(name);
  final i = name.indexOf(' - ');
  if (i > 0) {
    return (name.substring(0, i).trim(), name.substring(i + 3).trim());
  }
  return ('Unknown artist', name);
}


// ------------------------------------------------------------ background

/// Audio files under [folders], walked folder by folder so one unreadable
/// subfolder does not end the whole scan. Runs on a background isolate.
List<String> listAudioPaths(List<String> folders) {
  final out = <String>[];
  final seen = <String>{};
  void walk(Directory dir, int depth) {
    if (depth > 24) return; // a symlink loop or an absurd tree
    List<FileSystemEntity> entries;
    try {
      entries = dir.listSync(followLinks: false);
    } on FileSystemException {
      return;
    }
    for (final e in entries) {
      if (e is Directory) {
        final name = e.path.split(Platform.pathSeparator).last;
        if (name.startsWith('.')) continue; // hidden: caches, .thumbnails
        walk(e, depth + 1);
      } else if (e is File) {
        final lower = e.path.toLowerCase();
        final dot = lower.lastIndexOf('.');
        if (dot >= 0 && kAudioExtensions.contains(lower.substring(dot)) && seen.add(e.path)) {
          out.add(e.path);
        }
      }
    }
  }

  for (final f in folders) {
    final d = Directory(f);
    if (d.existsSync()) walk(d, 0);
  }
  return out;
}

/// What a local file says about itself, small enough to pass between
/// isolates.
class LocalTags {
  const LocalTags({
    required this.path,
    required this.title,
    required this.artist,
    required this.album,
    required this.durationMs,
    required this.year,
    required this.genres,
    required this.size,
    this.picture,
  });

  final String path;
  final String title;
  final String artist;
  final String album;
  final int durationMs;
  final int? year;
  final List<String> genres;
  final int size;
  final Uint8List? picture;

  /// Title and artist from "04 - Artist - Title.mp3" when tags are not read.
  factory LocalTags.fromName(String path, {int size = 0}) {
    final name = path.split(Platform.pathSeparator).last;
    final stem = name.contains('.') ? name.substring(0, name.lastIndexOf('.')) : name;
    final guess = splitFileName(stem);
    return LocalTags(
      path: path,
      title: guess.$2,
      artist: guess.$1,
      album: '',
      durationMs: 0,
      year: null,
      genres: const [],
      size: size,
    );
  }
}

/// Files bigger than this are not parsed: a song is rarely past 200 MB, and
/// the tag reader allocates whatever a damaged or exotic file claims.
const _maxParseBytes = 400 * 1024 * 1024;

/// `.mp4` is mostly video; past this it is a film, not a song.
const _maxMp4Bytes = 120 * 1024 * 1024;

/// Covers bigger than this are skipped; real cover art is far smaller.
const _maxPictureBytes = 4 * 1024 * 1024;

/// Reads tags for [paths]. Meant for a background isolate.
List<LocalTags> readTagsBatch(List<String> paths) => [
  for (final p in paths) readTagsSafely(p),
];

LocalTags readTagsSafely(String path) {
  final file = File(path);
  int size;
  try {
    size = file.lengthSync();
  } catch (_) {
    return LocalTags.fromName(path);
  }
  final lower = path.toLowerCase();
  if (size > _maxParseBytes || (lower.endsWith('.mp4') && size > _maxMp4Bytes)) {
    return LocalTags.fromName(path, size: size);
  }
  AudioMetadata tag;
  try {
    tag = readMetadata(file, getImage: true);
  } catch (_) {
    return LocalTags.fromName(path, size: size);
  }
  final guess = LocalTags.fromName(path, size: size);
  final pics = tag.pictures;
  final picture = pics.isNotEmpty && pics.first.bytes.length <= _maxPictureBytes
      ? pics.first.bytes
      : null;
  final title = (tag.title?.trim().isNotEmpty ?? false)
      ? stripTrackNumber(tag.title!)
      : guess.title;
  final artist = (tag.artist?.trim().isNotEmpty ?? false)
      ? tag.artist!.trim()
      : (tag.albumArtist?.trim().isNotEmpty ?? false)
      ? tag.albumArtist!.trim()
      : guess.artist;
  return LocalTags(
    path: path,
    title: title,
    artist: artist,
    album: tag.album?.trim() ?? '',
    durationMs: tag.duration?.inMilliseconds ?? 0,
    year: tag.year?.year,
    genres: [
      for (final g in tag.genres)
        if (g.trim().isNotEmpty) g.toLowerCase().trim(),
    ],
    size: size,
    picture: picture,
  );
}
