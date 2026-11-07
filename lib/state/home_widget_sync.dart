import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_widget/home_widget.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

import '../data/db/database.dart';
import 'providers.dart';

/// Keeps the Android home-screen widget showing what plays. Writes only
/// when something it shows changes.
final homeWidgetSyncProvider = Provider<void>((ref) {
  if (!Platform.isAndroid) return;
  String? lastKey;
  String? artFor;

  Future<String?> art(Song song) async {
    final local = song.artworkPath;
    if (local != null && File(local).existsSync()) return local;
    final url = song.artworkUrl;
    if (url == null || url.isEmpty) return null;
    final dir = await getApplicationSupportDirectory();
    final file = File('${dir.path}/widget_art.jpg');
    if (artFor == song.id && file.existsSync()) return file.path;
    try {
      final r = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 8));
      if (r.statusCode != 200) return null;
      await file.writeAsBytes(r.bodyBytes, flush: true);
      artFor = song.id;
      return file.path;
    } catch (_) {
      return null;
    }
  }

  Future<void> push() async {
    final song = ref.read(nowPlayingProvider);
    final playing = ref.read(playbackStateProvider).value?.playing ?? false;
    final key = '${song?.id}|$playing';
    if (key == lastKey) return;
    lastKey = key;
    try {
      if (song == null) {
        await HomeWidget.saveWidgetData<String>('title', null);
        await HomeWidget.saveWidgetData<String>('artist', null);
        await HomeWidget.saveWidgetData<String>('art', null);
      } else {
        await HomeWidget.saveWidgetData<String>('title', song.title);
        await HomeWidget.saveWidgetData<String>('artist', song.artist);
        await HomeWidget.saveWidgetData<String>('art', await art(song));
      }
      await HomeWidget.saveWidgetData<bool>('playing', playing);
      await HomeWidget.updateWidget(
        qualifiedAndroidName: 'com.brito.tunebox.TuneBoxWidget',
      );
    } catch (_) {
      // no widget placed, or the launcher is busy: nothing to do
    }
  }

  ref.listen(nowPlayingProvider, (_, _) => unawaited(push()));
  ref.listen(
    playbackStateProvider.select((s) => s.value?.playing ?? false),
    (_, _) => unawaited(push()),
  );
  unawaited(push());
});
