import 'dart:async';
import 'dart:convert';

import 'dart:io';
import 'dart:isolate';

import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

/// Minimal InnerTube ("YouTube internal API") client.
///
/// `youtube_explode_dart` resolves streams through the watch page and its URLs
/// come back 403. Asking the Android client directly works — but the media URLs
/// only answer to *ranged* requests, which is why playback goes through
/// [StreamProxy] rather than straight to googlevideo.
class InnerTube {
  InnerTube({http.Client? client}) : _client = client ?? _keepAliveClient();

  /// A client that holds its connection open for minutes instead of the 15
  /// seconds Dart defaults to. Every search used to pay a fresh TLS handshake
  /// (a few hundred milliseconds on a phone) after a short pause.
  static http.Client _keepAliveClient() => IOClient(
    HttpClient()
      ..idleTimeout = const Duration(minutes: 3)
      ..connectionTimeout = const Duration(seconds: 10),
  );

  /// Opens the connection to YouTube Music ahead of the first search.
  Future<void> warmUp() async {
    try {
      await _client
          .head(Uri.parse('https://music.youtube.com/'))
          .timeout(const Duration(seconds: 8));
    } catch (_) {
      // purely an optimisation
    }
  }

  final http.Client _client;

  /// The visionOS client is the one YouTube still serves full media to —
  /// the Android and iOS clients cap every stream at roughly 1 MB, and the web
  /// clients no longer hand out stream URLs at all. This mirrors what yt-dlp
  /// sends.
  static const visionUserAgent =
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_7_3) AppleWebKit/605.1.15 '
      '(KHTML, like Gecko) Version/26.0 Safari/605.1.15';
  static const androidUserAgent =
      'com.google.android.youtube/20.10.38 (Linux; U; Android 11) gzip';
  static const _webUserAgent =
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 '
      '(KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36';
  static const _musicVersion = '1.20240403.01.00';
  static const _visionVersion = '1.02';
  static const _androidVersion = '20.10.38';

  String? _visitorData;
  DateTime? _visitorFetchedAt;
  int? _signatureTimestamp;

  /// YouTube's visitor id.
  ///
  /// `sw.js_data` is a few kilobytes and carries it; the home page carries it
  /// too but weighs a megabyte and a half, which is a visible stall on a phone.
  /// The signature timestamp only lives on the home page, so that fetch happens
  /// in the background and a known-good default covers the first call.
  Future<String?> visitorData() async {
    final cached = _visitorData;
    if (cached != null &&
        _visitorFetchedAt != null &&
        DateTime.now().difference(_visitorFetchedAt!) < const Duration(hours: 6)) {
      return cached;
    }
    try {
      final res = await _client
          .get(
            Uri.parse('https://www.youtube.com/sw.js_data'),
            headers: const {
              'user-agent': _webUserAgent,
              'accept-language': 'en-US,en',
            },
          )
          .timeout(const Duration(seconds: 8));
      final match = RegExp(r'"(C[\w-]{10,}%3D%3D|C[\w+/=%-]{20,})"')
          .firstMatch(res.body);
      final found = match?.group(1);
      if (found != null) {
        _visitorData = Uri.decodeComponent(found);
        _visitorFetchedAt = DateTime.now();
        unawaited(_warmSignatureTimestamp());
        return _visitorData;
      }
    } catch (_) {
      // fall through to the home page
    }
    return _visitorFromHomePage();
  }

  /// Whatever we already know, without waiting on the network.
  String get cachedVisitorData => _visitorData ?? '';

  Future<String?> _visitorFromHomePage() async {
    try {
      final res = await _client
          .get(
            Uri.parse('https://www.youtube.com/'),
            headers: const {
              'user-agent': _webUserAgent,
              'accept-language': 'en-US,en',
            },
          )
          .timeout(const Duration(seconds: 15));
      final sts = RegExp(r'"STS":(\d+)').firstMatch(res.body);
      if (sts != null) _signatureTimestamp = int.tryParse(sts.group(1)!);
      final match = RegExp(r'"visitorData":"(.*?)"').firstMatch(res.body);
      if (match == null) return null;
      _visitorData = jsonDecode('"${match.group(1)}"') as String;
      _visitorFetchedAt = DateTime.now();
      return _visitorData;
    } catch (_) {
      return null;
    }
  }

  /// The player call needs YouTube's signature timestamp; fetch it off the
  /// critical path and fall back to a known-good value until it lands.
  Future<void> _warmSignatureTimestamp() async {
    if (_signatureTimestamp != null) return;
    try {
      final res = await _client
          .get(
            Uri.parse('https://www.youtube.com/iframe_api'),
            headers: const {'user-agent': _webUserAgent},
          )
          .timeout(const Duration(seconds: 10));
      final player = RegExp(r'/s/player/([\w]+)/').firstMatch(res.body);
      if (player == null) return;
      final js = await _client
          .get(
            Uri.parse(
              'https://www.youtube.com/s/player/${player.group(1)}'
              '/player_ias.vflset/en_US/base.js',
            ),
            headers: const {'user-agent': _webUserAgent},
          )
          .timeout(const Duration(seconds: 20));
      final sts = RegExp(r'signatureTimestamp[:=](\d+)').firstMatch(js.body);
      if (sts != null) _signatureTimestamp = int.tryParse(sts.group(1)!);
    } catch (_) {
      // the default covers us
    }
  }

  /// Searches **YouTube Music**, not YouTube.
  ///
  /// music.youtube.com only ever indexes music, so a query like "one" comes
  /// back as songs instead of MMA livestreams and basketball games. The song
  /// filter answers with video ids, so playback and downloads are unchanged.
  Future<List<VideoItem>> musicSearch(String query, {int max = 30}) async {
    final res = await _client
        .post(
          Uri.parse(
            'https://music.youtube.com/youtubei/v1/search?prettyPrint=false',
          ),
          headers: {
            'content-type': 'application/json',
            'user-agent': _webUserAgent,
            'origin': 'https://music.youtube.com',
            'referer': 'https://music.youtube.com/',
            'x-youtube-client-name': '67',
            'x-youtube-client-version': _musicVersion,
          },
          body: jsonEncode({
            'context': {
              'client': {
                'clientName': 'WEB_REMIX',
                'clientVersion': _musicVersion,
                'hl': 'en',
                'gl': 'US',
              },
            },
            'query': query,
            // "Songs" filter — no albums, artists, playlists or podcasts.
            'params': 'EgWKAQIIAWoKEAoQAxAEEAkQBQ%3D%3D',
          }),
        )
        .timeout(const Duration(seconds: 20));

    if (res.statusCode != 200) {
      throw InnerTubeException('music search returned HTTP ${res.statusCode}');
    }
    // The response is a few hundred kilobytes of JSON; decoding it on the UI
    // isolate is a visible hitch on a phone.
    final body = res.bodyBytes;
    return Isolate.run(() {
      final json = jsonDecode(utf8.decode(body));
      final out = <VideoItem>[];
      _collectMusicRows(json, out, <String>{}, max);
      return out;
    });
  }

  /// The radio queue YouTube Music builds around one song — the music-only
  /// equivalent of "related videos".
  Future<List<VideoItem>> musicRadio(String videoId, {int max = 25}) async {
    final res = await _client
        .post(
          Uri.parse(
            'https://music.youtube.com/youtubei/v1/next?prettyPrint=false',
          ),
          headers: {
            'content-type': 'application/json',
            'user-agent': _webUserAgent,
            'origin': 'https://music.youtube.com',
            'x-youtube-client-name': '67',
            'x-youtube-client-version': _musicVersion,
          },
          body: jsonEncode({
            'context': {
              'client': {
                'clientName': 'WEB_REMIX',
                'clientVersion': _musicVersion,
                'hl': 'en',
                'gl': 'US',
              },
            },
            'videoId': videoId,
            'playlistId': 'RDAMVM$videoId',
            'isAudioOnly': true,
          }),
        )
        .timeout(const Duration(seconds: 20));

    if (res.statusCode != 200) {
      throw InnerTubeException('music radio returned HTTP ${res.statusCode}');
    }
    final json = jsonDecode(utf8.decode(res.bodyBytes));
    final out = <VideoItem>[];
    final seen = <String>{videoId};
    _collectPanelVideos(json, out, seen, max);
    return out;
  }

  /// Album and release year for one song.
  ///
  /// The watch queue's first entry is the song itself, and YouTube Music spells
  /// its byline "Artist • Album • 1988" — the only place a year is on offer.
  Future<VideoItem?> songInfo(String videoId) async {
    final res = await _client
        .post(
          Uri.parse(
            'https://music.youtube.com/youtubei/v1/next?prettyPrint=false',
          ),
          headers: {
            'content-type': 'application/json',
            'user-agent': _webUserAgent,
            'origin': 'https://music.youtube.com',
            'x-youtube-client-name': '67',
            'x-youtube-client-version': _musicVersion,
          },
          body: jsonEncode({
            'context': {
              'client': {
                'clientName': 'WEB_REMIX',
                'clientVersion': _musicVersion,
                'hl': 'en',
                'gl': 'US',
              },
            },
            'videoId': videoId,
            'playlistId': 'RDAMVM$videoId',
            'isAudioOnly': true,
          }),
        )
        .timeout(const Duration(seconds: 15));
    if (res.statusCode != 200) return null;
    final json = jsonDecode(utf8.decode(res.bodyBytes));
    final out = <VideoItem>[];
    _collectPanelVideos(json, out, <String>{}, 4);
    for (final item in out) {
      if (item.id == videoId) return item;
    }
    return null;
  }

  /// Walks a YouTube Music response for song rows.
  static void _collectMusicRows(
    Object? node,
    List<VideoItem> out,
    Set<String> seen,
    int max,
  ) {
    if (out.length >= max) return;
    if (node is List) {
      for (final child in node) {
        _collectMusicRows(child, out, seen, max);
      }
      return;
    }
    if (node is! Map) return;

    final renderer = node['musicResponsiveListItemRenderer'];
    if (renderer is Map) {
      final item = VideoItem.parseMusicRow(renderer.cast<String, dynamic>());
      if (item != null && seen.add(item.id)) {
        out.add(item);
        if (out.length >= max) return;
      }
    }
    for (final child in node.values) {
      _collectMusicRows(child, out, seen, max);
    }
  }

  /// Walks a radio response for queue entries.
  static void _collectPanelVideos(
    Object? node,
    List<VideoItem> out,
    Set<String> seen,
    int max,
  ) {
    if (out.length >= max) return;
    if (node is List) {
      for (final child in node) {
        _collectPanelVideos(child, out, seen, max);
      }
      return;
    }
    if (node is! Map) return;

    final renderer = node['playlistPanelVideoRenderer'];
    if (renderer is Map) {
      final item = VideoItem.parse(renderer.cast<String, dynamic>());
      if (item != null && seen.add(item.id)) {
        out.add(item);
        if (out.length >= max) return;
      }
    }
    for (final child in node.values) {
      _collectPanelVideos(child, out, seen, max);
    }
  }

  /// Search through InnerTube's JSON endpoint.
  ///
  /// `youtube_explode_dart` scrapes the HTML search page, which costs a couple
  /// of megabytes and half a minute of parsing on a slow phone. This is a
  /// compact JSON call that parses in milliseconds.
  Future<List<VideoItem>> search(String query, {int max = 30}) async {
    // Use the visitor id only if we already have one; fetching it here would
    // put a network round-trip in front of every search.
    final visitor = cachedVisitorData;
    if (visitor.isEmpty) unawaited(visitorData());
    final res = await _client
        .post(
          Uri.parse('https://www.youtube.com/youtubei/v1/search?prettyPrint=false'),
          headers: {
            'content-type': 'application/json',
            'user-agent': androidUserAgent,
            'x-youtube-client-name': '3',
            'x-youtube-client-version': _androidVersion,
            if (visitor.isNotEmpty) 'x-goog-visitor-id': visitor,
          },
          body: jsonEncode({
            'context': {
              'client': {
                'clientName': 'ANDROID',
                'clientVersion': _androidVersion,
                'androidSdkVersion': 30,
                'hl': 'en',
                'gl': 'US',
                if (visitor.isNotEmpty) 'visitorData': visitor,
              },
            },
            'query': query,
            // "songs & videos" filter: skips channels, playlists and shorts.
            'params': 'EgIQAQ%3D%3D',
          }),
        )
        .timeout(const Duration(seconds: 20));

    if (res.statusCode != 200) {
      throw InnerTubeException('search returned HTTP ${res.statusCode}');
    }
    final json = jsonDecode(utf8.decode(res.bodyBytes));
    final out = <VideoItem>[];
    final seen = <String>{};
    _collectVideos(json, out, seen, max);
    return out;
  }

  /// Walks the response for `videoRenderer` nodes, in the order they appear.
  static void _collectVideos(
    Object? node,
    List<VideoItem> out,
    Set<String> seen,
    int max,
  ) {
    if (out.length >= max) return;
    if (node is List) {
      for (final child in node) {
        _collectVideos(child, out, seen, max);
      }
      return;
    }
    if (node is! Map) return;

    final renderer = node['videoRenderer'] ?? node['compactVideoRenderer'];
    if (renderer is Map) {
      final item = VideoItem.parse(renderer.cast<String, dynamic>());
      if (item != null && seen.add(item.id)) {
        out.add(item);
        if (out.length >= max) return;
      }
    }
    for (final child in node.values) {
      _collectVideos(child, out, seen, max);
    }
  }

  /// Asks YouTube for a video's streams. The visionOS client is the one that
  /// still hands over whole files; Android answers for metadata when it does
  /// not.
  Future<PlayerResult> player(String videoId, {String? poToken}) async {
    Object? lastError;
    for (final client in const [_Client.vision, _Client.android]) {
      try {
        final result = await _playerAs(client, videoId, poToken: poToken);
        if (result.playable) return result;
        lastError = InnerTubeException(
          result.reason ?? 'not playable (${result.status})',
        );
      } catch (e) {
        lastError = e;
      }
    }
    throw lastError is InnerTubeException
        ? lastError
        : InnerTubeException('$lastError');
  }

  Future<PlayerResult> _playerAs(
    _Client client,
    String videoId, {
    String? poToken,
  }) async {
    final visitor = await visitorData() ?? '';
    final vision = client == _Client.vision;

    final context = vision
        ? <String, Object?>{
            'clientName': 'VISIONOS',
            'clientVersion': _visionVersion,
            'deviceMake': 'Apple',
            'deviceModel': 'RealityDevice17,1',
            'userAgent': visionUserAgent,
            'osName': 'visionOS',
            'osVersion': '26.5.23O471',
            'hl': 'en',
            'timeZone': 'UTC',
            'utcOffsetMinutes': 0,
          }
        : <String, Object?>{
            'clientName': 'ANDROID',
            'clientVersion': _androidVersion,
            'androidSdkVersion': 30,
            'hl': 'en',
            'gl': 'US',
            'osName': 'Android',
            'osVersion': '11',
            if (visitor.isNotEmpty) 'visitorData': visitor,
          };

    final body = <String, Object?>{
      'context': {'client': context},
      'videoId': videoId,
      'contentCheckOk': true,
      'racyCheckOk': true,
      if (vision)
        'playbackContext': {
          'contentPlaybackContext': {
            'html5Preference': 'HTML5_PREF_WANTS',
            'signatureTimestamp': _signatureTimestamp ?? 20711,
          },
        },
      if (poToken != null) 'serviceIntegrityDimensions': {'poToken': poToken},
    };

    final res = await _client
        .post(
          Uri.parse('https://www.youtube.com/youtubei/v1/player?prettyPrint=false'),
          headers: {
            'content-type': 'application/json',
            'user-agent': vision ? visionUserAgent : androidUserAgent,
            'x-youtube-client-name': vision ? '101' : '3',
            'x-youtube-client-version':
                vision ? _visionVersion : _androidVersion,
            'origin': 'https://www.youtube.com',
            if (visitor.isNotEmpty) 'x-goog-visitor-id': visitor,
            'cookie': 'PREF=hl=en&tz=UTC; SOCS=CAI',
          },
          body: jsonEncode(body),
        )
        .timeout(const Duration(seconds: 20));

    if (res.statusCode != 200) {
      throw InnerTubeException('player returned HTTP ${res.statusCode}');
    }
    return PlayerResult.parse(
      jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>,
    );
  }

  void dispose() => _client.close();
}

