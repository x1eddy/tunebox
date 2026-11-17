import 'dart:math' as math;

import 'package:flutter/foundation.dart';

/// One artist in the galaxy.
@immutable
class Star {
  const Star({
    required this.key,
    required this.name,
    required this.plays,
    required this.tags,
    required this.x,
    required this.y,
    this.z = 0,
  });

  final String key;
  final String name;
  final int plays;

  /// Most common tags first.
  final List<String> tags;

  /// Position in a -1..1 cube.
  final double x;
  final double y;
  final double z;

  String get mainTag => tags.isEmpty ? '' : tags.first;
}

@immutable
class Link {
  const Link(this.a, this.b, this.strength);
  final int a;
  final int b;
  final double strength;
}

@immutable
class Galaxy {
  const Galaxy(this.stars, this.links);
  final List<Star> stars;
  final List<Link> links;
}

/// Raw facts about an artist, gathered on the main isolate.
@immutable
class ArtistFacts {
  const ArtistFacts(this.key, this.name, this.plays, this.tags);
  final String key;
  final String name;
  final int plays;

  /// tag -> how many of their songs carry it
  final Map<String, int> tags;
}

/// How alike two artists are: shared tags (weighted) plus how often one was
/// played right after the other.
double similarity(ArtistFacts a, ArtistFacts b, {int together = 0}) {
  var shared = 0.0, total = 0.0;
  final keys = {...a.tags.keys, ...b.tags.keys};
  for (final k in keys) {
    final x = (a.tags[k] ?? 0).toDouble(), y = (b.tags[k] ?? 0).toDouble();
    shared += math.min(x, y);
    total += math.max(x, y);
  }
  final tagSim = total == 0 ? 0.0 : shared / total;
  final coSim = 1 - math.exp(-together / 2);
  return (tagSim * 0.7 + coSim * 0.6).clamp(0.0, 1.0);
}

