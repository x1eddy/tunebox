import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/backup_service.dart';

void main() {
  test('importing the same taste twice changes nothing the second time', () async {
    final a = AppDatabase(NativeDatabase.memory());
    final b = AppDatabase(NativeDatabase.memory());
    await a.upsertSong(SongsCompanion.insert(
      id: 'abc', title: 'Song', source: SongSource.youtube,
      artist: const Value('X'), liked: const Value(true),
      inLibrary: const Value(true),
    ));
    await a.bumpAffinity('artist:x', 1.5);
    await a.logEvent(PlayEventsCompanion.insert(
      songId: 'abc', playedMs: 1000, durationMs: 2000,
      at: Value(DateTime(2026, 1, 1)), hour: 3, weekday: 2,
    ));
    final backup = await BackupService(a).buildBackup();

    final svc = BackupService(b);
    await svc.importBackup(backup);
    final first = (await b.allAffinities()).single.weight;
    final events1 = await b.eventCount();
    final again = await svc.importBackup(backup);

    expect((await b.allAffinities()).single.weight, first);
    expect(await b.eventCount(), events1);
    expect(again.events, 0);
    expect((await b.songById('abc'))!.liked, isTrue);
  });
}
