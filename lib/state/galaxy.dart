import 'dart:isolate';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ai/credit.dart';
import '../ai/galaxy.dart';
import 'providers.dart';

const _noise = {'local file', 'music', 'audio', 'video', 'song', 'songs'};

/// Your artists, laid out by likeness. Built off the UI thread.
final galaxyProvider = FutureProvider<Galaxy>((ref) async {
  final db = ref.watch(dbProvider);
  ref.watch(libraryProvider);
  final library = (await db.library()).where((s) => !s.blocked).toList();

  final facts = <String, (String, int, Map<String, int>)>{};
  for (final s in library) {
    final key = artistKey(s);
    if (key.isEmpty) continue;
    final f = facts[key] ?? (creditedArtist(s), 0, <String, int>{});
    final tags = f.$3;
    for (final t in s.tags.split(',').map((t) => t.trim().toLowerCase())) {
      if (t.isEmpty || _noise.contains(t)) continue;
      tags[t] = (tags[t] ?? 0) + 1;
    }
    facts[key] = (f.$1, f.$2 + 1 + s.playCount + (s.liked ? 3 : 0), tags);
  }

  final artists = [
    for (final e in facts.entries) ArtistFacts(e.key, e.value.$1, e.value.$2, e.value.$3),
  ]..sort((a, b) => b.plays.compareTo(a.plays));
  final top = artists.take(90).toList();
  final keep = {for (final a in top) a.key};

  // Played one after the other within half an hour = heard together.
  final events = await db.recentEvents(limit: 3000);
  final byId = {for (final s in library) s.id: s};
  final together = <(String, String), int>{};
  for (var i = 1; i < events.length; i++) {
    final a = byId[events[i - 1].songId], b = byId[events[i].songId];
    if (a == null || b == null) continue;
    if (events[i].at.difference(events[i - 1].at).abs() >
        const Duration(minutes: 30)) {
      continue;
    }
    final ka = artistKey(a), kb = artistKey(b);
    if (ka == kb || !keep.contains(ka) || !keep.contains(kb)) continue;
    together[(ka, kb)] = (together[(ka, kb)] ?? 0) + 1;
  }

  return Isolate.run(() => layoutGalaxy(top, together));
});
