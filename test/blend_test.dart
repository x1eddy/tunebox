import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/ai/blend.dart';

Map<String, dynamic> s(String id, String artist, {bool liked = false, int plays = 0, String tags = ''}) => {
  'id': id,
  'title': 'Song $id',
  'artist': artist,
  'liked': liked,
  'playCount': plays,
  'tags': tags,
};

TasteSnapshot taste(String name, List<Map<String, dynamic>> songs, Map<String, double> w) =>
    TasteSnapshot.fromBackup(name, {
      'songs': songs,
      'affinities': [for (final e in w.entries) {'key': e.key, 'weight': e.value}],
    });

void main() {
  final a = taste('A', [
    s('1', 'Daft Punk', liked: true, tags: 'house'),
    s('2', 'Air', plays: 9),
    s('3', 'Justice', plays: 2, tags: 'house'),
    s('x', 'Shared Artist', liked: true),
  ], {'tag:house': 2, 'artist:daft punk': 3});
  final b = taste('B', [
    s('9', 'Metallica', liked: true, tags: 'metal'),
    s('8', 'Slayer', plays: 4, tags: 'metal'),
    s('x', 'Shared Artist', plays: 3),
    s('7', 'Justice', plays: 1, tags: 'house'),
  ], {'tag:metal': 3, 'tag:house': 0.5});

  test('shared songs come first, then fair turns', () {
    final r = blend(a, b, size: 7);
    expect(r.queue.first['id'], 'x');
    expect(r.fromA.first, isNull);
    final turns = r.fromA.skip(1).toList();
    // alternating sides while both have songs left
    expect(turns.take(4), [true, false, true, false]);
    expect(r.sharedArtists, containsAll(['Shared Artist', 'Justice']));
  });

  test('match grows with overlap', () {
    final same = blend(a, a);
    final different = blend(a, b);
    expect(same.match, greaterThan(different.match));
    expect(same.match, greaterThanOrEqualTo(90));
  });

  test('blocked songs never enter a blend', () {
    final c = TasteSnapshot.fromBackup('C', {
      'songs': [
        {'id': 'z', 'title': 'No', 'artist': 'Q', 'blocked': true},
      ],
    });
    expect(blend(a, c).queue.any((x) => x['id'] == 'z'), isFalse);
  });
}
