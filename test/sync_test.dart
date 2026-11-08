import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/services/sync_crypto.dart';
import 'package:tunebox/data/services/sync_service.dart';

/// A pretend device: its peers and its taste live in memory.
class FakeDevice {
  FakeDevice(String id, int port, this.taste) {
    service = SyncService(
      deviceId: id,
      deviceName: 'Device $id',
      port: port,
      hooks: SyncHooks(
        loadPeers: () => peers,
        savePeers: (p) async => peers = p,
        profiles: () => const [RemoteProfile('default', 'Me', 0)],
        exportTaste: (_) async => taste,
        importTaste: (_, t) async {
          received.add(t);
          // merge songs by id, like the real backup merge
          final mine = {
            for (final s in (taste['songs'] as List)) (s as Map)['id']: s,
          };
          for (final s in (t['songs'] as List)) {
            mine[(s as Map)['id']] = s;
          }
          taste = {...taste, 'songs': mine.values.toList()};
        },
      ),
    );
  }

  late final SyncService service;
  List<SyncPeer> peers = [];
  Map<String, Object?> taste;
  final received = <Map<String, dynamic>>[];

  List<String> get songIds => [
    for (final s in (taste['songs'] as List)) '${(s as Map)['id']}',
  ]..sort();
}

Map<String, Object?> tasteWith(List<String> ids) => {
  'format': 1,
  'songs': [for (final id in ids) {'id': id, 'title': id}],
};

void main() {
  group('crypto', () {
    final key = SyncCrypto.randomBytes(32);
    test('seal then open gives back the bytes', () {
      final c = SyncCrypto(key);
      final data = utf8.encode('hello taste ' * 300);
      expect(c.open(c.seal(data)), data);
    });
    test('a flipped bit or another key is rejected', () {
      final c = SyncCrypto(key);
      final box = c.seal(utf8.encode('secret'));
      box[20] ^= 1;
      expect(() => c.open(box), throwsFormatException);
      final other = SyncCrypto(SyncCrypto.randomBytes(32));
      expect(() => other.open(c.seal([1, 2, 3])), throwsFormatException);
    });
    test('two seals of the same data differ (fresh nonce)', () {
      final c = SyncCrypto(key);
      expect(c.seal([1, 2, 3]), isNot(c.seal([1, 2, 3])));
    });
    test('signatures verify only for the same message and key', () {
      final c = SyncCrypto(key);
      final s = c.sign('taste|a|b|1');
      expect(c.verify('taste|a|b|1', s), isTrue);
      expect(c.verify('taste|a|b|2', s), isFalse);
      expect(SyncCrypto(SyncCrypto.randomBytes(32)).verify('taste|a|b|1', s), isFalse);
    });
  });

  group('two devices', () {
    late FakeDevice phone, laptop;

    setUp(() async {
      phone = FakeDevice('phone', 0, tasteWith(['p1', 'p2']));
      laptop = FakeDevice('laptop', 0, tasteWith(['l1']));
      await phone.service.start();
      await laptop.service.start();
    });
    tearDown(() async {
      await phone.service.stop();
      await laptop.service.stop();
    });

    test('a wrong code does not pair', () async {
      laptop.service.openPairing();
      await expectLater(
        phone.service.pairWith('000000', host: '127.0.0.1', port: laptop.service.listeningPort),
        throwsA(isA<SyncException>()),
      );
      expect(phone.peers, isEmpty);
      expect(laptop.peers, isEmpty);
    });

    test('pair once, then tastes flow both ways', () async {
      var pairedOnLaptop = false;
      final code = laptop.service.openPairing(onPaired: (_) => pairedOnLaptop = true);
      await phone.service.pairWith(code, host: '127.0.0.1', port: laptop.service.listeningPort);
      expect(pairedOnLaptop, isTrue);
      expect(laptop.service.pairing, isFalse, reason: 'a code works once');
      expect(phone.peers.single.secret, laptop.peers.single.secret);
      // the laptop learnt where the phone listens
      laptop.peers = [laptop.peers.single.copyWith(host: '127.0.0.1', port: phone.service.listeningPort)];

      expect(await phone.service.syncNow(), 1);
      expect(phone.songIds, ['l1', 'p1', 'p2']);
      expect(await laptop.service.syncNow(), 1);
      expect(laptop.songIds, ['l1', 'p1', 'p2']);

      // a change later on one side arrives on the next round
      laptop.taste = tasteWith(['l1', 'p1', 'p2', 'new']);
      await phone.service.syncNow();
      expect(phone.songIds, contains('new'));
      expect(phone.peers.single.lastSync, isNotNull);
      expect(phone.peers.single.lastError, isNull);
    });

    test('a stranger without the secret gets nothing', () async {
      final code = laptop.service.openPairing();
      await phone.service.pairWith(code, host: '127.0.0.1', port: laptop.service.listeningPort);
      final client = HttpClient();
      final ts = DateTime.now().millisecondsSinceEpoch;
      final req = await client.getUrl(Uri.http(
        '127.0.0.1:${laptop.service.listeningPort}',
        '/sync/taste',
        {'from': 'phone', 'ts': '$ts', 'sig': 'forged'},
      ));
      final res = await req.close();
      expect(res.statusCode, HttpStatus.forbidden);
      client.close(force: true);
    });

    test('forgetting a peer stops the sync', () async {
      final code = laptop.service.openPairing();
      await phone.service.pairWith(code, host: '127.0.0.1', port: laptop.service.listeningPort);
      await laptop.service.forget('phone');
      expect(await phone.service.syncNow(), 0);
      expect(phone.peers.single.lastError, isNotNull);
    });
  });
}