enum _Client { vision, android }

class InnerTubeException implements Exception {
  InnerTubeException(this.message);
  final String message;
  @override
  String toString() => 'InnerTubeException: $message';
}

class PlayerResult {
  PlayerResult({
    required this.status,
    required this.reason,
    required this.title,
    required this.author,
    required this.durationMs,
    required this.keywords,
    required this.formats,
  });

  final String status;
  final String? reason;
  final String title;
  final String author;
  final int durationMs;
  final List<String> keywords;
  final List<AudioFormat> formats;

  bool get playable => status == 'OK' && formats.isNotEmpty;

  /// Highest bitrate at or below [maxKbps] (0 = best available).
  AudioFormat? best({int maxKbps = 0}) {
    if (formats.isEmpty) return null;
    // AAC (m4a) first: every Android and iOS decoder handles it cleanly. The
    // Opus-in-WebM files drifted, sped up and skipped on the phone.
    final sorted = [...formats]
      ..sort((a, b) {
        final aac = (b.mimeType.contains('mp4') ? 1 : 0) -
            (a.mimeType.contains('mp4') ? 1 : 0);
        return aac != 0 ? aac : b.bitrate.compareTo(a.bitrate);
      });
    if (maxKbps > 0) {
      final fit = sorted.where((f) => f.bitrate <= maxKbps * 1000).toList();
      if (fit.isNotEmpty) return fit.first;
      // nothing under the cap: the smallest AAC rather than the biggest file
      final aac = sorted.where((f) => f.mimeType.contains('mp4')).toList();
      if (aac.isNotEmpty) return aac.last;
    }
    return sorted.first;
  }

