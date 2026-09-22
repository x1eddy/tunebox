import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:http/http.dart' as http;

import '../data/services/innertube.dart';

/// A loopback HTTP server that sits between the audio player and YouTube.
///
/// Two reasons it exists:
///  * googlevideo refuses a plain GET (403) and only answers *ranged*
///    requests — players do not always send a Range header on the first hit.
///  * media URLs expire, so a stale one has to be re-resolved mid-playback
///    without the player ever noticing.
class StreamProxy {
  StreamProxy(this._innerTube);

  final InnerTube _innerTube;
  final _cache = <String, _Resolved>{};
  /// Resolutions already in flight, so the player asking twice (and the user
  /// tapping five times) costs one call to YouTube, not five.
  final _inFlight = <String, Future<AudioFormat>>{};

  /// Called with the real track length when a stream resolves.
  void Function(String videoId, int durationMs)? onDuration;
  var _client = http.Client();

  HttpServer? _server;
  int get port => _server?.port ?? 0;
  bool get running => _server != null;

  /// Called with a video id when a stream needs a proof-of-origin token.
  /// Set by the app on platforms that can mint one (Android WebView).
  Future<String?> Function(String videoId)? poTokenProvider;

  Future<void> start() async {
    if (_server != null) return;
    // stop() closes the client; a restart needs a fresh one or every stream
    // fails with "Client is already closed".
    _client = http.Client();
    _server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0, shared: true);
    _server!.listen(_handle, onError: (_) {});
  }

  Future<void> stop() async {
    await _server?.close(force: true);
    _server = null;
    _client.close();
  }

  Uri urlFor(String videoId) =>
      Uri.parse('http://127.0.0.1:$port/audio/$videoId');

  /// Resolves (and caches) the best audio format for a video.
  Future<AudioFormat> resolve(
    String videoId, {
    int maxKbps = 0,
    bool force = false,
  }) {
    final cached = _cache[videoId];
    if (!force && cached != null && !cached.stale) {
      return Future.value(cached.format);
    }
    final pending = _inFlight[videoId];
    if (!force && pending != null) return pending;

    final future = _resolve(videoId, maxKbps: maxKbps);
    _inFlight[videoId] = future;
    return future.whenComplete(() => _inFlight.remove(videoId));
  }

  Future<AudioFormat> _resolve(String videoId, {int maxKbps = 0}) async {
    var result = await _innerTube.player(videoId);
    if (!result.playable && poTokenProvider != null) {
      final token = await poTokenProvider!(videoId);
      if (token != null) {
        result = await _innerTube.player(videoId, poToken: token);
      }
    }
    final format = result.best(maxKbps: maxKbps);
    if (format == null) {
      throw InnerTubeException(
        result.reason ?? 'no audio stream for $videoId (${result.status})',
      );
    }
    // Keep the map from growing for the whole life of the app: a long
    // session skips through hundreds of tracks.
    if (_cache.length > 120) {
      final oldest = _cache.entries.toList()
        ..sort((a, b) => a.value.at.compareTo(b.value.at));
      for (final e in oldest.take(40)) {
        _cache.remove(e.key);
      }
    }
    _cache[videoId] = _Resolved(format, DateTime.now());
    if (result.durationMs > 0) onDuration?.call(videoId, result.durationMs);
    return format;
  }

  Future<void> _handle(HttpRequest request) async {
    final id = request.uri.pathSegments.length >= 2
        ? request.uri.pathSegments[1]
        : '';
    if (id.isEmpty) {
      request.response.statusCode = HttpStatus.notFound;
      await request.response.close();
      return;
    }

    try {
      var format = await resolve(id);
      final total = format.contentLength;
      final header = request.headers.value(HttpHeaders.rangeHeader);
      final (start, end) = parseRange(header, total);

      request.response
        // One response per connection: simpler than juggling keep-alive while
        // stitching upstream chunks, and players do not care.
        ..persistentConnection = false
        ..statusCode = header == null ? HttpStatus.ok : HttpStatus.partialContent
        ..headers.set(HttpHeaders.acceptRangesHeader, 'bytes')
        ..headers.set(HttpHeaders.contentTypeHeader, format.mimeType)
        ..headers.set(HttpHeaders.contentLengthHeader, '${end - start + 1}');
      if (header != null) {
        request.response.headers.set(
          HttpHeaders.contentRangeHeader,
          'bytes $start-$end/$total',
        );
      }

      if (request.method == 'HEAD') {
        await request.response.close();
        return;
      }

      // Walk the requested range, stitching upstream pieces into one
      // continuous body for the player.
      var position = start;
      var refreshed = false;
      while (position <= end) {
        final stop = min(position + _chunkSize - 1, end);
        final response = await _range(format, position, stop);
        if ((response.statusCode == 403 || response.statusCode == 410) &&
            !refreshed) {
          refreshed = true;
          format = await resolve(id, force: true);
          continue;
        }
        if (response.statusCode >= 400) {
          throw InnerTubeException('upstream ${response.statusCode}');
        }
        // addStream honours the player's backpressure; a plain add() loop
        // buffers the whole 8 MB chunk in memory while the player sips at it.
        var received = 0;
        await request.response.addStream(
          response.stream.map((bytes) {
            received += bytes.length;
            return bytes;
          }),
        );
        if (received == 0) break;
        position += received;
      }
      await request.response.close();
    } catch (e, st) {
      assert(() {
        // ignore: avoid_print
        print('[proxy] $e\n$st');
        return true;
      }());
      // Either upstream failed or the player hung up mid-stream; close
      // quietly, the handler has usually already sent its headers.
      try {
        await request.response.close();
      } catch (_) {}
    }
  }

  /// The visionOS client's URLs serve whole ranges, so this is effectively one
  /// upstream request; the loop stays as a safety net in case YouTube starts
  /// capping chunk sizes again.
  static const _chunkSize = 8 * 1024 * 1024;

  Future<http.StreamedResponse> _range(
    AudioFormat format,
    int start,
    int end,
  ) {
    final request = http.Request('GET', Uri.parse(format.url))
      ..headers['user-agent'] = InnerTube.visionUserAgent
      ..headers['range'] = 'bytes=$start-$end'
      ..followRedirects = true;
    return _client.send(request);
  }

  /// Resolves the player's Range header against the known content length.
  static (int, int) parseRange(String? header, int contentLength) {
    final last = contentLength > 0 ? contentLength - 1 : (1 << 31) - 1;
    if (header == null || !header.startsWith('bytes=')) return (0, last);
    final spec = header.substring(6).split(',').first.trim();
    final parts = spec.split('-');
    final start = int.tryParse(parts.first) ?? 0;
    final end = parts.length > 1 ? int.tryParse(parts[1]) : null;
    return (start.clamp(0, last), (end ?? last).clamp(start, last));
  }
}

class _Resolved {
  _Resolved(this.format, this.at);
  final AudioFormat format;
  final DateTime at;

  /// googlevideo URLs are good for about six hours; refresh well before that.
  bool get stale => DateTime.now().difference(at) > const Duration(hours: 3);
}
