import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

import '../db/database.dart';
import 'artwork_service.dart';
import 'innertube.dart';
import 'yt_service.dart';

enum DownloadStage { queued, running, done, failed }

@immutable
class DownloadTask {
  const DownloadTask({
    required this.songId,
    required this.title,
    this.progress = 0,
    this.stage = DownloadStage.queued,
    this.auto = false,
    this.error,
  });

  final String songId;
  final String title;
  final double progress;
  final DownloadStage stage;
  final bool auto;
  final String? error;

  DownloadTask copyWith({
    double? progress,
    DownloadStage? stage,
    String? error,
  }) => DownloadTask(
    songId: songId,
    title: title,
    progress: progress ?? this.progress,
    stage: stage ?? this.stage,
    auto: auto,
    error: error ?? this.error,
  );
}

/// Downloads audio to app storage. One at a time, so a big auto-download run
/// never fights the song you are actually listening to for bandwidth.
class DownloadService {
  DownloadService(this._db, this._yt, this._artwork);

  final AppDatabase _db;
  final YtService _yt;
  final ArtworkService _artwork;

  final _queue = <String, DownloadTask>{};
  final _controller = StreamController<List<DownloadTask>>.broadcast();
  bool _working = false;

  Stream<List<DownloadTask>> get tasks => _controller.stream;
  List<DownloadTask> get current => _queue.values.toList();
  bool get isBusy => _working;

  void _emit() {
    // Timers outlive the service on a hot restart; adding to a closed
    // controller throws "Cannot add event after closing".
    if (_controller.isClosed) return;
    _controller.add(current);
  }

  Future<Directory> _audioDir() async {
    final base = await getApplicationSupportDirectory();
    final dir = Directory('${base.path}/audio');
    if (!dir.existsSync()) dir.createSync(recursive: true);
    return dir;
  }

  /// An app that was closed mid-download leaves its half-written `.part`
  /// file behind; nothing will ever finish it, so reclaim the space.
  Future<void> clearStaleParts() async {
    if (_working) return;
    try {
      for (final f in (await _audioDir()).listSync()) {
        if (f is File && f.path.endsWith('.part')) await f.delete();
      }
    } catch (_) {}
  }

  Future<bool> onWifi() async {
    final result = await Connectivity().checkConnectivity();
    return result.contains(ConnectivityResult.wifi) ||
        result.contains(ConnectivityResult.ethernet);
  }

  /// Adds a song to the download queue. Safe to call twice.
  Future<void> enqueue(
    Song song, {
    bool auto = false,
    int maxBitrateKbps = 0,
    bool replace = false,
  }) async {
    if (song.source == SongSource.imported) return;
    // The caller's copy of the song can be stale (an auto-download may have
    // just finished it), and writing over a file that is playing is exactly
    // what makes music skip. Trust the database, not the argument.
    song = await _db.songById(song.id) ?? song;
    final existing = song.filePath;
    if (existing != null) {
      final file = File(existing);
      // A stub left by a failed attempt must not block a retry.
      if (!replace && file.existsSync() && file.lengthSync() > 0) return;
      if (!replace && file.existsSync()) await file.delete();
    }
    if (_queue.containsKey(song.id)) return;

    _queue[song.id] = DownloadTask(
      songId: song.id,
      title: song.title,
      auto: auto,
    );
    _emit();
    unawaited(_drain(maxBitrateKbps));
  }

  Future<void> _drain(int maxBitrateKbps) async {
    if (_working) return;
    _working = true;
    try {
      while (true) {
        final next = _queue.values
            .where((t) => t.stage == DownloadStage.queued)
            .firstOrNull;
        if (next == null) break;
        await _run(next, maxBitrateKbps);
      }
    } finally {
      _working = false;
      _emit();
    }
  }

