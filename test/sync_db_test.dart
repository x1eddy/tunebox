import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/backup_service.dart';
import 'package:tunebox/data/services/sync_service.dart';

/// A device with several profiles, each its own in-memory database.
class Device {
  Device(this.id) {
    service = SyncService(
      deviceId: id,
      deviceName: id,
      port: 0,
      hooks: SyncHooks(
        loadPeers: () => peers,
        savePeers: (p) async => peers = p,
        profiles: () => [
          for (final e in names.entries) RemoteProfile(e.key, e.value.$1, e.value.$2),
        ],
        exportTaste: (pid) => BackupService(db(pid ?? 'default')).buildBackup(),
        importTaste: (remote, taste) async {
          final mine = names[remote.id];
          if (mine == null ||
              remote.renamedAt > mine.$2 ||
              (remote.renamedAt == mine.$2 && mine.$1 == 'Me' && remote.name != 'Me')) {
            names[remote.id] = (remote.name, remote.renamedAt);
          }
          await BackupService(db(remote.id)).importBackup(taste);
        },
      ),
    );
  }

  final String id;
  late final SyncService service;
  List<SyncPeer> peers = [];
  final names = <String, (String, int)>{'default': ('Me', 0)};
  final dbs = <String, AppDatabase>{};
  AppDatabase db(String pid) =>
      dbs.putIfAbsent(pid, () => AppDatabase(NativeDatabase.memory()));

  Future<void> close() async {
    await service.stop();
    for (final d in dbs.values) {
      await d.close();
    }
  }
}

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
  test('every profile syncs into its twin, and new ones appear', () async {
    final phone = Device('phone'), laptop = Device('laptop');
    await phone.service.start();
    await laptop.service.start();

    // the phone's main profile is called E; it also has a second one
    phone.names['default'] = ('E', 0);
    phone.names['kid'] = ('Kid', 5);
    await addSong(phone.db('default'), 'one', liked: true, plays: 4);
    await phone.db('default').setAffinity('tag:house', 2.5);
    await phone.db('default').logEvent(PlayEventsCompanion.insert(
      songId: 'one', playedMs: 200000, durationMs: 210000, hour: 21, weekday: 3,
      at: Value(DateTime(2026, 11, 1, 21)),
    ));
    await addSong(phone.db('kid'), 'cartoon');
    await addSong(laptop.db('default'), 'two', plays: 1);

    final code = laptop.service.openPairing();
    await phone.service.pairWith(code, host: '127.0.0.1', port: laptop.service.listeningPort);
    laptop.peers = [laptop.peers.single.copyWith(host: '127.0.0.1', port: phone.service.listeningPort)];

    for (var round = 0; round < 3; round++) {
      expect(await laptop.service.syncNow(), 1);
      expect(await phone.service.syncNow(), 1);
    }

    // same accounts on both, with the real name winning over "Me"
    expect(laptop.names, {'default': ('E', 0), 'kid': ('Kid', 5)});
    for (final d in [phone, laptop]) {
      final main = (await d.db('default').library()).map((s) => s.id).toSet();
      expect(main, {'one', 'two'});
      // the kid's songs stay in the kid's profile
      expect((await d.db('kid').library()).map((s) => s.id).toSet(), {'cartoon'});
      final w = {for (final x in await d.db('default').allAffinities()) x.key: x.weight};
      expect(w['tag:house'], 2.5, reason: 'repeated syncs never inflate weights');
      expect((await d.db('default').recentEvents(limit: 100)).length, 1);
    }

    await phone.close();
    await laptop.close();
  });
}
