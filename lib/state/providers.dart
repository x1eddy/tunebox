import 'dart:async';
import 'dart:io';
import 'dart:math' show Random;

import 'package:audio_service/audio_service.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:permission_handler/permission_handler.dart';

import '../ai/ai_engine.dart';
import '../data/db/database.dart';
import '../data/services/artwork_service.dart';
import '../data/services/innertube.dart';
import '../data/services/backup_service.dart';
import '../data/services/download_service.dart';
import '../data/services/import_service.dart';
import '../data/services/update_service.dart';
import '../data/services/yt_service.dart';
import '../playback/audio_handler.dart';
import '../playback/stream_proxy.dart';
import '../ui/artwork.dart';
import 'settings.dart';

// ------------------------------------------------------------- foundations

final dbProvider = Provider<AppDatabase>((ref) => throw UnimplementedError());
final ytProvider = Provider<YtService>((ref) => throw UnimplementedError());
final audioHandlerProvider =
    Provider<TuneBoxAudioHandler>((ref) => throw UnimplementedError());
final streamProxyProvider =
    Provider<StreamProxy>((ref) => throw UnimplementedError());

final artworkProvider = Provider<ArtworkService>((ref) => ArtworkService());

final downloadServiceProvider = Provider<DownloadService>((ref) {
  final service = DownloadService(
    ref.watch(dbProvider),
    ref.watch(ytProvider),
    ref.watch(artworkProvider),
  );
  ref.onDispose(service.dispose);
  return service;
});

final updateServiceProvider = Provider<UpdateService>((ref) {
  final service = UpdateService(ref.watch(prefsProvider));
  ref.onDispose(service.dispose);
  return service;
});

/// The update sitting downloaded and ready, or null. Nothing in the UI reacts
/// to this except one row in Settings.
final pendingUpdateProvider = StreamProvider<Update?>(
  (ref) => ref.watch(updateServiceProvider).available,
);

/// Checks for a new version every three hours while the app is running, and
/// once shortly after launch. Says nothing unless something is found.
final updateTickerProvider = Provider<void>((ref) {
  Future<void> run() async {
    final settings = ref.read(settingsProvider);
    if (!settings.autoUpdate) return;
    final service = ref.read(updateServiceProvider);
    if (service.checkedRecently) return;
    // The check is a couple of kilobytes and happens anywhere; the download is
    // 30 MB, so it waits for Wi-Fi unless the user turned the data saver off.
    final onWifi = await ref.read(downloadServiceProvider).onWifi();
    await service.checkAndFetch(
      mayDownload: onWifi || !settings.dataSaverOffWifi,
    );
  }

  final timer = Timer.periodic(UpdateService.interval, (_) => unawaited(run()));
  ref.onDispose(timer.cancel);
  unawaited(Future<void>.delayed(const Duration(seconds: 25), run));
});

final backupServiceProvider = Provider<BackupService>(
  (ref) => BackupService(ref.watch(dbProvider)),
);

final importServiceProvider = Provider<ImportService>(
  (ref) => ImportService(ref.watch(dbProvider), ref.watch(artworkProvider)),
);

final aiProvider = Provider<AiEngine>(
  (ref) => AiEngine(
    db: ref.watch(dbProvider),
    yt: ref.watch(ytProvider),
    downloads: ref.watch(downloadServiceProvider),
    prefs: ref.watch(prefsProvider),
  ),
);

final downloadTasksProvider = StreamProvider<List<DownloadTask>>(
  (ref) => ref.watch(downloadServiceProvider).tasks,
);

// ------------------------------------------------------------------ library

final libraryProvider = StreamProvider<List<Song>>(
  (ref) => ref.watch(dbProvider).watchLibrary(),
);

final likedProvider = StreamProvider<List<Song>>(
  (ref) => ref.watch(dbProvider).watchLiked(),
);

final downloadedProvider = StreamProvider<List<Song>>(
  (ref) => ref.watch(dbProvider).watchSource(SongSource.downloaded),
);

final importedProvider = StreamProvider<List<Song>>(
  (ref) => ref.watch(dbProvider).watchSource(SongSource.imported),
);

