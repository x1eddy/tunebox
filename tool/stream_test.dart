// ignore_for_file: avoid_print
// Network probe (not in the default suite):
//   flutter test tool/stream_test.dart
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/services/innertube.dart';
import 'package:tunebox/data/services/yt_service.dart';
import 'package:tunebox/playback/stream_proxy.dart';

void main() {
  test('innertube search is quick and well formed', () async {
    final innerTube = InnerTube();
    final watch = Stopwatch()..start();
    final items = await innerTube.search('daft punk', max: 20);
    print('search -> ${items.length} results in ${watch.elapsedMilliseconds}ms');
    for (final item in items.take(3)) {
      print('  ${item.id} · ${item.author} — ${item.title} '
          '(${item.durationMs ~/ 1000}s) ${item.thumbnailUrl}');
    }
    expect(items.length, greaterThan(5));
    expect(items.first.title, isNotEmpty);
    expect(items.first.durationMs, greaterThan(0));
  }, timeout: const Timeout(Duration(minutes: 2)));

  test('innertube resolves audio, proxy serves it, download works', () async {
    final yt = YtService();
    final results = await yt.search('daft punk get lucky', max: 3);
    final videoId = results.first.id.value;
    print('video: ${results.first.title.value} ($videoId)');

    final innerTube = InnerTube();
    final player = await innerTube.player(videoId);
    print('status ${player.status} · "${player.title}" by ${player.author} · '
        '${player.durationMs ~/ 1000}s · ${player.formats.length} audio formats');
    for (final f in player.formats) {
      print('  itag ${f.itag} ${f.mimeType} ${f.kbps}kbps '
          '${(f.contentLength / 1048576).toStringAsFixed(1)}MB');
    }
    expect(player.playable, isTrue);

    // 1. the proxy
    final proxy = StreamProxy(innerTube);
    await proxy.start();
    final client = HttpClient();
    final request = await client.getUrl(proxy.urlFor(videoId));
    request.headers.set(HttpHeaders.rangeHeader, 'bytes=0-300000');
    final response = await request.close();
    var viaProxy = 0;
    await for (final chunk in response) {
      viaProxy += chunk.length;
    }
    print('proxy -> HTTP ${response.statusCode}, $viaProxy bytes, '
        'type ${response.headers.contentType}');
    expect(response.statusCode, anyOf(200, 206));
    expect(viaProxy, greaterThan(100000));

    // 2. a plain GET with no Range, the way a naive player would ask
    final client2 = HttpClient();
    final bare = await client2.getUrl(proxy.urlFor(videoId));
    final bareResponse = await bare.close();
    var bareBytes = 0;
    await for (final chunk in bareResponse) {
      bareBytes += chunk.length;
      if (bareBytes > 200000) break;
    }
    print('proxy (no range header) -> HTTP ${bareResponse.statusCode}, '
        '$bareBytes bytes');
    expect(bareResponse.statusCode, anyOf(200, 206));
    expect(bareBytes, greaterThan(100000));

    // 3. the download path
    final format = await yt.bestAudio(videoId, maxBitrateKbps: 0);
    print('download format: itag ${format.itag} ${format.kbps}kbps '
        '${(format.contentLength / 1048576).toStringAsFixed(1)}MB');
    var downloaded = 0;
    await for (final chunk in yt.download(format)) {
      downloaded += chunk.length;
    }
    print('downloaded $downloaded of ${format.contentLength} bytes');
    expect(downloaded, format.contentLength);

    // 4. a single unchunked range — if this works the proxy can pass through
    final whole = await HttpClient().getUrl(Uri.parse(format.url));
    whole.headers.set(HttpHeaders.userAgentHeader, 'x');
    whole.headers.set(
      HttpHeaders.rangeHeader,
      'bytes=0-${format.contentLength - 1}',
    );
    final wholeResponse = await whole.close();
    var wholeBytes = 0;
    await for (final chunk in wholeResponse) {
      wholeBytes += chunk.length;
    }
    print('single full range -> HTTP ${wholeResponse.statusCode}, '
        '$wholeBytes bytes');

    await proxy.stop();
    client.close(force: true);
    client2.close(force: true);
    yt.dispose();
  }, timeout: const Timeout(Duration(minutes: 5)));
}
