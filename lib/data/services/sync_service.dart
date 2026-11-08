import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';

import '../../state/owner.dart' show logEvent;
import 'sync_crypto.dart';
import 'transfer_service.dart' show TasteCodec;

/// A device this one swaps taste with.
@immutable
class SyncPeer {
  const SyncPeer({
    required this.id,
    required this.name,
    required this.secret,
    this.host,
    this.port,
    this.lastSync,
    this.lastError,
  });

  final String id;
  final String name;

  /// base64 of the 32-byte shared secret.
  final String secret;
  final String? host;
  final int? port;
  final DateTime? lastSync;
  final String? lastError;

  SyncPeer copyWith({
    String? host,
    int? port,
    DateTime? lastSync,
    String? lastError,
    bool clearError = false,
  }) => SyncPeer(
    id: id,
    name: name,
    secret: secret,
    host: host ?? this.host,
    port: port ?? this.port,
    lastSync: lastSync ?? this.lastSync,
    lastError: clearError ? null : lastError ?? this.lastError,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'name': name,
    'secret': secret,
    'host': host,
    'port': port,
    'lastSync': lastSync?.millisecondsSinceEpoch,
    'lastError': lastError,
  };

  static SyncPeer fromJson(Map<String, dynamic> j) => SyncPeer(
    id: j['id'] as String,
    name: j['name'] as String? ?? '?',
    secret: j['secret'] as String,
    host: j['host'] as String?,
    port: j['port'] as int?,
    lastSync: j['lastSync'] is int
        ? DateTime.fromMillisecondsSinceEpoch(j['lastSync'] as int)
        : null,
    lastError: j['lastError'] as String?,
  );

  SyncCrypto get crypto => SyncCrypto(base64.decode(secret));
}

/// Where the app keeps peers and hands over its taste. Kept as callbacks so
/// the service runs (and is tested) without Flutter or a real database.
/// A profile as the other device describes it.
@immutable
class RemoteProfile {
  const RemoteProfile(this.id, this.name, this.renamedAt);
  final String id;
  final String name;
  final int renamedAt;

  Map<String, Object?> toJson() => {'id': id, 'name': name, 'renamedAt': renamedAt};
}

class SyncHooks {
  const SyncHooks({
    required this.loadPeers,
    required this.savePeers,
    required this.profiles,
    required this.exportTaste,
    required this.importTaste,
  });

  /// Pairings belong to the device, not to one profile.
  final List<SyncPeer> Function() loadPeers;
  final Future<void> Function(List<SyncPeer>) savePeers;

  /// Every profile on this device.
  final List<RemoteProfile> Function() profiles;

  /// A profile's taste as the backup map; null asks for the active one.
  final Future<Map<String, Object?>> Function(String? profileId) exportTaste;

  /// Merges a peer's taste into the profile with the same id, creating it
  /// here if needed. Must be safe to repeat.
  final Future<void> Function(RemoteProfile profile, Map<String, dynamic> taste)
  importTaste;
}

/// Keeps paired devices' tastes in step on the home network.
///
/// Every device runs a tiny server. Each one, now and then, asks its peers
/// for their taste and merges it, so changes travel both ways without a
/// cloud, an account or anything leaving the network. Requests are signed
/// and answers are sealed with a secret only the two devices know.
class SyncService {
  SyncService({
    required this.deviceId,
    required this.deviceName,
    required this.hooks,
    this.port = defaultPort,
  });

  static const defaultPort = 48212;
  static const interval = Duration(minutes: 45);

  final String deviceId;
  final String deviceName;
  final SyncHooks hooks;
  final int port;

  HttpServer? _server;
  final _changes = StreamController<void>.broadcast();

  /// Fires after a merge or a new pairing, so screens can refresh.
  Stream<void> get changes => _changes.stream;

  // pairing window
  String? _pairCode;
  DateTime? _pairUntil;
  var _pairMisses = 0;
  void Function(SyncPeer)? _onPaired;

  bool get pairing =>
      _pairCode != null && DateTime.now().isBefore(_pairUntil!);
  String? get pairCode => pairing ? _pairCode : null;
  int get listeningPort => _server?.port ?? port;

