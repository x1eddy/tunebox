import 'dart:async';
import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:drift/drift.dart' show Value;
import 'package:just_audio/just_audio.dart';

import '../data/db/database.dart';
import '../state/owner.dart' show logEvent;
import 'sound_math.dart';
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

/// Owns the audio players, the queue and the OS media notification.
///
/// There are two players. One plays; the other quietly loads the next song,
/// so a track change is instant (gapless) and the two can overlap for a
/// crossfade. They swap roles on every change.
class TuneBoxAudioHandler extends BaseAudioHandler with SeekHandler {
  TuneBoxAudioHandler(this._db, this._proxy) {
    _a = _makePlayer();
    _b = _makePlayer();
    _player = _a;
    for (final p in [_a, _b]) {
      p.playbackEventStream.listen((e) {
        if (identical(p, _player)) _broadcastState(e);
      }, onError: (_) {});
      p.processingStateStream.listen((state) {
        if (identical(p, _player) && state == ProcessingState.completed) {
          unawaited(_advance(skipped: false));
        }
      });
      p.positionStream.listen((pos) {
        if (!identical(p, _player)) return;
        if (!_positions.isClosed) _positions.add(pos);
        _watchForFade(pos);
      });
      p.playingStream.listen((_) {
        if (identical(p, _player)) _syncListenClock();
      });
    }
  }

  AppDatabase _db;
  final StreamProxy _proxy;
  late final AudioPlayer _a;
  late final AudioPlayer _b;

  /// The player you hear. [_other] is the one getting the next song ready.
  late AudioPlayer _player;
  AudioPlayer get _other => identical(_player, _a) ? _b : _a;

  // Android-only effects, one set per player (an effect belongs to one
  // player's audio session).
  final _eqs = <AudioPlayer, AndroidEqualizer>{};
  final _boosts = <AudioPlayer, AndroidLoudnessEnhancer>{};

  AudioPlayer _makePlayer() {
    if (!Platform.isAndroid) return AudioPlayer();
    final eq = AndroidEqualizer();
    final boost = AndroidLoudnessEnhancer();
    final p = AudioPlayer(
      audioPipeline: AudioPipeline(androidAudioEffects: [eq, boost]),
    );
    _eqs[p] = eq;
    _boosts[p] = boost;
    return p;
  }

  final _positions = StreamController<Duration>.broadcast();

  // ------------------------------------------------------------ sound setup

  /// Fade length between songs; zero is gapless with no overlap.
  Duration crossfade = Duration.zero;
  bool smartCrossfade = true;
  bool normalize = true;
  LoudnessTarget loudnessTarget = LoudnessTarget.normal;

  /// Sleep-timer fade, multiplied into every volume (1 = untouched).
  double _master = 1.0;

  /// Loudness YouTube reported for each song we resolved.
  final _loudness = <String, double?>{};

  /// Pause when the current song ends instead of moving on (sleep timer).
  bool pauseAfterCurrent = false;

  /// Do not start a radio when the queue runs out (sleep timer).
  bool stopAtQueueEnd = false;

  /// Called when [pauseAfterCurrent] or [stopAtQueueEnd] did its job.
  void Function()? onSleepDone;

  double _gainOf(Song? song) => song == null || !normalize
      ? 1.0
      : normalizationGain(_loudness[song.id], loudnessTarget);

  Future<void> _applyVolume() async {
    if (_fading) return;
    await _player.setVolume(_gainOf(currentSong) * _master);
  }

  double get masterVolume => _master;

  /// For the sleep timer's fade-out.
  Future<void> setMasterVolume(double v) async {
    _master = v.clamp(0.0, 1.0);
    await _applyVolume();
  }

  /// Applies an equaliser curve ([gains] in dB at [kEqFrequencies]) and a
  /// loudness boost to both players. Android only; elsewhere a no-op.
  Future<void> applyEq({
    required bool enabled,
    required List<double> gains,
    required double boostDb,
  }) async {
    _eqEnabled = enabled;
    _eqGains = gains;
    _boostDb = boostDb;
    for (final p in [_a, _b]) {
      await _applyEqTo(p);
    }
  }

  bool _eqEnabled = false;
  List<double> _eqGains = kEqPresets['Flat']!;
  double _boostDb = 0;