final playlistsProvider = StreamProvider<List<Playlist>>(
  (ref) => ref.watch(dbProvider).watchPlaylists(),
);

final playlistSongsProvider =
    StreamProvider.family<List<Song>, String>(
      (ref, id) => ref.watch(dbProvider).watchPlaylistSongs(id),
    );

final artistRulesProvider = StreamProvider<List<ArtistRule>>(
  (ref) => ref.watch(dbProvider).watchArtistRules(),
);

final downloadedBytesProvider = FutureProvider<int>((ref) async {
  // Recomputed when the library stream ticks; cheap, single aggregate query.
  ref.watch(libraryProvider);
  return ref.read(dbProvider).downloadedBytes();
});

/// Songs by one artist, from the library plus anything cached from search.
final artistSongsProvider = FutureProvider.family<List<Song>, String>((
  ref,
  name,
) async {
  // Deliberately not watching the library stream: this hits the network, and
  // every database write would otherwise restart it.
  final db = ref.read(dbProvider);
  final all = await db.library();
  final mine = all.where((s) => s.artist.toLowerCase() == name.toLowerCase());
  if (mine.length >= 4) return mine.toList();
  final found = await ref.read(ytProvider).search('$name songs', max: 15);
  for (final c in found) {
    await db.cacheSong(c);
  }
  final ids = found.map((c) => c.id.value).toList();
  return [...mine, ...await db.songsByIds(ids)];
});

// ------------------------------------------------------------------ the AI

/// Home shelves.
///
/// This must NOT watch the library stream: building shelves caches search
/// results into the database, every write ticks the stream, and the shelf
/// build would restart forever. It is refreshed explicitly instead — pull to
/// refresh, or after a like, an import or a training round.
final homeShelvesProvider = FutureProvider<List<AiShelf>>((ref) async {
  final settings = ref.read(settingsProvider);
  return ref.read(aiProvider).buildHome(settings);
});

TasteProfile? _profileCache;
DateTime? _profileAt;

/// Drops the 20-second profile cache, so the next read really recomputes.
/// Without this, invalidating the provider after a play showed the same
/// numbers again for up to twenty seconds.
void dropTasteProfileCache() {
  _profileCache = null;
  _profileAt = null;
}

final tasteProfileProvider = FutureProvider<TasteProfile>((ref) async {
  // Recomputing this on every visit to a tab cost a visible frame; it only
  // needs to be fresh, not instantaneous.
  final cached = _profileCache;
  if (cached != null &&
      _profileAt != null &&
      DateTime.now().difference(_profileAt!) < const Duration(seconds: 20)) {
    return cached;
  }
  final profile = await ref.read(aiProvider).profile();
  _profileCache = profile;
  _profileAt = DateTime.now();
  return profile;
});

// ----------------------------------------------------------------- playback

final currentSongProvider = StreamProvider<Song?>((ref) {
  final handler = ref.watch(audioHandlerProvider);
  return handler.songChanges;
});

/// The playing song, kept in sync with database edits (likes, downloads).
final nowPlayingProvider = Provider<Song?>((ref) {
  final current = ref.watch(currentSongProvider).value;
  if (current == null) return null;
  final library = ref.watch(libraryProvider).value;
  for (final s in library ?? const <Song>[]) {
    if (s.id == current.id) return s;
  }
  return current;
});

final playbackStateProvider = StreamProvider<PlaybackState>(
  (ref) => ref.watch(audioHandlerProvider).playbackState,
);

final positionProvider = StreamProvider<Duration>(
  (ref) => ref.watch(audioHandlerProvider).positionStream,
);

final playerErrorProvider = StreamProvider<String>(
  (ref) => ref.watch(audioHandlerProvider).errors,
);

/// The queue, as a stream so reordering redraws immediately.
final queueProvider = StreamProvider<List<Song>>((ref) {
  final handler = ref.watch(audioHandlerProvider);
  return handler.queueChanges;
});

/// Single place the UI calls into for anything playback- or taste-related.
class MusicActions {
  MusicActions(this._ref);
  final Ref _ref;

  TuneBoxAudioHandler get _handler => _ref.read(audioHandlerProvider);
  AiEngine get _ai => _ref.read(aiProvider);
  AppDatabase get _db => _ref.read(dbProvider);
  Settings get _settings => _ref.read(settingsProvider);