  Future<void> start() async {
    if (_server != null) return;
    // A profile switch restarts the service while the old server is still
    // letting go of the port; paired devices only know this port, so wait
    // for it rather than taking a random one straight away.
    for (var i = 0; i < 15 && _server == null; i++) {
      try {
        _server = await HttpServer.bind(InternetAddress.anyIPv4, port);
      } on SocketException {
        if (port == 0) rethrow;
        await Future<void>.delayed(const Duration(milliseconds: 200));
      }
    }
    // something else holds it for good (a test, a second window)
    _server ??= await HttpServer.bind(InternetAddress.anyIPv4, 0);
    _server!.listen(_handle, onError: (_) {});
  }

  Future<void> stop() async {
    final s = _server;
    _server = null;
    await s?.close(force: true);
  }

  /// Opens pairing for [lifetime] and returns the code to type on the other
  /// device.
  String openPairing({
    Duration lifetime = const Duration(minutes: 5),
    void Function(SyncPeer)? onPaired,
  }) {
    _pairCode = (100000 + Random.secure().nextInt(900000)).toString();
    _pairUntil = DateTime.now().add(lifetime);
    _pairMisses = 0;
    _onPaired = onPaired;
    return _pairCode!;
  }

  void closePairing() {
    _pairCode = null;
    _pairUntil = null;
    _onPaired = null;
  }

  Future<void> _handle(HttpRequest req) async {
    final res = req.response;
    try {
      switch (req.uri.path) {
        case '/sync/hello':
          res.headers.contentType = ContentType.json;
          res.write(jsonEncode({
            'app': 'tunebox-sync',
            'id': deviceId,
            'name': deviceName,
            'pairing': pairing,
          }));
        case '/sync/pair':
          await _pair(req);
          return;
        case '/sync/taste':
          await _taste(req);
          return;
        case '/sync/profiles':
          await _profiles(req);
          return;
        default:
          res.statusCode = HttpStatus.notFound;
      }
      await res.close();
    } catch (e) {
      try {
        res.statusCode = HttpStatus.internalServerError;
        await res.close();
      } catch (_) {}
    }
  }

  Future<void> _pair(HttpRequest req) async {
    final res = req.response;
    final body = jsonDecode(await utf8.decoder.bind(req).join());
    if (!pairing ||
        body is! Map ||
        body['code'] != _pairCode ||
        body['id'] is! String) {
      res.statusCode = HttpStatus.forbidden;
      // five wrong codes and the window shuts
      if (pairing && ++_pairMisses >= 5) closePairing();
      await res.close();
      return;
    }
    final secret = base64.encode(SyncCrypto.randomBytes(32));
    final peer = SyncPeer(
      id: body['id'] as String,
      name: '${body['name'] ?? 'Device'}',
      secret: secret,
      host: req.connectionInfo?.remoteAddress.address,
      port: body['port'] as int?,
    );
    final peers = hooks.loadPeers().where((p) => p.id != peer.id).toList()
      ..add(peer);
    await hooks.savePeers(peers);
    res.headers.contentType = ContentType.json;
    res.write(jsonEncode({'id': deviceId, 'name': deviceName, 'secret': secret}));
    await res.close();
    final done = _onPaired;
    closePairing();
    _changes.add(null);
    done?.call(peer);
  }

  /// The paired peer behind a signed request, or null.
  SyncPeer? _authorised(HttpRequest req, String what) {
    final q = req.uri.queryParameters;
    final from = q['from'] ?? '';
    final ts = int.tryParse(q['ts'] ?? '') ?? 0;
    final peer = hooks.loadPeers().where((p) => p.id == from).firstOrNull;
    final age = (DateTime.now().millisecondsSinceEpoch - ts).abs();
    if (peer == null ||
        age > const Duration(minutes: 5).inMilliseconds ||
        !peer.crypto.verify('$what|$from|$deviceId|$ts', q['sig'] ?? '')) {
      return null;
    }
    return peer;
  }

  Future<void> _profiles(HttpRequest req) async {
    final res = req.response;
    final peer = _authorised(req, 'profiles');
    if (peer == null) {
      res.statusCode = HttpStatus.forbidden;
      await res.close();
      return;
    }
    res.headers.contentType = ContentType.binary;
    res.add(peer.crypto.seal(utf8.encode(jsonEncode([
      for (final p in hooks.profiles()) p.toJson(),
    ]))));
    await res.close();
  }