  Future<void> _run(DownloadTask task, int maxBitrateKbps) async {
    _queue[task.songId] = task.copyWith(stage: DownloadStage.running);
    _emit();
    try {
      final song = await _db.songById(task.songId);
      if (song == null) throw StateError('song vanished');

      final dir = await _audioDir();

      // Some videos answer 403 for one format and serve another, and a URL can
      // expire between resolving and downloading — so walk the formats, and
      // once more with fresh URLs, before giving up.
      late AudioFormat info;
      late File file;
      late File part;
      late IOSink sink;
      var received = 0;
      var total = 0;
      Object? lastError;
      var done = false;
      for (var round = 0; round < 2 && !done; round++) {
        final candidates = await _yt.audioCandidates(
          task.songId,
          maxBitrateKbps: maxBitrateKbps,
        );
        for (final candidate in candidates) {
          info = candidate;
          file = File('${dir.path}/${task.songId}.${info.extension}');
          // Written beside the real name and renamed when complete, so a
          // player never opens half a file and a failed attempt never looks
          // downloaded.
          part = File('${file.path}.part');
          sink = part.openWrite();
          total = info.contentLength;
          received = 0;
          try {
            await for (final chunk in _yt.download(info)) {
              sink.add(chunk);
              received += chunk.length;
              if (total > 0) {
                final p = received / total;
                final t = _queue[task.songId];
                if (t != null && (p - t.progress) > 0.02) {
                  _queue[task.songId] = t.copyWith(progress: p);
                  _emit();
                }
              }
            }
            done = true;
            break;
          } catch (e) {
            lastError = e;
            await sink.close();
            if (part.existsSync()) await part.delete();
            final refused = '$e'.contains('403') || '$e'.contains('410');
            if (!refused) rethrow;
          }
        }
      }
      if (!done) throw lastError ?? StateError('no format could be downloaded');

      await sink.flush();
      await sink.close();
      if (total > 0 && received != total) {
        throw StateError('download cut short ($received of $total bytes)');
      }
      final old = song.filePath;
      await part.rename(file.path);
      if (old != null && old != file.path && File(old).existsSync()) {
        // a re-download into another format: the old copy is now redundant
        await File(old).delete();
      }

      final art = await _artwork.cacheRemote(song.id, song.artworkUrl);
      await _db.markDownloaded(song.id, file.path, received);
      if (art != null) {
        await _db.patchSong(song.id, SongsCompanion(artworkPath: Value(art)));
      }
      if (task.auto) {
        await _db.patchSong(
          song.id,
          const SongsCompanion(autoAdded: Value(true)),
        );
      }

      _queue[task.songId] = (_queue[task.songId] ?? task).copyWith(
        stage: DownloadStage.done,
        progress: 1,
      );
      _emit();
      Timer(const Duration(seconds: 4), () {
        _queue.remove(task.songId);
        _emit();
      });
    } catch (e) {
      // Don't leave a half-written file behind; it would look downloaded.
      try {
        final dir = await _audioDir();
        for (final f in dir.listSync()) {
          if (f is File && f.uri.pathSegments.last.startsWith(task.songId)) {
            if (f.path.endsWith('.part') || f.lengthSync() == 0) {
              await f.delete();
            }
          }
        }
      } catch (_) {}
      _queue[task.songId] = (_queue[task.songId] ?? task).copyWith(
        stage: DownloadStage.failed,
        error: '$e',
      );
      _emit();
      Timer(const Duration(seconds: 10), () {
        _queue.remove(task.songId);
        _emit();
      });
    }
  }

  Future<void> removeDownload(Song song) async {
    // Never touch a file the user imported: that is their own music, not a
    // cache we are free to delete.
    if (song.source == SongSource.imported) return;
    final path = song.filePath;
    if (path != null && File(path).existsSync()) {
      await File(path).delete();
    }
    await _db.removeDownload(song.id);
  }

  /// Keeps auto-downloads inside their storage budget, oldest first.
  Future<void> enforceBudget(int budgetBytes) async {
    if (budgetBytes <= 0) return;
    var used = await _db.downloadedBytes();
    if (used <= budgetBytes) return;
    for (final song in await _db.autoDownloaded()) {
      if (used <= budgetBytes) break;
      if (song.liked || song.playCount > 2) continue;
      used -= song.fileSize;
      await removeDownload(song);
    }
  }

  void dispose() => _controller.close();
}
