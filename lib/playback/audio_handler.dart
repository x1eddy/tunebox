import 'dart:async';
import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:drift/drift.dart' show Value;
import 'package:just_audio/just_audio.dart';

import '../data/db/database.dart';
import 'stream_proxy.dart';

/// What a finished (or abandoned) listen looked like — the AI's raw signal.
class ListenReport {
  ListenReport({
    required this.songId,
    required this.playedMs,
    required this.durationMs,
    required this.skipped,
    required this.origin,
  });

  final String songId;
  final int playedMs;
  final int durationMs;
  final bool skipped;
  final String origin;
}

/// Owns the actual audio player, the queue and the OS media notification.
class TuneBoxAudioHandler extends BaseAudioHandler with SeekHandler {
  TuneBoxAudioHandler(this._db, this._proxy) {
    _player.playbackEventStream.listen(_broadcastState, onError: (_) {});
    _player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) unawaited(_advance(skipped: false));
    });
  }

  AppDatabase _db;
  final StreamProxy _proxy;
  final AudioPlayer _player = AudioPlayer();

  final _queue = <Song>[];
  final _reports = StreamController<ListenReport>.broadcast();
  final _currentSong = StreamController<Song?>.broadcast();
  final _errors = StreamController<String>.broadcast();
  final _queueChanges = StreamController<List<Song>>.broadcast();

  /// Called when the queue runs out and nothing is repeating, so the app can
  /// keep the music going with a radio instead of falling silent.
  Future<void> Function(Song last)? onQueueExhausted;

  /// Called whenever the queue or position changes enough to be worth
  /// remembering for the next launch.
  void Function(List<String> ids, int index, Duration position)? onSnapshot;

  /// Reorders a shuffle. Set by the app so the AI can shuffle by taste.
  List<Song> Function(List<Song> songs, Song current)? shuffleOrder;

  /// Highest bitrate to ask YouTube for, 0 for the best available. The app
  /// lowers it on mobile data when the data saver is on.
  int streamQualityKbps = 0;

  int _index = 0;
  String _origin = 'library';
  /// Bumped on every load request. A load that finds a newer token has been
  /// superseded — the user tapped something else — and bows out quietly.
  int _loadToken = 0;
  Duration _playedBefore = Duration.zero;
  int _consecutiveFailures = 0;

  /// Points the player at another profile's database. The queue belongs to
  /// the profile that built it, so it is emptied.
  void useDatabase(AppDatabase db) {
    _db = db;
    _queue.clear();
    _index = 0;
    _queueChanges.add(queueSongs);
  }

  AudioPlayer get player => _player;
  List<Song> get queueSongs => List.unmodifiable(_queue);
  int get index => _index;
  Song? get currentSong =>
      _queue.isEmpty ? null : _queue[_index.clamp(0, _queue.length - 1)];

  Stream<ListenReport> get reports => _reports.stream;
  Stream<Song?> get songChanges => _currentSong.stream;
  Stream<String> get errors => _errors.stream;
  Stream<List<Song>> get queueChanges => _queueChanges.stream;
  Stream<Duration> get positionStream => _player.positionStream;
  Stream<bool> get loadingStream => _player.processingStateStream.map(
    (s) => s == ProcessingState.loading || s == ProcessingState.buffering,
  );

  // ------------------------------------------------------------------ queue

  Future<void> playSongs(
    List<Song> songs, {
    int startIndex = 0,
    String origin = 'library',
  }) async {
    if (songs.isEmpty) return;
    await _report(skipped: true);
    _queue
      ..clear()
      ..addAll(songs);
    _queueChanges.add(queueSongs);
    _origin = origin;
    _index = startIndex.clamp(0, songs.length - 1);
    await _load(play: true);
  }

  Future<void> addToQueue(Song song, {bool next = false}) async {
    if (_queue.isEmpty) return playSongs([song]);
    _queue.insert(next ? _index + 1 : _queue.length, song);
    queue.add([for (final s in _queue) _mediaItem(s)]);
  }

  /// Moves a queued song, keeping the currently playing one under the cursor.
  void reorder(int oldIndex, int newIndex) {
    if (oldIndex < 0 || oldIndex >= _queue.length) return;
    final target = newIndex.clamp(0, _queue.length - 1);
    final playing = currentSong?.id;
    final song = _queue.removeAt(oldIndex);
    _queue.insert(target, song);
    if (playing != null) {
      _index = _queue.indexWhere((s) => s.id == playing).clamp(0, _queue.length - 1);
    }
    queue.add([for (final s in _queue) _mediaItem(s)]);
    _queueChanges.add(queueSongs);
  }

  /// Drops a song from the queue (not the one playing).
  void removeAt(int index) {
    if (index < 0 || index >= _queue.length || index == _index) return;
    _queue.removeAt(index);
    if (index < _index) _index--;
    queue.add([for (final s in _queue) _mediaItem(s)]);
    _queueChanges.add(queueSongs);
  }

  Future<void> jumpTo(int index) async {
    if (index < 0 || index >= _queue.length) return;
    await _report(skipped: true);
    _index = index;
    await _load(play: true);
  }

  Future<void> _load({required bool play}) async {
    final song = currentSong;
    if (song == null) return;
    // Spam-tapping used to leave the player on the first song: a second load
    // was dropped while the first was still in flight. Now the newest wins.
    final token = ++_loadToken;
    _playedBefore = Duration.zero;
    _currentSong.add(song);
    mediaItem.add(_mediaItem(song));
    try {
      final path = song.filePath;
      if (path != null && File(path).existsSync()) {
        await _player.setAudioSource(AudioSource.file(path));
      } else {
        // Served by the local proxy, which handles ranges and URL expiry.
        if (!_proxy.running) await _proxy.start();
        await _proxy
            .resolve(song.id, maxKbps: streamQualityKbps)
            .timeout(const Duration(seconds: 30));
        if (token != _loadToken) return;
        await _player.setAudioSource(
          AudioSource.uri(_proxy.urlFor(song.id), tag: song.id),
        );
      }
      if (token != _loadToken) return;
      // NOT awaited: just_audio's play() completes when the track *finishes*,
      // so awaiting it defers everything below until the song ends — which is
      // why the resume snapshot was never written.
      if (play) {
        unawaited(
          _player.play().catchError((Object e) {
            _errors.add('Could not start "${song.title}" — $e');
          }),
        );
      }
      _consecutiveFailures = 0;
      _snapshot();
      // Search results sometimes arrive without a length; now we know it.
      final real = _player.duration;
      if (real != null && real.inMilliseconds > 0 &&
          (song.durationMs - real.inMilliseconds).abs() > 1500) {
        unawaited(
          _db.patchSong(
            song.id,
            SongsCompanion(durationMs: Value(real.inMilliseconds)),
          ),
        );
      }
    } catch (e) {
      // A load the user has already moved on from is not a failure.
      if (token != _loadToken) return;
      _consecutiveFailures++;
      // Three in a row means the source is down, not one bad track — stop
      // instead of burning through the whole queue.
      if (_consecutiveFailures >= 3 || _index + 1 >= _queue.length) {
        _consecutiveFailures = 0;
        await _player.stop();
        _errors.add('Could not play "${song.title}" — $e');
        return;
      }
      _errors.add('Skipping "${song.title}" — the stream would not open.');
      _index++;
      unawaited(_load(play: play));
      return;
    }
  }

  Future<void> _advance({required bool skipped}) async {
    await _report(skipped: skipped);
    if (_repeatOne) {
      await _player.seek(Duration.zero);
      await _player.play();
      return;
    }
    if (_index + 1 < _queue.length) {
      _index++;
    } else if (_repeatAll) {
      _index = 0;
    } else {
      final last = currentSong;
      final radio = onQueueExhausted;
      if (last != null && radio != null) {
        await radio(last);
        return;
      }
      await _player.stop();
      return;
    }
    await _load(play: true);
  }

  Future<void> _report({required bool skipped}) async {
    final song = currentSong;
    if (song == null) return;
    final played = _player.position + _playedBefore;
    if (played.inSeconds < 2) return;
    final duration = _player.duration ?? Duration(milliseconds: song.durationMs);
    _reports.add(
      ListenReport(
        songId: song.id,
        playedMs: played.inMilliseconds,
        durationMs: duration.inMilliseconds,
        skipped: skipped &&
            played.inMilliseconds < duration.inMilliseconds * 0.7,
        origin: _origin,
      ),
    );
  }

  // --------------------------------------------------------------- controls

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() async {
    _snapshot();
    await _player.pause();
  }

  void _snapshot() => onSnapshot?.call(
    [for (final s in _queue) s.id],
    _index,
    _player.position,
  );

  /// Puts a saved queue back without playing it.
  Future<void> restore(List<Song> songs, int index, Duration position) async {
    if (songs.isEmpty) return;
    _queue
      ..clear()
      ..addAll(songs);
    _queueChanges.add(queueSongs);
    _index = index.clamp(0, songs.length - 1);
    await _load(play: false);
    if (position > Duration.zero) {
      try {
        await _player.seek(position);
      } catch (_) {
        // a stream that will not seek yet is not worth failing a launch over
      }
    }
  }

  @override
  Future<void> stop() async {
    await _report(skipped: true);
    await _player.stop();
    await super.stop();
  }

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> skipToNext() => _advance(skipped: true);

  @override
  Future<void> skipToPrevious() async {
    if (_player.position.inSeconds > 5) {
      await _player.seek(Duration.zero);
      return;
    }
    await _report(skipped: true);
    if (_index > 0) {
      _index--;
    } else if (_repeatAll) {
      _index = _queue.length - 1;
    }
    await _load(play: true);
  }

  bool _repeatOne = false;
  /// Off by default so a queue actually ends — which is what lets "keep the
  /// music going" start a radio. Turning repeat on is the user saying they
  /// want the queue looped instead.
  bool _repeatAll = false;
  bool _shuffled = false;

  bool get repeatOne => _repeatOne;
  bool get repeatAll => _repeatAll;
  bool get shuffled => _shuffled;

  @override
  Future<void> setRepeatMode(AudioServiceRepeatMode repeatMode) async {
    _repeatOne = repeatMode == AudioServiceRepeatMode.one;
    _repeatAll = repeatMode != AudioServiceRepeatMode.none;
    _broadcastState(_player.playbackEvent);
  }

  @override
  Future<void> setShuffleMode(AudioServiceShuffleMode shuffleMode) async {
    _shuffled = shuffleMode == AudioServiceShuffleMode.all;
    if (_shuffled && _queue.length > 1) {
      final current = _queue[_index];
      final rest = [..._queue]..removeAt(_index);
      final ordered = shuffleOrder?.call(rest, current) ?? (rest..shuffle());
      _queue
        ..clear()
        ..add(current)
        ..addAll(ordered);
      _index = 0;
      queue.add([for (final s in _queue) _mediaItem(s)]);
      _queueChanges.add(queueSongs);
    }
    _broadcastState(_player.playbackEvent);
  }

  Future<void> setSkipSilence(bool enabled) async {
    try {
      await _player.setSkipSilenceEnabled(enabled);
    } catch (_) {
      // desktop backends don't implement it
    }
  }

  @override
  Future<void> setSpeed(double speed) => _player.setSpeed(speed);

  // ----------------------------------------------------------------- state

  MediaItem _mediaItem(Song song) => MediaItem(
    id: song.id,
    title: song.title,
    artist: song.artist.isEmpty ? 'Unknown artist' : song.artist,
    album: song.album.isEmpty ? null : song.album,
    duration: song.durationMs > 0
        ? Duration(milliseconds: song.durationMs)
        : null,
    artUri: _artUri(song),
  );

  Uri? _artUri(Song song) {
    final path = song.artworkPath;
    if (path != null && path.isNotEmpty) {
      if (File(path).existsSync()) return Uri.file(path);
      // The row outlived the file. Clear it, or every future notification
      // hands Android a path it cannot open (SystemUI logs a
      // FileNotFoundException and shows no cover).
      unawaited(
        _db.patchSong(song.id, const SongsCompanion(artworkPath: Value(null))),
      );
    }
    final url = song.artworkUrl;
    if (url != null && url.isNotEmpty) return Uri.tryParse(url);
    return null;
  }

  void _broadcastState(PlaybackEvent event) {
    final playing = _player.playing;
    playbackState.add(
      playbackState.value.copyWith(
        // No Stop control: audio_service turns it into a custom action, which
        // Android draws as an empty white square in the notification.
        controls: [
          MediaControl.skipToPrevious,
          if (playing) MediaControl.pause else MediaControl.play,
          MediaControl.skipToNext,
        ],
        // Only plain seek: audio_service turns the fast-forward/rewind
        // actions into custom actions, which Android refuses without icons.
        systemActions: const {MediaAction.seek},
        androidCompactActionIndices: const [0, 1, 2],
        processingState: switch (_player.processingState) {
          ProcessingState.idle => AudioProcessingState.idle,
          ProcessingState.loading => AudioProcessingState.loading,
          ProcessingState.buffering => AudioProcessingState.buffering,
          ProcessingState.ready => AudioProcessingState.ready,
          ProcessingState.completed => AudioProcessingState.completed,
        },
        playing: playing,
        updatePosition: _player.position,
        bufferedPosition: _player.bufferedPosition,
        speed: _player.speed,
        queueIndex: _index,
        repeatMode: _repeatOne
            ? AudioServiceRepeatMode.one
            : _repeatAll
            ? AudioServiceRepeatMode.all
            : AudioServiceRepeatMode.none,
        shuffleMode: _shuffled
            ? AudioServiceShuffleMode.all
            : AudioServiceShuffleMode.none,
      ),
    );
  }

  Future<void> disposePlayer() async {
    await _player.dispose();
    await _reports.close();
    await _currentSong.close();
    await _errors.close();
    await _queueChanges.close();
  }

  AppDatabase get db => _db;
}