  Future<void> _applyEqTo(AudioPlayer p) async {
    final eq = _eqs[p];
    final boost = _boosts[p];
    if (eq == null || boost == null) return;
    try {
      await eq.setEnabled(_eqEnabled);
      await boost.setEnabled(_boostDb > 0);
      await boost.setTargetGain(_boostDb);
      if (!_eqEnabled || p.audioSource == null) return;
      // The bands only exist once the player has a session; a fresh player
      // has none yet, and it is tried again after the next load.
      final params = await eq.parameters.timeout(const Duration(seconds: 2));
      for (final band in params.bands) {
        final db = gainAt(_eqGains, band.centerFrequency);
        await band.setGain(db.clamp(params.minDecibels, params.maxDecibels));
      }
    } catch (e) {
      logEvent('equaliser not applied — $e');
    }
  }

  /// What the user is actually listening to: wall-clock time while playing,
  /// times speed. Seeking does not count, and neither does a pause.
  final _listen = Stopwatch();
  void _syncListenClock() {
    if (_player.playing && !_listen.isRunning) {
      _listen.start();
    } else if (!_player.playing && _listen.isRunning) {
      _listen.stop();
    }
  }

  Duration get _listened => Duration(
    milliseconds: (_listen.elapsedMilliseconds * _player.speed).round(),
  );

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
  int _consecutiveFailures = 0;

  /// Song id that [_other] holds, ready to start.
  String? _prefetchedId;
  int _prefetchToken = 0;

  /// Points the player at another profile's database. The queue belongs to
  /// the profile that built it, so it is emptied.
  void useDatabase(AppDatabase db) {
    _db = db;
    _queue.clear();
    _index = 0;
    _queueChanges.add(queueSongs);
  }

  /// Where the queue came from: 'library', 'search', 'liked', 'radio'…
  String get origin => _origin;

  AudioPlayer get player => _player;
  List<Song> get queueSongs => List.unmodifiable(_queue);
  int get index => _index;
  Song? get currentSong =>
      _queue.isEmpty ? null : _queue[_index.clamp(0, _queue.length - 1)];

