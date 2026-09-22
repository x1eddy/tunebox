import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

/// Keeps cover art on disk so downloaded and imported songs stay pretty offline.
class ArtworkService {
  Directory? _dir;

  Future<Directory> _artDir() async {
    if (_dir != null) return _dir!;
    final base = await getApplicationSupportDirectory();
    final dir = Directory('${base.path}/artwork');
    if (!dir.existsSync()) dir.createSync(recursive: true);
    return _dir = dir;
  }

  Future<String?> saveBytes(String songId, Uint8List bytes) async {
    if (bytes.isEmpty) return null;
    final dir = await _artDir();
    final file = File('${dir.path}/${_safe(songId)}.jpg');
    await file.writeAsBytes(bytes, flush: true);
    return file.path;
  }

  Future<String?> cacheRemote(String songId, String? url) async {
    if (url == null || url.isEmpty) return null;
    final dir = await _artDir();
    final file = File('${dir.path}/${_safe(songId)}.jpg');
    if (file.existsSync() && file.lengthSync() > 0) return file.path;
    try {
      final res = await http.get(Uri.parse(url));
      if (res.statusCode != 200 || res.bodyBytes.isEmpty) return null;
      await file.writeAsBytes(res.bodyBytes, flush: true);
      return file.path;
    } catch (_) {
      return null;
    }
  }

  Future<void> remove(String songId) async {
    final dir = await _artDir();
    final file = File('${dir.path}/${_safe(songId)}.jpg');
    if (file.existsSync()) await file.delete();
  }

  String _safe(String id) => id.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '_');
}