  Future<void> playAll(
    List<Song> songs, {
    int index = 0,
    String origin = 'library',
  }) async {
    unawaited(_askForNotifications());
    await _handler.playSongs(songs, startIndex: index, origin: origin);
    final song = _handler.currentSong;
    if (song != null) unawaited(_ai.enrich(song));
  }

  Future<void> playSong(
    Song song, {
    List<Song>? queue,
    String origin = 'library',
  }) async {
    final list = queue ?? [song];
    final index = list.indexWhere((s) => s.id == song.id);
    await playAll(list, index: index < 0 ? 0 : index, origin: origin);
  }

  /// Android 13 and up hide the playback notification unless the app has
  /// asked for permission. Declaring it in the manifest is not enough — the
  /// app info page just said "Notifications: Off" — so ask once, the first
  /// time music actually starts, which is when the notification matters.
  Future<void> _askForNotifications() async {
    if (!Platform.isAndroid) return;
    final prefs = _ref.read(prefsProvider);
    if (prefs.getBool('askedNotifications') ?? false) return;
    await prefs.setBool('askedNotifications', true);
    try {
      await Permission.notification.request();
    } catch (_) {
      // an older Android without the runtime permission
    }
  }

  /// A queue built around one song: YouTube Music's radio for it, reordered
  /// by what the AI knows. Also what "keep the music going" uses when a queue
  /// runs out.
  Future<void> startRadio(Song seed) async {
    final yt = _ref.read(ytProvider);
    final companions = seed.id.startsWith('local:')
        // YouTube Music answers a song query with songs; asking for "radio"
        // only drags in hour-long mixes.
        ? await yt.search('${seed.artist} ${seed.title}', max: 20)
        : await yt.related(seed.id, max: 20);
    for (final c in companions) {
      await _db.cacheSong(c);
    }
    final songs = await _db.songsByIds([
      for (final c in companions) c.id.value,
    ]);
    if (songs.isEmpty) throw StateError('no radio for "${seed.title}"');
    final w = await _ai.weights();
    final rules = {
      for (final r in await _db.artistRuleList()) r.artist.toLowerCase(): r.rule,
    };
    final scores = {
      for (final s in songs) s.id: _ai.scoreSong(s, w, _settings, rules),
    };
    songs.sort((a, b) => scores[b.id]!.compareTo(scores[a.id]!));
    await playAll([seed, ...songs], origin: 'radio');
  }

  Future<void> toggle() =>
      _handler.playbackState.value.playing ? _handler.pause() : _handler.play();

  Future<void> next() {
    _tap();
    return _handler.skipToNext();
  }

  Future<void> previous() {
    _tap();
    return _handler.skipToPrevious();
  }
  Future<void> seek(Duration position) => _handler.seek(position);
  Future<void> jumpTo(int index) => _handler.jumpTo(index);
  void reorderQueue(int oldIndex, int newIndex) =>
      _handler.reorder(oldIndex, newIndex);
  void removeFromQueue(int index) => _handler.removeAt(index);

  Future<void> cycleRepeat() {
    final state = _handler.playbackState.value.repeatMode;
    final next = switch (state) {
      AudioServiceRepeatMode.none => AudioServiceRepeatMode.all,
      AudioServiceRepeatMode.all => AudioServiceRepeatMode.one,
      _ => AudioServiceRepeatMode.none,
    };
    return _handler.setRepeatMode(next);
  }

  Future<void> toggleShuffle() {
    final on = _handler.playbackState.value.shuffleMode ==
        AudioServiceShuffleMode.all;
    return _handler.setShuffleMode(
      on ? AudioServiceShuffleMode.none : AudioServiceShuffleMode.all,
    );
  }

  /// A small tap, when the setting allows it.
  void _tap() {
    if (_settings.haptics) HapticFeedback.selectionClick();
  }

  Future<void> like(Song song, {bool? value}) async {
    final liked = value ?? !song.liked;
    _tap();
    await _ai.learnFromLike(song, liked, _settings);
    _ref.invalidate(homeShelvesProvider);
  }

