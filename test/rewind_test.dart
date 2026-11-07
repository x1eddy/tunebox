import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/ai/rewind.dart';
import 'package:tunebox/data/db/database.dart';

Song song(String id, String artist, {int? year, String tags = ''}) => Song(
  id: id,
  title: 'T$id',
  artist: artist,
  album: '',
  durationMs: 200000,
  year: year,
  source: SongSource.youtube,
  tags: tags,
  liked: false,
  blocked: false,
  inLibrary: true,
  autoAdded: false,
  playCount: 0,
  skipCount: 0,
  fileSize: 0,
  addedAt: DateTime(2026),
);

int _id = 0;
PlayEvent ev(String songId, DateTime at, {bool skipped = false, int ms = 180000}) =>
    PlayEvent(
      id: _id++,
      songId: songId,
      at: at,
      playedMs: ms,
      durationMs: 200000,
      skipped: skipped,
      origin: 'library',
      hour: at.hour,
      weekday: at.weekday,
    );

void main() {
  final songs = {
    'a': song('a', 'Daft Punk', year: 2001, tags: 'house,french'),
    'b': song('b', 'Daft Punk', year: 1997, tags: 'house'),
    'c': song('c', 'Air', year: 1998, tags: 'downtempo'),
  };
  final d = DateTime(2026, 11, 1, 22);

  test('counts plays, minutes, tops and the peak hour', () {
    final events = [
      ev('a', d),
      ev('a', d.add(const Duration(days: 1))),
      ev('a', d.add(const Duration(days: 2))),
      ev('b', d.add(const Duration(days: 4)), skipped: true, ms: 10000),
      ev('c', DateTime(2026, 11, 6, 8)),
    ];
    final s = computeRewind(events: events, songs: songs, before: {'c'});
    expect(s.plays, 5);
    expect(s.minutes, ((180000 * 4 + 10000) / 60000).round());
    expect(s.songs.first.item.id, 'a');
    expect(s.songs.first.plays, 3);
    expect(s.artists.first.item, 'Daft Punk');
    // the skip does not count towards the artist
    expect(s.artists.first.plays, 3);
    expect(s.peakHour, 22);
    expect(s.longestStreak, 3);
    expect(s.unskippable!.item.id, 'a');
    // a and b were new, c was known before
    expect(s.discovery, closeTo(2 / 3, 1e-9));
    expect(s.decades.map((x) => x.item), containsAll(['2000s', '1990s']));
    expect(s.tags.first.item, 'house');
  });

  test('personality follows the numbers', () {
    final repeat = [
      for (var i = 0; i < 12; i++) ev('a', d.add(Duration(hours: i))),
    ];
    expect(
      computeRewind(events: repeat, songs: songs, before: {'a'}).personality,
      Personality.repeater,
    );
    expect(
      computeRewind(events: repeat, songs: songs, before: {}).personality,
      Personality.explorer,
    );
    expect(
      computeRewind(events: repeat.take(3).toList(), songs: songs, before: {})
          .enough,
      isFalse,
    );
  });

  test('periods end now and reach back the right distance', () {
    final now = DateTime(2026, 11, 7, 12);
    final (from, to) = periodRange(RewindPeriod.week, now);
    expect(now.difference(from).inDays, 7);
    expect(to.isAfter(now), isTrue);
  });
}