  static PlayerResult parse(Map<String, dynamic> json) {
    final playability = json['playabilityStatus'] as Map<String, dynamic>?;
    final details = json['videoDetails'] as Map<String, dynamic>?;
    final streaming = json['streamingData'] as Map<String, dynamic>?;
    final adaptive =
        (streaming?['adaptiveFormats'] as List?)?.cast<Map<String, dynamic>>() ??
        const [];

    final formats = <AudioFormat>[];
    for (final f in adaptive) {
      final mime = f['mimeType'] as String? ?? '';
      final url = f['url'] as String?;
      if (!mime.startsWith('audio/') || url == null) continue;
      formats.add(
        AudioFormat(
          url: url,
          itag: f['itag'] as int? ?? 0,
          bitrate: f['bitrate'] as int? ?? 0,
          mimeType: mime.split(';').first,
          contentLength: int.tryParse('${f['contentLength'] ?? 0}') ?? 0,
        ),
      );
    }

    return PlayerResult(
      status: playability?['status'] as String? ?? 'UNKNOWN',
      reason: playability?['reason'] as String?,
      title: details?['title'] as String? ?? '',
      author: details?['author'] as String? ?? '',
      durationMs:
          (int.tryParse('${details?['lengthSeconds'] ?? 0}') ?? 0) * 1000,
      keywords:
          (details?['keywords'] as List?)?.map((e) => '$e').toList() ?? const [],
      formats: formats,
    );
  }
}