  /// Blocks a song: never recommended again, and if it is the one playing,
  /// get off it — skipping to the next *different* track, or stopping when
  /// that was the only thing queued.
  Future<void> dislike(Song song) async {
    _tap();
    await _ai.learnFromDislike(song, _settings);
    if (_handler.currentSong?.id == song.id) {
      final hasOther = _handler.queueSongs.any((s) => s.id != song.id);
      if (hasOther) {
        await _handler.skipToNext();
      } else {
        await _handler.stop();
      }
    }
    _ref.invalidate(homeShelvesProvider);
  }

  /// Undo for the above.
  Future<void> unblock(Song song) async {
    await _db.setBlocked(song.id, false);
    _ref.invalidate(homeShelvesProvider);
  }

  Future<void> download(Song song) => _ai.downloadForUser(song, _settings);

  Future<void> removeDownload(Song song) =>
      _ref.read(downloadServiceProvider).removeDownload(song);

  Future<void> addToLibrary(Song song) =>
      _db.patchSong(song.id, const SongsCompanion(inLibrary: Value(true)));

  Future<void> setArtistRule(String artist, int rule) =>
      _db.setArtistRule(artist, rule);

  Future<void> clearArtistRule(String artist) => _db.clearArtistRule(artist);

  Future<void> retrain() async {
    _profileCache = null;
    await _ai.retrain(_settings);
    _ref.invalidate(homeShelvesProvider);
    _ref.invalidate(tasteProfileProvider);
  }

  Future<void> forgetEverything() async {
    _profileCache = null;
    await _ai.forget();
    _ref.invalidate(homeShelvesProvider);
    _ref.invalidate(tasteProfileProvider);
  }

  Future<int> runAutoDownloads() => _ai.runAutoDownloads(_settings);

  void refreshHome() {
    _ref.invalidate(homeShelvesProvider);
    _ref.invalidate(tasteProfileProvider);
  }
}

final musicProvider = Provider<MusicActions>(MusicActions.new);

// -------------------------------------------------------------------- theme

/// Dominant colours we have already worked out, keyed by song id.
final _seedCache = <String, Color>{};

/// Accent colour: either pulled from the current artwork or set in settings.
final seedColorProvider = FutureProvider<Color>((ref) async {
  final settings = ref.watch(settingsProvider);
  if (settings.accentMode != AccentMode.artwork) return settings.accentColor;

  final song = ref.watch(currentSongProvider).value;
  if (song == null) return settings.accentColor;
  final cached = _seedCache[song.id];
  if (cached != null) return cached;

  final provider = artworkImageProvider(song, size: 96);
  if (provider == null) return settings.accentColor;
  try {
    // Tiny target + few colours: this runs on the UI isolate on every track
    // change, so it has to be cheap.
    final palette = await PaletteGenerator.fromImageProvider(
      provider,
      size: const Size(48, 48),
      maximumColorCount: 6,
      timeout: const Duration(seconds: 4),
    );
    final seed = palette.vibrantColor?.color ??
        palette.dominantColor?.color ??
        settings.accentColor;
    if (_seedCache.length > 200) _seedCache.clear();
    _seedCache[song.id] = seed;
    return seed;
  } catch (_) {
    return settings.accentColor;
  }
});

/// Connects the playback engine to the things only the app knows: the AI (for
/// smart shuffle and radio) and the preferences (for resuming).
final playbackWiringProvider = Provider<void>((ref) {
  final handler = ref.read(audioHandlerProvider);
  final prefs = ref.read(prefsProvider);

  handler.shuffleOrder = (songs, current) {
    if (!ref.read(settingsProvider).smartShuffle) return [...songs]..shuffle();
    // Weighted, not sorted: the AI's favourites drift towards the front but
    // the order is different every time.
    final ai = ref.read(aiProvider);
    final random = Random();
    final scored = [
      for (final s in songs)
        (s, ai.quickScore(s) + random.nextDouble() * 2.5),
    ]..sort((a, b) => b.$2.compareTo(a.$2));
    return [for (final e in scored) e.$1];
  };

  handler.onQueueExhausted = (last) async {
    if (!ref.read(settingsProvider).autoRadio) {
      await handler.stop();
      return;
    }
    try {
      await ref.read(musicProvider).startRadio(last);
    } catch (_) {
      await handler.stop();
    }
  };

  // The data saver only bites off Wi-Fi, so it is re-checked rather than
  // read once at startup.
  Future<void> applyQuality() async {
    final settings = ref.read(settingsProvider);
    var kbps = settings.audioQualityKbps;
    if (settings.dataSaverOffWifi &&
        !await ref.read(downloadServiceProvider).onWifi()) {
      kbps = kbps == 0 ? 128 : (kbps > 128 ? 128 : kbps);
    }
    handler.streamQualityKbps = kbps;
  }

  unawaited(applyQuality());
  ref.listen(settingsProvider, (_, _) => unawaited(applyQuality()));

  handler.onSnapshot = (ids, index, position) {
    if (!ref.read(settingsProvider).resumePlayback) return;
    prefs.setStringList('lastQueue', ids);
    prefs.setInt('lastIndex', index);
    prefs.setInt('lastPositionMs', position.inMilliseconds);
  };
});

