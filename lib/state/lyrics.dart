import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/database.dart';
import '../data/services/lyrics_service.dart';
import 'providers.dart';

final lyricsServiceProvider = Provider<LyricsService>(
  (ref) => LyricsService(ref.watch(dbProvider)),
);

/// Lyrics for one song; errors mean "could not look right now".
final lyricsProvider = FutureProvider.family<Lyrics, LyricsKey>(
  (ref, key) => ref.watch(lyricsServiceProvider).forSong(key.song),
);

/// The same song stays the same key when its row changes (a new play
/// count, a fixed duration), so the lyrics are not fetched again mid-song.
class LyricsKey {
  const LyricsKey(this.song);
  final Song song;

  @override
  bool operator ==(Object other) => other is LyricsKey && other.song.id == song.id;

  @override
  int get hashCode => song.id.hashCode;
}

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