  Future<void> _taste(HttpRequest req) async {
    final res = req.response;
    final profile = req.uri.queryParameters['profile'];
    // 1.0 asked without a profile; its signature does not mention one
    final peer = _authorised(
      req,
      profile == null ? 'taste' : 'taste:$profile',
    );
    if (peer == null) {
      res.statusCode = HttpStatus.forbidden;
      await res.close();
      return;
    }
    // remember where the peer lives now, for the next time
    final host = req.connectionInfo?.remoteAddress.address;
    if (host != null && host != peer.host) {
      await hooks.savePeers([
        for (final p in hooks.loadPeers()) p.id == peer.id ? p.copyWith(host: host) : p,
      ]);
    }
    final taste = await hooks.exportTaste(profile);
    res.headers.contentType = ContentType.binary;
    res.add(peer.crypto.seal(TasteCodec.gzipJson(taste)));
    await res.close();
  }

  // ---------------------------------------------------------------- client

  /// Uses [code] to pair with a device whose pairing is open. Tries
  /// [host] first when given, otherwise looks around the local network.
  Future<SyncPeer> pairWith(String code, {String? host, int? port}) async {
    final candidates = host != null
        ? [(host, port ?? defaultPort)]
        : [
            for (final d in await discover(onlyPairing: true)) (d.$1, d.$2),
          ];
    if (candidates.isEmpty) throw const SyncException('no-device');
    Object? last;
    for (final (h, p) in candidates) {
      final client = HttpClient()..connectionTimeout = const Duration(seconds: 6);
      try {
        final req = await client.postUrl(Uri.http('$h:$p', '/sync/pair'));
        req.headers.contentType = ContentType.json;
        req.write(jsonEncode({
          'code': code.trim(),
          'id': deviceId,
          'name': deviceName,
          'port': listeningPort,
        }));
        final res = await req.close().timeout(const Duration(seconds: 10));
        if (res.statusCode == HttpStatus.forbidden) {
          last = const SyncException('wrong-code');
          continue;
        }
        if (res.statusCode != 200) {
          last = SyncException('http-${res.statusCode}');
          continue;
        }
        final body = jsonDecode(await utf8.decoder.bind(res).join()) as Map;
        final peer = SyncPeer(
          id: body['id'] as String,
          name: '${body['name']}',
          secret: body['secret'] as String,
          host: h,
          port: p,
        );
        await hooks.savePeers([
          ...hooks.loadPeers().where((x) => x.id != peer.id),
          peer,
        ]);
        _changes.add(null);
        return peer;
      } catch (e) {
        last = e;
      } finally {
        client.close(force: true);
      }
    }
    throw last is SyncException ? last : SyncException('$last');
  }

  /// Every TuneBox sync server on this device's /24 networks:
  /// (host, port, id, name, pairing).
  Future<List<(String, int, String, String, bool)>> discover({
    bool onlyPairing = false,
    Duration timeout = const Duration(milliseconds: 3000),
  }) async {
    final bases = <String>{};
    final mine = <String>{};
    for (final i in await NetworkInterface.list(type: InternetAddressType.IPv4)) {
      for (final a in i.addresses) {
        if (a.isLoopback) continue;
        mine.add(a.address);
        final p = a.address.split('.');
        if (p.length == 4) bases.add('${p[0]}.${p[1]}.${p[2]}');
      }
    }
    final found = <(String, int, String, String, bool)>[];
    await Future.wait([
      for (final b in bases)
        for (var n = 1; n < 255; n++)
          if (!mine.contains('$b.$n'))
            _hello('$b.$n', defaultPort, timeout).then((h) {
              if (h != null && (!onlyPairing || h.$5)) found.add(h);
            }),
    ]);
    return found;
  }

  Future<(String, int, String, String, bool)?> _hello(
    String host,
    int port,
    Duration t,
  ) async {
    final client = HttpClient()..connectionTimeout = t;
    try {
      final req = await client.getUrl(Uri.http('$host:$port', '/sync/hello')).timeout(t);
      final res = await req.close().timeout(t);
      if (res.statusCode != 200) return null;
      final j = jsonDecode(await utf8.decoder.bind(res).join());
      if (j is Map && j['app'] == 'tunebox-sync' && j['id'] != deviceId) {
        return (host, port, '${j['id']}', '${j['name']}', j['pairing'] == true);
      }
    } catch (_) {
    } finally {
      client.close(force: true);
    }
    return null;
  }

  bool _running = false;

