import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/database.dart';
import '../data/services/lyrics_service.dart';
import 'providers.dart';

final lyricsServiceProvider = Provider<LyricsService>(
  (ref) => LyricsService(ref.watch(dbProvider)),
);

/// Lyrics for one song; errors mean "could not look right now".
final lyricsProvider = FutureProvider.family<Lyrics, Song>(
  (ref, song) => ref.watch(lyricsServiceProvider).forSong(song),
);

/// Looks up lyrics for every song as it starts, in the background, so they
/// are already cached the next time you are offline.
final lyricsPrefetchProvider = Provider<void>((ref) {
  ref.listen(currentSongProvider, (_, next) {
    final song = next.value;
    if (song == null) return;
    unawaited(
      ref.read(lyricsServiceProvider).forSong(song).then((_) {}, onError: (_) {}),
    );
  });
});