  Stream<ListenReport> get reports => _reports.stream;
  Stream<Song?> get songChanges => _currentSong.stream;
  Stream<String> get errors => _errors.stream;
  Stream<List<Song>> get queueChanges => _queueChanges.stream;
  Stream<Duration> get positionStream => _positions.stream;

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
    _queueChanges.add(queueSongs);
    _schedulePrefetch();
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
    _schedulePrefetch();
  }

  /// Drops a song from the queue (not the one playing).
  void removeAt(int index) {
    if (index < 0 || index >= _queue.length || index == _index) return;
    _queue.removeAt(index);
    if (index < _index) _index--;
    queue.add([for (final s in _queue) _mediaItem(s)]);
    _queueChanges.add(queueSongs);
    _schedulePrefetch();
  }

  /// Puts a song back where it was (undo for [removeAt]).
  void insertAt(int index, Song song) {
    final at = index.clamp(0, _queue.length);
    _queue.insert(at, song);
    if (at <= _index && _queue.length > 1) _index++;
    queue.add([for (final s in _queue) _mediaItem(s)]);
    _queueChanges.add(queueSongs);
    _schedulePrefetch();
  }

  /// Swaps the queue for [songs] without touching what is playing, as long as
  /// the current song is among them. Used for "clear queue" and its undo.
  void setQueueKeepingCurrent(List<Song> songs) {
    final playing = currentSong?.id;
    _queue
      ..clear()
      ..addAll(songs);
    final i = playing == null ? -1 : _queue.indexWhere((s) => s.id == playing);
    _index = i < 0 ? 0 : i;
    queue.add([for (final s in _queue) _mediaItem(s)]);
    _queueChanges.add(queueSongs);
    _schedulePrefetch();
  }

  Future<void> jumpTo(int index) async {
    if (index < 0 || index >= _queue.length) return;
    await _report(skipped: true);
    _index = index;
    await _load(play: true);
  }

  /// Points [p] at [song]: the file if it is on the device, otherwise the
  /// loopback proxy. Remembers the loudness YouTube reported.
  Future<void> _setSource(AudioPlayer p, Song song) async {
    final path = song.filePath;
    if (path != null && File(path).existsSync()) {
      await p.setAudioSource(AudioSource.file(path));
      return;
    }
    // Served by the local proxy, which handles ranges and URL expiry.
    if (!_proxy.running) await _proxy.start();
    final format = await _proxy
        .resolve(song.id, maxKbps: streamQualityKbps)
        .timeout(const Duration(seconds: 30));
    _loudness[song.id] = format.loudnessDb;
    await p.setAudioSource(AudioSource.uri(_proxy.urlFor(song.id), tag: song.id));
  }

  Future<void> _load({required bool play}) async {
    final song = currentSong;
    if (song == null) return;
    // Spam-tapping used to leave the player on the first song: a second load
    // was dropped while the first was still in flight. Now the newest wins.
    final token = ++_loadToken;
    logEvent('load ${_index + 1}/${_queue.length}: ${song.title}');
    _cancelFade();
    _listen
      ..stop()
      ..reset();
    _currentSong.add(song);
    mediaItem.add(_mediaItem(song));
    try {
      if (_prefetchedId == song.id && _other.audioSource != null) {
        // Already loaded next door: swap and go, no gap.
        logEvent('gapless switch to ${song.title}');
        final old = _player;
        _player = _other;
        _prefetchedId = null;
        unawaited(old.stop());
        if (_player.position > const Duration(milliseconds: 300)) {
          await _player.seek(Duration.zero);
        }
        _broadcastState(_player.playbackEvent);
      } else {
        _prefetchToken++;
        _prefetchedId = null;
        unawaited(_other.stop());
        await _setSource(_player, song);
      }
      if (token != _loadToken) return;
      await _applyVolume();
      unawaited(_applyEqTo(_player));
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
      _schedulePrefetch();
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
      logEvent('load failed: ${song.title} — $e');
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

  /// The queue position that plays after the current one, or null.
  int? get _nextIndex {
    if (_queue.isEmpty || _repeatOne) return null;
    if (_index + 1 < _queue.length) return _index + 1;
    if (_repeatAll) return 0;
    return null;
  }

  Timer? _prefetchTimer;

  /// Loads the next song into the idle player a few seconds after the
  /// current one settles, so the network is not split during the start.
  void _schedulePrefetch() {
    _prefetchTimer?.cancel();
    _prefetchTimer = Timer(const Duration(seconds: 4), () {
      unawaited(_prefetch());
    });
  }

  Future<void> _prefetch() async {
    final i = _nextIndex;
    if (i == null || _fading) return;
    final next = _queue[i];
    if (_prefetchedId == next.id && _other.audioSource != null) return;
    final token = ++_prefetchToken;
    _prefetchedId = null;
    try {
      final target = _other;
      await target.stop();
      await _setSource(target, next);
      if (token != _prefetchToken || identical(target, _player)) return;
      await target.setVolume(0);
      _prefetchedId = next.id;
      logEvent('ready next: ${next.title}');
      unawaited(_applyEqTo(target));
    } catch (e) {
      // Not fatal: the song loads the normal way when its turn comes.
      logEvent('prefetch failed: ${next.title} — $e');
    }
  }

  // -------------------------------------------------------------- crossfade

  bool _fading = false;
  Timer? _fadeTimer;
  AudioPlayer? _fadingOut;

  void _watchForFade(Duration position) {
    if (_fading || !_player.playing || pauseAfterCurrent) return;
    final i = _nextIndex;
    if (i == null) return;
    final next = _queue[i];
    final current = currentSong;
    if (current == null) return;
    final length = fadeLength(
      chosen: crossfade,
      smart: smartCrossfade,
      fromAlbum: current.album,
      toAlbum: next.album,
      fromDuration: _player.duration,
    );
    if (!shouldStartFade(
      position: position,
      duration: _player.duration,
      crossfade: length,
      hasNext: true,
      nextReady: _prefetchedId == next.id && _other.audioSource != null,
    )) {
      return;
    }
    unawaited(_startFade(i, length));
  }

  Future<void> _startFade(int nextIndex, Duration length) async {
    _fading = true;
    logEvent('crossfade ${length.inSeconds}s into ${_queue[nextIndex].title}');
    final from = _player;
    final to = _other;
    final fromGain = _gainOf(currentSong) * _master;
    await _report(skipped: false);
    _index = nextIndex;
    final song = _queue[nextIndex];
    final toGain = _gainOf(song) * _master;
    _player = to;
    _prefetchedId = null;
    _fadingOut = from;
    _listen
      ..stop()
      ..reset();
    _currentSong.add(song);
    mediaItem.add(_mediaItem(song));
    await to.setVolume(0);
    unawaited(to.play());
    _broadcastState(to.playbackEvent);

    final watch = Stopwatch()..start();
    _fadeTimer = Timer.periodic(const Duration(milliseconds: 50), (t) {
      final x = watch.elapsedMilliseconds / length.inMilliseconds;
      final (out, into) = crossfadeCurve(x);
      unawaited(from.setVolume(fromGain * out));
      unawaited(to.setVolume(toGain * into));
      if (x >= 1) _finishFade();
    });
    _snapshot();
  }

  /// Ends a crossfade at once: the old song stops, the new one is at full
  /// volume. Safe to call when nothing is fading.
  void _finishFade() {
    _fadeTimer?.cancel();
    _fadeTimer = null;
    final out = _fadingOut;
    _fadingOut = null;
    if (!_fading) return;
    _fading = false;
    if (out != null) unawaited(out.stop());
    unawaited(_applyVolume());
    _schedulePrefetch();
  }

  /// A user action took over: drop the fading-out song immediately.
  void _cancelFade() {
    if (_fading) _finishFade();
  }

  Future<void> _advance({required bool skipped}) async {
    await _report(skipped: skipped);
    if (!skipped && pauseAfterCurrent) {
      // Sleep timer "end of song": stay on this song, stopped at its end.
      pauseAfterCurrent = false;
      await _player.pause();
      await _player.seek(Duration.zero);
      onSleepDone?.call();
      return;
    }
    if (_repeatOne && !skipped) {
      _listen
        ..stop()
        ..reset();
      await _player.seek(Duration.zero);
      unawaited(_player.play());
      return;
    }
    if (_index + 1 < _queue.length) {
      _index++;
    } else if (_repeatAll) {
      _index = 0;
    } else {
      final last = currentSong;
      final radio = onQueueExhausted;
      if (stopAtQueueEnd) {
        stopAtQueueEnd = false;
        await _player.pause();
        onSleepDone?.call();
        return;
      }
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
    final duration = _player.duration ?? Duration(milliseconds: song.durationMs);
    // Real listening time, capped at the song's length; a song you seeked
    // through to the end was not "finished".
    var played = _listened;
    if (duration > Duration.zero && played > duration) played = duration;
    if (played.inSeconds < 2) return;
    _reports.add(
      ListenReport(
        songId: song.id,
        playedMs: played.inMilliseconds,
        durationMs: duration.inMilliseconds,
        skipped:
            skipped && played.inMilliseconds < duration.inMilliseconds * 0.7,
        origin: _origin,
      ),
    );
  }

  // --------------------------------------------------------------- controls

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() async {
    _cancelFade();
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

  /// Swipe-away: stop, forget the queue and hide the mini-player.
  Future<void> dismiss() async {
    await stop();
    _queue.clear();
    _index = 0;
    _queueChanges.add(queueSongs);
    queue.add(const []);
    _currentSong.add(null);
  }

  @override
  Future<void> stop() async {
    await _report(skipped: true);
    _cancelFade();
    _prefetchTimer?.cancel();
    _prefetchedId = null;
    await _other.stop();
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
    _schedulePrefetch();
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
      _schedulePrefetch();
    }
    _broadcastState(_player.playbackEvent);
  }

  Future<void> setSkipSilence(bool enabled) async {
    for (final p in [_a, _b]) {
      try {
        await p.setSkipSilenceEnabled(enabled);
      } catch (_) {
        // desktop backends don't implement it
      }
    }
  }

  @override
  Future<void> setSpeed(double speed) async {
    for (final p in [_a, _b]) {
      await p.setSpeed(speed);
    }
  }

  /// Android and Linux only; iOS keeps the original pitch.
  Future<void> setPitch(double pitch) async {
    for (final p in [_a, _b]) {
      try {
        await p.setPitch(pitch);
      } catch (_) {}
    }
  }

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
    _cancelFade();
    _prefetchTimer?.cancel();
    await _a.dispose();
    await _b.dispose();
    await _positions.close();
    await _reports.close();
    await _currentSong.close();
    await _errors.close();
    await _queueChanges.close();
  }

  AppDatabase get db => _db;
}