/// A search hit, flattened out of InnerTube's renderer soup.
class VideoItem {
  const VideoItem({
    required this.id,
    required this.title,
    required this.author,
    required this.durationMs,
    required this.thumbnailUrl,
    this.album = '',
    this.year,
  });

  final String id;
  final String title;
  final String author;
  final int durationMs;
  final String thumbnailUrl;
  final String album;

  /// Release year, when YouTube Music tells us one.
  final int? year;

  static VideoItem? parse(Map<String, dynamic> r) {
    final id = r['videoId'] as String?;
    if (id == null || id.isEmpty) return null;

    String text(Object? node) {
      if (node is Map) {
        final simple = node['simpleText'];
        if (simple is String) return simple;
        final runs = node['runs'];
        if (runs is List) {
          return runs
              .map((run) => (run as Map)['text']?.toString() ?? '')
              .join();
        }
      }
      return '';
    }

    final title = text(r['title']);
    if (title.isEmpty) return null;

    var author = text(r['longBylineText']).isNotEmpty
        ? text(r['longBylineText'])
        : text(r['ownerText']).isNotEmpty
        ? text(r['ownerText'])
        : text(r['shortBylineText']);
    // Music rows read "Metallica • Ride The Lightning • 1984"; plain YouTube
    // rows are just the channel name.
    var album = '';
    int? year;
    final byline = [
      for (final part in author.split('\u2022')) part.trim(),
    ]..removeWhere((p) => p.isEmpty);
    if (byline.length > 1) {
      author = byline.first;
      // "Metallica • Ride The Lightning • 1984", but also
      // "Empire Of The Sun • 258M views" — a play count is not an album.
      for (final part in byline.skip(1)) {
        final asYear = yearOf(part);
        if (asYear != null) {
          year = asYear;
        } else if (album.isEmpty && !isStat(part) && !isDuration(part)) {
          album = part;
        }
      }
    }

    return VideoItem(
      id: id,
      title: title,
      author: author,
      album: album,
      year: year,
      durationMs: _parseDuration(text(r['lengthText'])),
      thumbnailUrl: 'https://i.ytimg.com/vi/$id/mqdefault.jpg',
    );
  }

