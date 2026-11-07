import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/backup_service.dart';
import 'package:tunebox/data/services/sync_service.dart';

SyncService device(String id, AppDatabase db, List<SyncPeer> Function() load,
        void Function(List<SyncPeer>) save) =>
    SyncService(
      deviceId: id,
      deviceName: id,
      port: 0,
      hooks: SyncHooks(
        loadPeers: load,
        savePeers: (p) async => save(p),
        exportTaste: () => BackupService(db).buildBackup(),
        importTaste: (t) async => BackupService(db).importBackup(t),
      ),
    );

Future<void> addSong(AppDatabase db, String id, {bool liked = false, int plays = 0}) =>
    db.upsertSong(SongsCompanion.insert(
      id: id,
      title: 'Song $id',
      source: SongSource.youtube,
      artist: const Value('Someone'),
      inLibrary: const Value(true),
      liked: Value(liked),
      playCount: Value(plays),
    ));

void main() {
  test('real databases converge and stay stable over repeated syncs', () async {
    final dbA = AppDatabase(NativeDatabase.memory());
    final dbB = AppDatabase(NativeDatabase.memory());
    var peersA = <SyncPeer>[], peersB = <SyncPeer>[];
    final a = device('a', dbA, () => peersA, (p) => peersA = p);
    final b = device('b', dbB, () => peersB, (p) => peersB = p);
    await a.start();
    await b.start();

    await addSong(dbA, 'one', liked: true, plays: 4);
    await dbA.setAffinity('tag:house', 2.5);
    await dbA.logEvent(PlayEventsCompanion.insert(
      songId: 'one', playedMs: 200000, durationMs: 210000, hour: 21, weekday: 3,
      at: Value(DateTime(2026, 11, 1, 21)),
    ));
    await addSong(dbB, 'two', plays: 1);
    await dbB.setAffinity('tag:metal', 1.5);

    final code = b.openPairing();
    await a.pairWith(code, host: '127.0.0.1', port: b.listeningPort);
    peersB = [peersB.single.copyWith(host: '127.0.0.1', port: a.listeningPort)];

    for (var round = 0; round < 3; round++) {
      expect(await a.syncNow(), 1);
      expect(await b.syncNow(), 1);
    }

    for (final db in [dbA, dbB]) {
      final ids = (await db.library()).map((s) => s.id).toSet();
      expect(ids, {'one', 'two'});
      final w = {for (final x in await db.allAffinities()) x.key: x.weight};
      // repeated syncs never inflate the learned weights
      expect(w['tag:house'], 2.5);
      expect(w['tag:metal'], 1.5);
      expect((await db.songById('one'))!.liked, isTrue);
      // the play happened once, however often it travelled
      expect((await db.recentEvents(limit: 100)).length, 1);
    }

    await a.stop();
    await b.stop();
    await dbA.close();
    await dbB.close();
  });
}
