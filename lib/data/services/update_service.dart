import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/theme.dart' show kAppVersion;

/// A release newer than the one running.
@immutable
class Update {
  const Update({
    required this.version,
    required this.notes,
    required this.url,
    required this.bytes,
  });

  final String version;
  final String notes;

  /// Direct download for this platform's artifact.
  final String url;
  final int bytes;
}

/// Watches GitHub for a newer TuneBox and fetches it in the background.
///
/// Deliberately quiet: the check is a few kilobytes every three hours and says
/// nothing when there is nothing to say. The download is silent too. The one
/// thing it cannot do quietly is *install* — Android always asks, and an app
/// that could replace itself without asking would be indistinguishable from
/// malware.
class UpdateService {
  UpdateService(this._prefs, {http.Client? client})
    : _client = client ?? http.Client();

  static const _api =
      'https://api.github.com/repos/x1eddy/tunebox/releases/latest';
  static const _channel = MethodChannel('com.brito.tunebox/install');
  static const interval = Duration(hours: 3);

  final SharedPreferences _prefs;
  final http.Client _client;

  final _state = StreamController<Update?>.broadcast();

  /// The update that is downloaded and waiting, if any.
  Stream<Update?> get available => _state.stream;
  Update? current;

  DateTime? get lastCheck {
    final ms = _prefs.getInt('updateLastCheck');
    return ms == null ? null : DateTime.fromMillisecondsSinceEpoch(ms);
  }

  bool get checkedRecently {
    final last = lastCheck;
    return last != null && DateTime.now().difference(last) < interval;
  }

  /// Asks GitHub what the newest release is. Returns null when we are current.
  Future<Update?> check() async {
    await _prefs.setInt(
      'updateLastCheck',
      DateTime.now().millisecondsSinceEpoch,
    );
    final res = await _client
        .get(
          Uri.parse(_api),
          headers: const {'accept': 'application/vnd.github+json'},
        )
        .timeout(const Duration(seconds: 20));
    if (res.statusCode != 200) return null;

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    final tag = (json['tag_name'] as String? ?? '').replaceFirst('v', '');
    if (tag.isEmpty || !isNewer(tag, kAppVersion)) return null;

    // Matched by extension, not by file name, so the release assets can be
    // renamed without breaking the updater.
    final wanted = Platform.isAndroid
        ? '.apk'
        : Platform.isIOS
        ? '.ipa'
        : '.tar.gz';
    for (final asset in (json['assets'] as List? ?? const [])) {
      final a = asset as Map<String, dynamic>;
      final name = a['name'] as String? ?? '';
      if (!name.endsWith(wanted)) continue;
      return Update(
        version: tag,
        notes: json['body'] as String? ?? '',
        url: a['browser_download_url'] as String? ?? '',
        bytes: a['size'] as int? ?? 0,
      );
    }
    return null;
  }

  /// Pulls the release down next to the app's own files.
  Future<File?> download(Update update) async {
    if (update.url.isEmpty) return null;
    final dir = await getApplicationSupportDirectory();
    final file = File('${dir.path}/TuneBox-${update.version}.apk');
    if (file.existsSync() && file.lengthSync() == update.bytes) return file;

    final request = http.Request('GET', Uri.parse(update.url));
    final response = await _client.send(request);
    if (response.statusCode != 200) return null;

    final sink = file.openWrite();
    try {
      await response.stream.pipe(sink);
    } finally {
      await sink.close();
    }
    if (update.bytes > 0 && file.lengthSync() != update.bytes) {
      // A truncated download would fail to install and look like a bug.
      await file.delete();
      return null;
    }
    // Older downloads are dead weight once a newer one lands.
    for (final old in dir.listSync()) {
      if (old is File &&
          old.path.endsWith('.apk') &&
          old.path != file.path) {
        try {
          await old.delete();
        } catch (_) {}
      }
    }
    return file;
  }

  /// One check, and the download if there is one, announcing nothing.
  Future<Update?> checkAndFetch({required bool mayDownload}) async {
    try {
      final update = await check();
      if (update == null) return null;
      if (mayDownload && Platform.isAndroid) {
        final file = await download(update);
        if (file == null) return null;
      }
      current = update;
      if (!_state.isClosed) _state.add(update);
      return update;
    } catch (e) {
      debugPrint('update check failed — $e');
      return null;
    }
  }

  /// Hands the downloaded file to Android's package installer. This is the
  /// step the user sees and confirms; there is no way to skip it, and no
  /// attempt is made to.
  Future<void> install(Update update) async {
    final dir = await getApplicationSupportDirectory();
    final file = File('${dir.path}/TuneBox-${update.version}.apk');
    if (!file.existsSync()) throw StateError('nothing downloaded');
    await _channel.invokeMethod<void>('install', {'path': file.path});
  }

  void dispose() {
    _client.close();
    _state.close();
  }
}

/// True when [candidate] is a later version than [running].
///
/// Plain numeric comparison per part, so 0.10.0 beats 0.9.0 — which a string
/// comparison gets wrong.
bool isNewer(String candidate, String running) {
  List<int> parts(String v) => [
    for (final p in v.split('.').take(3)) int.tryParse(p.trim()) ?? 0,
  ];
  final a = parts(candidate);
  final b = parts(running);
  for (var i = 0; i < 3; i++) {
    final x = i < a.length ? a[i] : 0;
    final y = i < b.length ? b[i] : 0;
    if (x != y) return x > y;
  }
  return false;
}
