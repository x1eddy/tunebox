import 'dart:io';

import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/lyrics_service.dart';

void main() {
  group('LRC', () {
    test('parses stamps, fractions, repeats and offset', () {
      const lrc = '''
[ar:Someone]
[offset:+500]
[00:01.00]First
[00:05.5]Second
[00:10.123][00:30.00]Chorus
[00:12.00]
''';
      final lines = parseLrc(lrc);
      expect(lines.map((l) => l.text), ['First', 'Second', 'Chorus', '', 'Chorus']);
      // +500 ms offset shows everything half a second earlier
      expect(lines.first.time, const Duration(milliseconds: 500));
      expect(lines[1].time, const Duration(milliseconds: 5000));
      expect(lines[2].time, const Duration(milliseconds: 9623));
      expect(lines.last.time, const Duration(milliseconds: 29500));
    });

    test('finds the line being sung', () {
      final l = Lyrics(lines: parseLrc('[00:02.00]a\n[00:04.00]b\n[00:08.00]c'));
      expect(l.lineAt(const Duration(seconds: 1)), -1);
      expect(l.lineAt(const Duration(seconds: 2)), 0);
      expect(l.lineAt(const Duration(seconds: 7)), 1);
      expect(l.lineAt(const Duration(minutes: 3)), 2);
    });

    test('titles are cleaned the way LRCLIB knows songs', () {
      expect(cleanTitle('Daft Punk - One More Time (Official Video)'),
          'One More Time');
      expect(cleanTitle('Halo [HD] (Lyrics)'), 'Halo');
      expect(cleanTitle('Song feat. Somebody'), 'Song');
      expect(cleanTitle('Song (Live at Wembley)'), 'Song (Live at Wembley)');
    });
  });

  test('a version-1 database upgrades and keeps its data', () async {
    final dir = await Directory.systemTemp.createTemp('tbmig');
    final file = File('${dir.path}/v1.sqlite');
    // Build a database, then turn it back into what 0.10 shipped: no lyrics
    // table and schema version 1.
    var db = AppDatabase(NativeDatabase(file));
    await db.into(db.songs).insert(
      SongsCompanion.insert(
        id: 'abc',
        title: 'Kept',
        source: SongSource.youtube,
      ),
    );
    await db.customStatement('DROP TABLE lyrics_cache');
    await db.customStatement('PRAGMA user_version = 1');
    await db.close();

    db = AppDatabase(NativeDatabase(file));
    final songs = await db.select(db.songs).get();
    expect(songs.single.title, 'Kept');
    await db.saveLyrics(
      const LyricsCacheCompanion(
        songId: Value('abc'),
        synced: Value('[00:01.00]hi'),
        source: Value('lrclib'),
      ),
    );
    expect((await db.cachedLyrics('abc'))!.synced, '[00:01.00]hi');
    final v = await db.customSelect('PRAGMA user_version').getSingle();
    expect(v.data.values.first, 2);
    await db.close();
    await dir.delete(recursive: true);
  });
}
