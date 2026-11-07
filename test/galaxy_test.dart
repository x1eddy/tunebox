import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/ai/galaxy.dart';

void main() {
  ArtistFacts a(String k, Map<String, int> tags, [int plays = 5]) =>
      ArtistFacts(k, k, plays, tags);

  test('similar artists end up closer than different ones', () {
    final artists = [
      a('daft', {'house': 4, 'french': 2}),
      a('justice', {'house': 3, 'french': 2}),
      a('cassius', {'house': 2, 'french': 1}),
      a('metallica', {'metal': 5}),
      a('slayer', {'metal': 4, 'thrash': 2}),
      a('mozart', {'classical': 6}),
    ];
    final g = layoutGalaxy(artists, const {});
    double d(String x, String y) {
      final s = {for (final s in g.stars) s.key: s};
      final dx = s[x]!.x - s[y]!.x, dy = s[x]!.y - s[y]!.y;
      return dx * dx + dy * dy;
    }

    expect(d('daft', 'justice'), lessThan(d('daft', 'metallica')));
    expect(d('metallica', 'slayer'), lessThan(d('slayer', 'mozart')));
    for (final s in g.stars) {
      expect(s.x.abs(), lessThanOrEqualTo(1.0));
      expect(s.y.abs(), lessThanOrEqualTo(1.0));
    }
  });

  test('the same input always gives the same sky', () {
    final artists = [a('x', {'pop': 1}), a('y', {'pop': 2}), a('z', {'rock': 1})];
    final one = layoutGalaxy(artists, const {});
    final two = layoutGalaxy(artists, const {});
    expect([for (final s in one.stars) s.x], [for (final s in two.stars) s.x]);
  });

  test('played together pulls artists together', () {
    final x = a('x', {'a': 1}), y = a('y', {'b': 1});
    expect(similarity(x, y), 0);
    expect(similarity(x, y, together: 6), greaterThan(0.5));
  });

  test('lasso picks what is inside', () {
    const square = [(0.0, 0.0), (10.0, 0.0), (10.0, 10.0), (0.0, 10.0)];
    expect(insidePolygon(square, 5, 5), isTrue);
    expect(insidePolygon(square, 15, 5), isFalse);
  });
}
