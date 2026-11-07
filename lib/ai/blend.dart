import 'dart:math' as math;

import 'package:flutter/foundation.dart';

/// One person's taste, read from a TuneBox backup map (the same format the
/// transfer and the taste file use).
@immutable
class TasteSnapshot {
  const TasteSnapshot({
    required this.name,
    required this.songs,
    required this.weights,
  });

  final String name;

  /// Song id -> the backup's song map.
  final Map<String, Map<String, dynamic>> songs;

  /// Affinity key -> weight.
  final Map<String, double> weights;

  static TasteSnapshot fromBackup(String name, Map<String, dynamic> backup) {
    final songs = <String, Map<String, dynamic>>{};
    for (final s in (backup['songs'] as List? ?? const [])) {
      if (s is Map<String, dynamic> && s['id'] is String) {
        if (s['blocked'] == true) continue;
        songs[s['id'] as String] = s;
      }
    }
    final weights = <String, double>{};
    for (final a in (backup['affinities'] as List? ?? const [])) {
      if (a is Map && a['key'] is String && a['weight'] is num) {
        weights[a['key'] as String] = (a['weight'] as num).toDouble();
      }
    }
    return TasteSnapshot(name: name, songs: songs, weights: weights);
  }

  /// How much this person seems to love a song of their own.
  double love(Map<String, dynamic> s) {
    final plays = (s['playCount'] as num? ?? 0).toDouble();
    final skips = (s['skipCount'] as num? ?? 0).toDouble();
    return (s['liked'] == true ? 3.0 : 0.0) +
        math.log(1 + plays) * 1.2 -
        math.log(1 + skips) * 0.8;
  }

  /// How well a song (from anyone) fits this person's learned weights.
  double fit(Map<String, dynamic> s) {
    var score = 0.0;
    for (final t in '${s['tags'] ?? ''}'.split(',')) {
      final tag = t.trim().toLowerCase();
      if (tag.isNotEmpty) score += weights['tag:$tag'] ?? 0;
    }
    final artist = '${s['artist'] ?? ''}'.toLowerCase();
    score += (weights['artist:$artist'] ?? 0) * 1.5;
    final year = s['year'];
    if (year is int) score += (weights['decade:${year ~/ 10 * 10}'] ?? 0) * 0.5;
    return score;
  }
}

String _identity(Map<String, dynamic> s) =>
    '${'${s['artist'] ?? ''}'.toLowerCase().trim()}|'
    '${'${s['title'] ?? ''}'.toLowerCase().replaceAll(RegExp(r'\s*[\(\[].*?[\)\]]'), '').trim()}';

@immutable
class BlendResult {
  const BlendResult({
    required this.match,
    required this.shared,
    required this.sharedArtists,
    required this.queue,
    required this.fromA,
  });

  /// 0..100: how close the two tastes are.
  final int match;

  /// Songs both of you have.
  final List<Map<String, dynamic>> shared;
  final List<String> sharedArtists;

  /// The blended queue, in play order.
  final List<Map<String, dynamic>> queue;

  /// For each queued song: true when it came from A's side, false from B's,
  /// null when it is shared.
  final List<bool?> fromA;
}

/// Mixes two tastes fairly: songs you both have go first, then the queue
/// alternates between A's and B's favourites, preferring songs the other
/// person is likely to enjoy too.
BlendResult blend(TasteSnapshot a, TasteSnapshot b, {int size = 50}) {
  // cosine similarity of the learned weights
  final keys = {...a.weights.keys, ...b.weights.keys};
  var dot = 0.0, na = 0.0, nb = 0.0;
  for (final k in keys) {
    final x = a.weights[k] ?? 0, y = b.weights[k] ?? 0;
    dot += x * y;
    na += x * x;
    nb += y * y;
  }
  final cosine = na == 0 || nb == 0 ? 0.0 : dot / math.sqrt(na * nb);

  final byIdentityB = {for (final s in b.songs.values) _identity(s): s};
  final shared = <Map<String, dynamic>>[];
  final sharedIds = <String>{};
  for (final s in a.songs.values) {
    final twin = b.songs[s['id']] ?? byIdentityB[_identity(s)];
    if (twin != null) {
      shared.add(s);
      sharedIds
        ..add(s['id'] as String)
        ..add(twin['id'] as String);
    }
  }
  shared.sort((x, y) => (a.love(y) + b.love(y)).compareTo(a.love(x) + b.love(x)));

  final artistsA = {for (final s in a.songs.values) '${s['artist']}'.toLowerCase()};
  final sharedArtists = <String>{
    for (final s in b.songs.values)
      if (artistsA.contains('${s['artist']}'.toLowerCase()) &&
          '${s['artist']}'.isNotEmpty)
        '${s['artist']}',
  }.toList();

  // Overlap matters as much as the weights: two people with the same 30
  // songs are a good match even if one of them never trained the AI.
  final smaller = math.max(1, math.min(a.songs.length, b.songs.length));
  final overlap = (shared.length / smaller).clamp(0.0, 1.0);
  final artistOverlap = (sharedArtists.length /
          math.max(1, math.min(artistsA.length, b.songs.length)))
      .clamp(0.0, 1.0);
  final match = ((cosine.clamp(0.0, 1.0) * 0.5 +
              math.sqrt(overlap) * 0.3 +
              math.sqrt(artistOverlap) * 0.2) *
          100)
      .round()
      .clamp(0, 100);

  List<Map<String, dynamic>> side(TasteSnapshot mine, TasteSnapshot other) {
    final list = [
      for (final s in mine.songs.values)
        if (!sharedIds.contains(s['id'])) s,
    ];
    double score(Map<String, dynamic> s) =>
        mine.love(s) + other.fit(s) * 0.8;
    list.sort((x, y) => score(y).compareTo(score(x)));
    return list;
  }

  final ownA = side(a, b), ownB = side(b, a);
  final queue = <Map<String, dynamic>>[];
  final fromA = <bool?>[];
  for (final s in shared.take((size / 3).ceil())) {
    queue.add(s);
    fromA.add(null);
  }
  var i = 0, j = 0;
  var turnA = true;
  while (queue.length < size && (i < ownA.length || j < ownB.length)) {
    if (turnA && i < ownA.length) {
      queue.add(ownA[i++]);
      fromA.add(true);
    } else if (!turnA && j < ownB.length) {
      queue.add(ownB[j++]);
      fromA.add(false);
    } else if (i < ownA.length) {
      queue.add(ownA[i++]);
      fromA.add(true);
    } else {
      queue.add(ownB[j++]);
      fromA.add(false);
    }
    turnA = !turnA;
  }

  return BlendResult(
    match: match,
    shared: shared,
    sharedArtists: sharedArtists.take(12).toList(),
    queue: queue,
    fromA: fromA,
  );
}