/// Lays artists out so similar ones sit close: a force-directed layout
/// (springs between similar artists, every pair repelling a little),
/// deterministic for the same input. Meant for [compute]/Isolate.run.
Galaxy layoutGalaxy(
  List<ArtistFacts> artists,
  Map<(String, String), int> together, {
  int iterations = 320,
}) {
  final n = artists.length;
  if (n == 0) return const Galaxy([], []);
  final rnd = math.Random(n * 7919 + artists.first.key.hashCode);
  final xs = List.generate(n, (_) => rnd.nextDouble() * 2 - 1);
  final ys = List.generate(n, (_) => rnd.nextDouble() * 2 - 1);
  final zs = List.generate(n, (_) => rnd.nextDouble() * 2 - 1);

  final links = <Link>[];
  for (var i = 0; i < n; i++) {
    for (var j = i + 1; j < n; j++) {
      final a = artists[i], b = artists[j];
      final co =
          (together[(a.key, b.key)] ?? 0) + (together[(b.key, a.key)] ?? 0);
      final s = similarity(a, b, together: co);
      if (s > 0.12) links.add(Link(i, j, s));
    }
  }

  // The same force layout as before, in three dimensions: the galaxy is a
  // cloud you can turn, not a flat map.
  final k = math.pow(8 / n, 1 / 3).toDouble(); // ideal distance in a 2x2x2 cube
  var temp = 0.25;
  final dx = List.filled(n, 0.0),
      dy = List.filled(n, 0.0),
      dz = List.filled(n, 0.0);
  for (var it = 0; it < iterations; it++) {
    dx.fillRange(0, n, 0);
    dy.fillRange(0, n, 0);
    dz.fillRange(0, n, 0);
    for (var i = 0; i < n; i++) {
      for (var j = i + 1; j < n; j++) {
        final ddx = xs[i] - xs[j], ddy = ys[i] - ys[j], ddz = zs[i] - zs[j];
        final d2 = math.max(ddx * ddx + ddy * ddy + ddz * ddz, 1e-4);
        final f = k * k / d2 * 0.6; // repulsion
        dx[i] += ddx * f;
        dy[i] += ddy * f;
        dz[i] += ddz * f;
        dx[j] -= ddx * f;
        dy[j] -= ddy * f;
        dz[j] -= ddz * f;
      }
    }
    for (final l in links) {
      final ddx = xs[l.a] - xs[l.b],
          ddy = ys[l.a] - ys[l.b],
          ddz = zs[l.a] - zs[l.b];
      final d = math.sqrt(ddx * ddx + ddy * ddy + ddz * ddz) + 1e-6;
      final f = d * d / k * l.strength * 1.6 / d; // attraction
      dx[l.a] -= ddx * f;
      dy[l.a] -= ddy * f;
      dz[l.a] -= ddz * f;
      dx[l.b] += ddx * f;
      dy[l.b] += ddy * f;
      dz[l.b] += ddz * f;
    }
    for (var i = 0; i < n; i++) {
      // a gentle pull to the middle keeps loners on the map
      dx[i] -= xs[i] * 0.05;
      dy[i] -= ys[i] * 0.05;
      dz[i] -= zs[i] * 0.05;
      final len =
          math.sqrt(dx[i] * dx[i] + dy[i] * dy[i] + dz[i] * dz[i]) + 1e-9;
      final step = math.min(len, temp);
      xs[i] += dx[i] / len * step;
      ys[i] += dy[i] / len * step;
      zs[i] += dz[i] / len * step;
    }
    temp = math.max(0.004, temp * 0.985);
  }

  // Even out the density: the most-linked artists pulled into one tight
  // knot in the middle while loners floated far out. Keep every star's
  // direction and its distance *rank* from the centre, but space the ranks
  // the way points fill a ball evenly.
  if (n > 3) {
    final mx = xs.reduce((a, b) => a + b) / n,
        my = ys.reduce((a, b) => a + b) / n,
        mz = zs.reduce((a, b) => a + b) / n;
    final dist = [
      for (var i = 0; i < n; i++)
        math.sqrt(
          math.pow(xs[i] - mx, 2) +
              math.pow(ys[i] - my, 2) +
              math.pow(zs[i] - mz, 2),
        ),
    ];
    final order = List.generate(n, (i) => i)
      ..sort((a, b) => dist[a].compareTo(dist[b]));
    for (var rank = 0; rank < n; rank++) {
      final i = order[rank];
      final want = math.pow((rank + 0.5) / n, 1 / 3).toDouble();
      final f = want / math.max(dist[i], 1e-6);
      xs[i] = mx + (xs[i] - mx) * f;
      ys[i] = my + (ys[i] - my) * f;
      zs[i] = mz + (zs[i] - mz) * f;
    }
  }

  // fit into -1..1, the same scale on every axis
  final minX = xs.reduce(math.min), maxX = xs.reduce(math.max);
  final minY = ys.reduce(math.min), maxY = ys.reduce(math.max);
  final minZ = zs.reduce(math.min), maxZ = zs.reduce(math.max);
  final span = math.max(
    math.max(maxX - minX, maxY - minY),
    math.max(maxZ - minZ, 1e-6),
  );
  final cx = (minX + maxX) / 2, cy = (minY + maxY) / 2, cz = (minZ + maxZ) / 2;

  final stars = [
    for (var i = 0; i < n; i++)
      Star(
        key: artists[i].key,
        name: artists[i].name,
        plays: artists[i].plays,
        tags:
            (artists[i].tags.entries.toList()
                  ..sort((a, b) => b.value.compareTo(a.value)))
                .map((e) => e.key)
                .take(4)
                .toList(),
        x: n == 1 ? 0 : (xs[i] - cx) / span * 1.8,
        y: n == 1 ? 0 : (ys[i] - cy) / span * 1.8,
        z: n == 1 ? 0 : (zs[i] - cz) / span * 1.8,
      ),
  ];
  // keep only each star's strongest few links, or the sky turns to fog
  final kept = <Link>[];
  final perStar = <int, int>{};
  for (final l in links..sort((a, b) => b.strength.compareTo(a.strength))) {
    if ((perStar[l.a] ?? 0) >= 3 || (perStar[l.b] ?? 0) >= 3) continue;
    perStar[l.a] = (perStar[l.a] ?? 0) + 1;
    perStar[l.b] = (perStar[l.b] ?? 0) + 1;
    kept.add(l);
  }
  return Galaxy(stars, kept);
}

/// Whether [x],[y] lies inside the polygon [poly] (even-odd rule).
bool insidePolygon(List<(double, double)> poly, double x, double y) {
  var inside = false;
  for (var i = 0, j = poly.length - 1; i < poly.length; j = i++) {
    final (xi, yi) = poly[i];
    final (xj, yj) = poly[j];
    if ((yi > y) != (yj > y) &&
        x < (xj - xi) * (y - yi) / (yj - yi + 1e-12) + xi) {
      inside = !inside;
    }
  }
  return inside;
}
