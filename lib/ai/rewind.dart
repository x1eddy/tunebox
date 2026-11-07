import 'package:flutter/foundation.dart';

import '../data/db/database.dart';
import 'credit.dart';

enum RewindPeriod { week, month, year, all }

const _notASound = {'local file', 'music', 'audio', 'song', 'songs', 'video'};

(DateTime, DateTime) periodRange(RewindPeriod p, DateTime now) {
  final end = now.add(const Duration(minutes: 1));
  return switch (p) {
    RewindPeriod.week => (now.subtract(const Duration(days: 7)), end),
    RewindPeriod.month => (now.subtract(const Duration(days: 30)), end),
    RewindPeriod.year => (now.subtract(const Duration(days: 365)), end),
    RewindPeriod.all => (DateTime(2000), end),
  };
}

/// What kind of listener the numbers describe. Picked from how much is new,
/// how many different artists, and how much is repeated.
enum Personality {
  /// Mostly new songs.
  explorer,

  /// Few artists, played a lot.
  loyalist,

  /// Many artists, little repetition.
  collector,

  /// A handful of songs on repeat.
  repeater,

  /// Nothing extreme.
  allRounder,
}

@immutable
class Ranked<T> {
  const Ranked(this.item, this.plays, this.minutes);
  final T item;
  final int plays;
  final int minutes;
}

@immutable
class RewindStats {
  const RewindStats({
    required this.plays,
    required this.minutes,
    required this.songs,
    required this.artists,
    required this.tags,
    required this.decades,
    required this.byHour,
    required this.byWeekday,
    required this.longestStreak,
    required this.discovery,
    required this.unskippable,
    required this.personality,
    required this.distinctSongs,
    required this.distinctArtists,
    required this.skipRate,
  });

  final int plays;
  final int minutes;
  final List<Ranked<Song>> songs;

  /// Display name of the credited artist.
  final List<Ranked<String>> artists;
  final List<Ranked<String>> tags;

  /// "1980s" etc.
  final List<Ranked<String>> decades;
  final List<int> byHour;

  /// Monday = index 0.
  final List<int> byWeekday;
  final int longestStreak;

  /// Share of songs heard for the first time in the period, 0..1.
  final double discovery;

  /// Most played song you never skipped, if any.
  final Ranked<Song>? unskippable;
  final Personality personality;
  final int distinctSongs;
  final int distinctArtists;
  final double skipRate;

  int get peakHour {
    var best = 0;
    for (var h = 1; h < 24; h++) {
      if (byHour[h] > byHour[best]) best = h;
    }
    return best;
  }

  bool get enough => plays >= 5;
}

/// Turns raw listens into the numbers on the Rewind cards.
///
/// [before] are the ids of songs played before the period started; anything
/// else played inside it counts as a discovery.
RewindStats computeRewind({
  required List<PlayEvent> events,
  required Map<String, Song> songs,
  required Set<String> before,
}) {
  final perSong = <String, (int, int, int)>{}; // plays, ms, skips
  final perArtist = <String, (String, int, int)>{}; // name, plays, ms
  final perTag = <String, (int, int)>{};
  final perDecade = <String, (int, int)>{};
  final byHour = List.filled(24, 0);
  final byWeekday = List.filled(7, 0);
  final days = <int>{};
  var ms = 0;
  var skips = 0;

  for (final e in events) {
    final song = songs[e.songId];
    final played = e.playedMs;
    ms += played;
    if (e.skipped) skips++;
    final s = perSong[e.songId] ?? (0, 0, 0);
    perSong[e.songId] = (s.$1 + 1, s.$2 + played, s.$3 + (e.skipped ? 1 : 0));
    byHour[e.hour.clamp(0, 23)]++;
    byWeekday[(e.weekday - 1).clamp(0, 6)]++;
    final local = e.at.toLocal();
    days.add(DateTime(local.year, local.month, local.day)
        .millisecondsSinceEpoch ~/ 86400000);
    if (song == null || e.skipped) continue;

    final key = artistKey(song);
    if (key.isNotEmpty) {
      final a = perArtist[key] ?? (creditedArtist(song), 0, 0);
      perArtist[key] = (a.$1, a.$2 + 1, a.$3 + played);
    }
    for (final tag in song.tags.split(',').map((t) => t.trim().toLowerCase())) {
      // where a file came from is not a sound
      if (tag.isEmpty || tag.length > 24 || _notASound.contains(tag)) continue;
      final t = perTag[tag] ?? (0, 0);
      perTag[tag] = (t.$1 + 1, t.$2 + played);
    }
    final year = song.year;
    if (year != null && year > 1900) {
      final d = '${year ~/ 10 * 10}s';
      final x = perDecade[d] ?? (0, 0);
      perDecade[d] = (x.$1 + 1, x.$2 + played);
    }
  }

  int minutesOf(int ms) => (ms / 60000).round();

  List<Ranked<T>> top<T>(Iterable<Ranked<T>> all, int n) {
    final list = all.toList()
      ..sort((a, b) {
        final p = b.plays.compareTo(a.plays);
        return p != 0 ? p : b.minutes.compareTo(a.minutes);
      });
    return list.take(n).toList();
  }

  final rankedSongs = top([
    for (final e in perSong.entries)
      if (songs[e.key] != null)
        Ranked(songs[e.key]!, e.value.$1, minutesOf(e.value.$2)),
  ], 10);

  Ranked<Song>? unskippable;
  for (final e in perSong.entries) {
    final song = songs[e.key];
    if (song == null || e.value.$3 > 0 || e.value.$1 < 2) continue;
    if (unskippable == null || e.value.$1 > unskippable.plays) {
      unskippable = Ranked(song, e.value.$1, minutesOf(e.value.$2));
    }
  }

  // longest run of consecutive days with music
  final sorted = days.toList()..sort();
  var streak = sorted.isEmpty ? 0 : 1, run = 1;
  for (var i = 1; i < sorted.length; i++) {
    run = sorted[i] == sorted[i - 1] + 1 ? run + 1 : 1;
    if (run > streak) streak = run;
  }

  final distinct = perSong.length;
  final fresh = perSong.keys.where((id) => !before.contains(id)).length;
  final discovery = distinct == 0 ? 0.0 : fresh / distinct;
  final plays = events.length;
  final repeatRatio = distinct == 0 ? 0.0 : plays / distinct;
  final artistCount = perArtist.length;

  final personality = plays < 5
      ? Personality.allRounder
      : discovery >= 0.6
      ? Personality.explorer
      : repeatRatio >= 4
      ? Personality.repeater
      : artistCount <= 5 && plays >= 15
      ? Personality.loyalist
      : artistCount >= 20 && repeatRatio < 1.6
      ? Personality.collector
      : Personality.allRounder;

  return RewindStats(
    plays: plays,
    minutes: minutesOf(ms),
    songs: rankedSongs,
    artists: top([
      for (final a in perArtist.values) Ranked(a.$1, a.$2, minutesOf(a.$3)),
    ], 5),
    tags: top([
      for (final e in perTag.entries)
        Ranked(e.key, e.value.$1, minutesOf(e.value.$2)),
    ], 5),
    decades: top([
      for (final e in perDecade.entries)
        Ranked(e.key, e.value.$1, minutesOf(e.value.$2)),
    ], 4),
    byHour: byHour,
    byWeekday: byWeekday,
    longestStreak: streak,
    discovery: discovery,
    unskippable: unskippable,
    personality: personality,
    distinctSongs: distinct,
    distinctArtists: artistCount,
    skipRate: plays == 0 ? 0 : skips / plays,
  );
}
