import 'dart:io';

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

  List<File> audioFilesIn(String dirPath) {
    final dir = Directory(dirPath);
    if (!dir.existsSync()) return const [];
    final files = <File>[];
    try {
      for (final entity in dir.listSync(recursive: true, followLinks: false)) {
        if (entity is! File) continue;
        final ext = entity.path.toLowerCase();
        final dot = ext.lastIndexOf('.');
        if (dot < 0) continue;
        if (kAudioExtensions.contains(ext.substring(dot))) files.add(entity);
      }
    } on FileSystemException {
      // unreadable subfolder — keep whatever we already found
    }
    return files;
  }

  Stream<ScanProgress> scanFolders(List<String> folders) async* {
    final files = <File>[];
    for (final f in folders) {
      files.addAll(audioFilesIn(f));
    }
    yield* _importFiles(files);
  }

  Stream<ScanProgress> importPaths(List<String> paths) =>
      _importFiles(paths.map(File.new).where((f) => f.existsSync()).toList());

  Stream<ScanProgress> _importFiles(List<File> files) async* {
    var added = 0;
    var scanned = 0;
    yield ScanProgress(scanned: 0, total: files.length, added: 0);

    for (final file in files) {
      scanned++;
      try {
        final id = localId(file.path);
        final existing = await _db.songById(id);
        if (existing == null) {
          final song = await _readTags(id, file);
          await _db.upsertSong(song);
          added++;
        } else if (existing.filePath != file.path) {
          await _db.patchSong(id, SongsCompanion(filePath: Value(file.path)));
        }
      } catch (_) {
        // a file with broken tags shouldn't stop the scan
      }
      // readMetadata parses the file synchronously; yielding keeps a big
      // scan from eating frames.
      await Future<void>.delayed(Duration.zero);
      if (scanned % 5 == 0 || scanned == files.length) {
        yield ScanProgress(
          scanned: scanned,
          total: files.length,
          added: added,
          file: file.uri.pathSegments.last,
        );
      }
    }
    yield ScanProgress(
      scanned: scanned,
      total: files.length,
      added: added,
      done: true,
    );
  }

  Future<SongsCompanion> _readTags(String id, File file) async {
    AudioMetadata? tag;
    try {
      tag = readMetadata(file, getImage: true);
    } catch (_) {
      tag = null;
    }

    final name = file.uri.pathSegments.last;
    final stem = name.contains('.')
        ? name.substring(0, name.lastIndexOf('.'))
        : name;
    final guess = splitFileName(stem);

    String? artPath;
    final pictures = tag?.pictures ?? const <Picture>[];
    if (pictures.isNotEmpty) {
      artPath = await _artwork.saveBytes(id, pictures.first.bytes);
    }

    final genres = <String>[
      for (final g in tag?.genres ?? const <String>[])
        if (g.trim().isNotEmpty) g.toLowerCase().trim(),
    ];

    final title = (tag?.title?.trim().isNotEmpty ?? false)
        ? stripTrackNumber(tag!.title!)
        : guess.$2;
    final artist = (tag?.artist?.trim().isNotEmpty ?? false)
        ? tag!.artist!.trim()
        : (tag?.albumArtist?.trim().isNotEmpty ?? false)
        ? tag!.albumArtist!.trim()
        : guess.$1;

    return SongsCompanion.insert(
      id: id,
      title: title,
      source: SongSource.imported,
      artist: Value(artist),
      album: Value(tag?.album?.trim() ?? ''),
      artworkPath: Value(artPath),
      durationMs: Value(tag?.duration?.inMilliseconds ?? 0),
      year: Value(tag?.year?.year),
      filePath: Value(file.path),
      tags: Value([...genres, 'local file'].join(',')),
      fileSize: Value(file.lengthSync()),
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