  /// Pulls every peer's taste and merges it. Returns how many peers were
  /// reached. Safe to call often; a sync already running is not doubled.
  Future<int> syncNow() async {
    if (_running) return 0;
    _running = true;
    var reached = 0;
    try {
      var peers = hooks.loadPeers();
      List<(String, int, String, String, bool)>? scan;
      for (final peer in peers) {
        String? error;
        var ok = false;
        // the last known address first; if the router handed out a new
        // one, look around the network for the same device id
        final tries = <(String, int)>[
          if (peer.host != null) (peer.host!, peer.port ?? defaultPort),
        ];
        for (var round = 0; round < 2 && !ok; round++) {
          for (final (h, p) in tries) {
            try {
              await _pullAll(peer, h, p);
              peers = [
                for (final x in hooks.loadPeers())
                  x.id == peer.id
                      ? x.copyWith(host: h, port: p, lastSync: DateTime.now(), clearError: true)
                      : x,
              ];
              await hooks.savePeers(peers);
              ok = true;
              reached++;
              break;
            } on SyncException catch (e) {
              error = e.code;
            } catch (e) {
              error = 'unreachable';
            }
          }
          if (!ok && round == 0) {
            scan ??= await discover();
            tries
              ..clear()
              ..addAll([
                for (final d in scan)
                  if (d.$3 == peer.id) (d.$1, d.$2),
              ]);
            if (tries.isEmpty) break;
          }
        }
        if (!ok) {
          logEvent('sync with ${peer.name} failed — $error');
          peers = [
            for (final x in hooks.loadPeers())
              x.id == peer.id ? x.copyWith(lastError: error) : x,
          ];
          await hooks.savePeers(peers);
        }
      }
      if (peers.isNotEmpty) _changes.add(null);
    } finally {
      _running = false;
    }
    return reached;
  }

  /// Every profile the peer has, each merged into its twin here.
  Future<void> _pullAll(SyncPeer peer, String host, int port) async {
    List<RemoteProfile> remote;
    try {
      final list = jsonDecode(
        utf8.decode(await _get(peer, host, port, '/sync/profiles', 'profiles', const {})),
      ) as List;
      remote = [
        for (final j in list.cast<Map<String, dynamic>>())
          RemoteProfile(
            j['id'] as String,
            j['name'] as String? ?? 'Me',
            j['renamedAt'] as int? ?? 0,
          ),
      ];
    } on SyncException catch (e) {
      // A device still on 1.0 has no profile list: it serves its active
      // profile, which is merged into this device's main one.
      if (e.code != 'http-404') rethrow;
      final taste = TasteCodec.decode(
        await _get(peer, host, port, '/sync/taste', 'taste', const {}),
      );
      await hooks.importTaste(const RemoteProfile('default', 'Me', 0), taste);
      return;
    }
    for (final profile in remote) {
      final taste = TasteCodec.decode(
        await _get(peer, host, port, '/sync/taste', 'taste:${profile.id}', {
          'profile': profile.id,
        }),
      );
      await hooks.importTaste(profile, taste);
    }
  }

  /// A signed request whose answer is sealed; returns the opened bytes.
  Future<List<int>> _get(
    SyncPeer peer,
    String host,
    int port,
    String path,
    String what,
    Map<String, String> extra,
  ) async {
    final ts = DateTime.now().millisecondsSinceEpoch;
    final sig = peer.crypto.sign('$what|$deviceId|${peer.id}|$ts');
    final client = HttpClient()..connectionTimeout = const Duration(seconds: 5);
    try {
      final req = await client.getUrl(
        Uri.http('$host:$port', path, {
          ...extra,
          'from': deviceId,
          'ts': '$ts',
          'sig': sig,
        }),
      );
      final res = await req.close().timeout(const Duration(seconds: 60));
      if (res.statusCode == HttpStatus.forbidden) {
        throw const SyncException('not-paired');
      }
      if (res.statusCode != 200) throw SyncException('http-${res.statusCode}');
      final bytes = await res.fold<List<int>>([], (a, b) => a..addAll(b));
      return peer.crypto.open(bytes);
    } finally {
      client.close(force: true);
    }
  }

  Future<void> forget(String peerId) async {
    await hooks.savePeers(hooks.loadPeers().where((p) => p.id != peerId).toList());
    _changes.add(null);
  }

  void dispose() {
    unawaited(stop());
    _changes.close();
  }
}

class SyncException implements Exception {
  const SyncException(this.code);

  /// no-device | wrong-code | not-paired | unreachable | http-NNN
  final String code;

  @override
  String toString() => 'SyncException($code)';
}
