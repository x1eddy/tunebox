import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ai/rewind.dart';
import 'providers.dart';

final rewindProvider = FutureProvider.family<RewindStats, RewindPeriod>((
  ref,
  period,
) async {
  final db = ref.watch(dbProvider);
  final (from, to) = periodRange(period, DateTime.now());
  final events = await db.eventsBetween(from, to);
  final songs = await db.songsByIds({for (final e in events) e.songId}.toList());
  final before = period == RewindPeriod.all
      ? <String>{}
      : await db.songsPlayedBefore(from);
  return computeRewind(
    events: events,
    songs: {for (final s in songs) s.id: s},
    before: before,
  );
});