/// Kicks off background work once the app is up: auto-downloads and a scan.
final startupProvider = FutureProvider<void>((ref) async {
  ref.read(playbackWiringProvider);

  // Put the queue back before anything else touches the player.
  final settings0 = ref.read(settingsProvider);
  if (settings0.resumePlayback) {
    try {
      final prefs = ref.read(prefsProvider);
      final ids = prefs.getStringList('lastQueue') ?? const [];
      if (ids.isNotEmpty) {
        final songs = await ref.read(dbProvider).songsByIds(ids);
        if (songs.isNotEmpty) {
          await ref.read(audioHandlerProvider).restore(
            songs,
            prefs.getInt('lastIndex') ?? 0,
            Duration(milliseconds: prefs.getInt('lastPositionMs') ?? 0),
          );
        }
      }
    } catch (e) {
      debugPrint('resume failed — $e');
    }
  }

  await Future<void>.delayed(const Duration(seconds: 3));

  // Each step is independent: a folder that cannot be read must not cost you
  // the auto-downloads, and neither must cost you the release years.
  Future<void> step(String what, Future<void> Function() body) async {
    try {
      await body();
    } catch (e) {
      debugPrint('startup: $what failed — $e');
    }
  }

  await step('cache sweep', () => _sweepNonMusic(ref.read(dbProvider)));
  await step('album cleanup', () => _healAlbums(ref.read(dbProvider)));
  await step('folder scan', () async {
    final settings = ref.read(settingsProvider);
    if (settings.watchedFolders.isEmpty) return;
    final importer = ref.read(importServiceProvider);
    await importer.scanFolders(settings.watchedFolders).drain<void>();
    await importer.pruneMissing();
  });
  await step('auto-downloads', () => ref.read(musicProvider).runAutoDownloads());
  // Release years are only worth a background trickle — they are cosmetic
  // until the AI uses the decade, and they cost one request each.
  await step('release years', () => ref.read(aiProvider).backfillYears());
  ref.read(updateTickerProvider);
});

/// Clears album fields that are really play counts.
///
/// YouTube Music writes "Empire Of The Sun • 258M views" where another song
/// has "Metallica • Ride The Lightning • 1984", and the parser used to take
/// the middle part on faith.
Future<void> _healAlbums(AppDatabase db) async {
  for (final song in await db.allSongs()) {
    final album = VideoItem.isStat(song.album) ? '' : song.album;
    final title = stripPipeGarnish(song.title);
    if (album == song.album && title == song.title) continue;
    await db.patchSong(
      song.id,
      SongsCompanion(album: Value(album), title: Value(title)),
    );
  }
}

/// Throws away cached rows that are not music.
///
/// Plain YouTube search used to answer music queries with MMA livestreams and
/// basketball games, and those rows are still in the cache. Only untouched
/// search hits are considered — nothing in the library, liked or played.
Future<void> _sweepNonMusic(AppDatabase db) async {
  for (final song in await db.cachedSongs()) {
    if (song.source != SongSource.youtube) continue;
    if (looksLikeASong(
      song.title,
      song.durationMs,
      artist: song.artist,
      strict: true,
    )) {
      continue;
    }
    await db.deleteSong(song.id);
  }
}
