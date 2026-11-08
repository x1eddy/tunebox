import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/versions.dart';

Song s(String id, String title, String artist, {bool lib = false}) => Song(
  id: id, title: title, artist: artist, album: '', durationMs: 200000,
  source: SongSource.youtube, tags: '', liked: false, blocked: false,
  inLibrary: lib, autoAdded: false, playCount: 0, skipCount: 0, fileSize: 0,
  addedAt: DateTime(2026),
);

void main() {
  test('re-recordings and remasters of one song collapse to one', () {
    final out = collapseVersions([
      s('a', 'Ice Ice Baby (Re-Recorded)', 'Vanilla Ice'),
      s('b', 'Ice Ice Baby', 'Vanilla Ice'),
      s('c', 'Ice Ice Baby (Re-Recorded / Remastered)', 'Vanilla Ice'),
      s('d', 'Ice Ice', 'Nikiels'),
      s('e', 'Ice Ice Baby (Live)', 'Vanilla Ice'),
      s('f', 'Ice Ice Baby (Remix)', 'Vanilla Ice'),
    ]);
    expect(out.map((x) => x.id), ['b', 'd', 'e', 'f']);
  });

  test('your own copy wins over a search hit', () {
    final out = collapseVersions([
      s('web', 'Toxic', 'Britney Spears'),
      s('mine', 'Toxic (Official HD Video)', 'Britney Spears', lib: true),
    ]);
    expect(out.single.id, 'mine');
  });

  test('same title by different artists stays', () {
    expect(collapseVersions([s('1', 'Hello', 'Adele'), s('2', 'Hello', 'Lionel Richie')]).length, 2);
  });
}