  /// "258M views", "1.2B plays" — a statistic, not an album.
  static bool isStat(String text) => RegExp(
    r'^[\d.,]+\s*[KMB]?\s*'
    r'(views?|plays?|likes?|subscribers?|listeners?|followers?)$',
    caseSensitive: false,
  ).hasMatch(text.trim());

  /// "3:45" or "1:02:11".
  static bool isDuration(String text) =>
      RegExp(r'^\d+:\d{2}(:\d{2})?$').hasMatch(text.trim());

  /// "1984" -> 1984, anything else -> null.
  static int? yearOf(String text) {
    final year = int.tryParse(text.trim());
    if (year == null || year < 1900 || year > 2100) return null;
    return year;
  }

  /// The row shape YouTube Music search returns.
  static VideoItem? parseMusicRow(Map<String, dynamic> r) {
    String runsText(Object? node) {
      if (node is Map) {
        final runs = node['runs'];
        if (runs is List) {
          return runs.map((run) => (run as Map)['text']?.toString() ?? '').join();
        }
        final simple = node['simpleText'];
        if (simple is String) return simple;
      }
      return '';
    }

    final columns = (r['flexColumns'] as List?) ?? const [];
    Map<String, dynamic>? column(int i) {
      if (i >= columns.length) return null;
      final c = (columns[i] as Map)['musicResponsiveListItemFlexColumnRenderer'];
      return c is Map ? c.cast<String, dynamic>() : null;
    }

    final title = runsText(column(0)?['text']).trim();
    if (title.isEmpty) return null;

    var id = (r['playlistItemData'] as Map?)?['videoId'] as String?;
    id ??= _findVideoId(r);
    if (id == null || id.isEmpty) return null;

    // Second column reads "Artist • Album • 3:45", separators included.
    final runs = (column(1)?['text'] as Map?)?['runs'] as List? ?? const [];
    // "Daft Punk", ", ", "Pharrell Williams", " • ", "Random Access Memories":
    // the commas between co-artists are not separators of their own, so group
    // the runs between bullets instead of treating each run as a field.
    final parts = <String>[];
    var current = StringBuffer();
    void flush() {
      final text = current.toString().trim();
      if (text.isNotEmpty) parts.add(text);
      current = StringBuffer();
    }
    for (final run in runs) {
      final text = (run as Map)['text']?.toString() ?? '';
      if (text.trim() == '•' || text.trim() == '\u2022') {
        flush();
      } else {
        current.write(text);
      }
    }
    flush();

    var duration = 0;
    var artist = '';
    var album = '';
    int? year;
    for (final part in parts) {
      if (isDuration(part)) {
        duration = _parseDuration(part);
        continue;
      }
      if (isStat(part)) continue;
      final asYear = yearOf(part);
      if (asYear != null) {
        year = asYear;
      } else if (artist.isEmpty) {
        // lead artist only: the taste weights are keyed by it
        artist = part.split(RegExp(r',\s|\s&\s')).first.trim();
      } else if (album.isEmpty) {
        album = part;
      }
    }

    return VideoItem(
      id: id,
      title: title,
      author: artist,
      album: album,
      year: year,
      durationMs: duration,
      thumbnailUrl: 'https://i.ytimg.com/vi/$id/mqdefault.jpg',
    );
  }

  /// First `watchEndpoint.videoId` anywhere under [node].
  static String? _findVideoId(Object? node) {
    if (node is List) {
      for (final child in node) {
        final found = _findVideoId(child);
        if (found != null) return found;
      }
      return null;
    }
    if (node is! Map) return null;
    final watch = node['watchEndpoint'];
    if (watch is Map && watch['videoId'] is String) {
      return watch['videoId'] as String;
    }
    for (final child in node.values) {
      final found = _findVideoId(child);
      if (found != null) return found;
    }
    return null;
  }

  static int _parseDuration(String text) {
    if (text.isEmpty) return 0;
    final parts = text.split(':').map(int.tryParse).toList();
    if (parts.any((p) => p == null)) return 0;
    var seconds = 0;
    for (final part in parts) {
      seconds = seconds * 60 + part!;
    }
    return seconds * 1000;
  }
}

class AudioFormat {
  const AudioFormat({
    required this.url,
    required this.itag,
    required this.bitrate,
    required this.mimeType,
    required this.contentLength,
  });

  final String url;
  final int itag;
  final int bitrate;
  final String mimeType;
  final int contentLength;

  String get extension => mimeType.contains('webm') ? 'webm' : 'm4a';
  int get kbps => (bitrate / 1000).round();
}
