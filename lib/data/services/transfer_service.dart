import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

/// Encoding shared by every way of moving a taste: a clipboard string, a file
/// or the nearby-device transfer. Compressed JSON, with the plain JSON of
/// older exports still accepted.
class TasteCodec {
  static const textPrefix = 'TUNEBOX1:';

  static List<int> gzipJson(Map<String, Object?> backup) =>
      gzip.encode(utf8.encode(jsonEncode(backup)));

  /// A single line of text that survives a chat app or a notes app.
  static String toText(Map<String, Object?> backup) =>
      '$textPrefix${base64.encode(gzipJson(backup))}';

  /// Accepts gzip bytes, plain JSON bytes or the text from [toText].
  static Map<String, dynamic> decode(List<int> bytes) {
    var data = bytes;
    // a text file or clipboard paste
    if (data.length > textPrefix.length &&
        utf8.decode(data.take(textPrefix.length).toList(), allowMalformed: true) ==
            textPrefix) {
      data = base64.decode(
        utf8.decode(data.sublist(textPrefix.length)).replaceAll(RegExp(r'\s'), ''),
      );
    }
    if (data.length > 2 && data[0] == 0x1f && data[1] == 0x8b) {
      data = gzip.decode(data);
    }
    var text = utf8.decode(data, allowMalformed: true);
    if (text.startsWith('﻿')) text = text.substring(1);
    final raw = jsonDecode(text);
    if (raw is! Map<String, dynamic>) {
      throw const FormatException('not a TuneBox taste');
    }
    return raw;
  }

  static Map<String, dynamic> decodeText(String text) {
    final trimmed = text.trim();
    if (!trimmed.contains(textPrefix) && !trimmed.startsWith('{')) {
      throw const FormatException('that is not a TuneBox taste');
    }
    final start = trimmed.indexOf(textPrefix);
    return decode(utf8.encode(start >= 0 ? trimmed.substring(start) : trimmed));
  }
}

class NearbyDevice {
  const NearbyDevice(this.host, this.port, this.name);
  final String host;
  final int port;
  final String name;
}

/// Hands one taste to one device on the same Wi-Fi, guarded by a short code.
///
/// The sender listens only while its screen is open. The receiver finds it by
/// asking every address on its own network for `/hello`, so nobody has to
/// type an IP address — only the code shown on the sender.
class TransferServer {
  static const port = 48211;

  HttpServer? _server;
  String pin = '';
  var _wrong = 0;
  final _done = Completer<bool>();

  /// Completes true once the taste was delivered, false if it was cancelled.
  Future<bool> get finished => _done.future;

  Future<List<String>> addresses() async {
    final out = <String>[];
    for (final i in await NetworkInterface.list(type: InternetAddressType.IPv4)) {
      for (final a in i.addresses) {
        if (!a.isLoopback) out.add(a.address);
      }
    }
    return out;
  }

  Future<void> start({
    required List<int> payload,
    required String deviceName,
    Duration lifetime = const Duration(minutes: 5),
  }) async {
    pin = (100000 + Random.secure().nextInt(900000)).toString();
    try {
      _server = await HttpServer.bind(InternetAddress.anyIPv4, port);
    } on SocketException {
      _server = await HttpServer.bind(InternetAddress.anyIPv4, 0);
    }
    Timer(lifetime, () => stop(delivered: false));
    _server!.listen((request) async {
      try {
        if (request.uri.path == '/hello') {
          request.response
            ..headers.contentType = ContentType.json
            ..write(jsonEncode({'app': 'tunebox', 'name': deviceName}));
        } else if (request.uri.path == '/taste') {
          if (request.uri.queryParameters['pin'] == pin) {
            request.response
              ..headers.contentType = ContentType.binary
              ..add(payload);
            await request.response.close();
            stop(delivered: true);
            return;
          }
          request.response.statusCode = HttpStatus.forbidden;
          // five wrong guesses and the door shuts
          if (++_wrong >= 5) {
            await request.response.close();
            stop(delivered: false);
            return;
          }
        } else {
          request.response.statusCode = HttpStatus.notFound;
        }
        await request.response.close();
      } catch (_) {}
    });
  }

  int get listeningPort => _server?.port ?? port;

  Future<void> stop({bool delivered = false}) async {
    final server = _server;
    _server = null;
    if (!_done.isCompleted) _done.complete(delivered);
    await server?.close(force: true);
  }
}

class TransferClient {
  /// Looks for senders on every /24 this device is attached to.
  static Future<List<NearbyDevice>> discover({
    Duration timeout = const Duration(milliseconds: 3500),
  }) async {
    final bases = <String>{};
    for (final i in await NetworkInterface.list(type: InternetAddressType.IPv4)) {
      for (final a in i.addresses) {
        if (a.isLoopback) continue;
        final p = a.address.split('.');
        if (p.length == 4) bases.add('${p[0]}.${p[1]}.${p[2]}');
      }
    }
    final found = <NearbyDevice>[];
    final targets = [
      for (final b in bases)
        for (var n = 1; n < 255; n++) '$b.$n',
    ];
    // All at once: a quiet address only costs the timeout, and home Wi-Fi
    // drops enough packets that a short timeout misses real devices.
    await Future.wait([
      for (final host in targets)
        _probe(host, TransferServer.port, timeout).then((d) {
          if (d != null) found.add(d);
        }),
    ]);
    return found;
  }

  static Future<NearbyDevice?> probe(String host, {int port = TransferServer.port}) =>
      _probe(host, port, const Duration(seconds: 3));

  static Future<NearbyDevice?> _probe(String host, int port, Duration t) async {
    final client = HttpClient()..connectionTimeout = t;
    try {
      final req = await client.getUrl(Uri.http('$host:$port', '/hello')).timeout(t);
      final res = await req.close().timeout(t);
      if (res.statusCode != 200) return null;
      final body = jsonDecode(await utf8.decoder.bind(res).join());
      if (body is Map && body['app'] == 'tunebox') {
        return NearbyDevice(host, port, '${body['name'] ?? host}');
      }
    } catch (_) {
      // nothing listening there
    } finally {
      client.close(force: true);
    }
    return null;
  }

  static Future<Map<String, dynamic>> fetch(NearbyDevice device, String pin) async {
    final client = HttpClient()..connectionTimeout = const Duration(seconds: 8);
    try {
      final req = await client.getUrl(
        Uri.http('${device.host}:${device.port}', '/taste', {'pin': pin.trim()}),
      );
      final res = await req.close().timeout(const Duration(seconds: 60));
      if (res.statusCode == HttpStatus.forbidden) {
        throw const FormatException('wrong code');
      }
      if (res.statusCode != 200) {
        throw HttpException('the other device answered ${res.statusCode}');
      }
      final bytes = await res.fold<List<int>>([], (a, b) => a..addAll(b));
      return TasteCodec.decode(bytes);
    } finally {
      client.close(force: true);
    }
  }
}
