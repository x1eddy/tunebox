import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio_media_kit/just_audio_media_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/router.dart';
import 'app/theme.dart';
import 'data/db/database.dart';
import 'dev/tour.dart';
import 'data/services/innertube.dart';
import 'data/services/yt_service.dart';
import 'playback/audio_handler.dart';
import 'playback/stream_proxy.dart';
import 'state/providers.dart';
import 'state/settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Desktop playback rides on libmpv; on a machine without it the rest of the
  // app still works, so never let this kill startup.
  if (Platform.isLinux || Platform.isWindows) {
    try {
      JustAudioMediaKit.ensureInitialized(linux: true, windows: true);
    } catch (e) {
      debugPrint('Desktop audio unavailable: $e');
    }
  }

  // Cover art is the bulk of what this app draws; a bigger cache means
  // scrolling back up does not re-decode and re-upload every thumbnail. The
  // phone gets a smaller one on purpose: decoded bitmaps are native memory,
  // and an app sitting on a quarter of a gigabyte of them is the first thing
  // Android kills while it is in the background playing music.
  final mobile = Platform.isAndroid || Platform.isIOS;
  PaintingBinding.instance.imageCache
    ..maximumSizeBytes = (mobile ? 96 : 256) << 20
    ..maximumSize = mobile ? 400 : 600;

  final prefs = await SharedPreferences.getInstance();
  final db = AppDatabase();
  final innerTube = InnerTube();
  final yt = YtService(innerTube: innerTube);
  final proxy = StreamProxy(innerTube);
  proxy.onDuration = (videoId, durationMs) => db.patchSong(
    videoId,
    SongsCompanion(durationMs: Value(durationMs)),
  );
  await proxy.start();
  final handler = await _buildHandler(db, proxy);

  runApp(
    ProviderScope(
      overrides: [
        prefsProvider.overrideWithValue(prefs),
        dbProvider.overrideWithValue(db),
        ytProvider.overrideWithValue(yt),
        streamProxyProvider.overrideWithValue(proxy),
        audioHandlerProvider.overrideWithValue(handler),
      ],
      child: const TuneBoxApp(),
    ),
  );
}

Future<TuneBoxAudioHandler> _buildHandler(
  AppDatabase db,
  StreamProxy proxy,
) async {
  if (Platform.isAndroid || Platform.isIOS) {
    return AudioService.init(
      builder: () => TuneBoxAudioHandler(db, proxy),
      config: const AudioServiceConfig(
        androidNotificationChannelId: 'com.brito.tunebox.audio',
        androidNotificationChannelName: 'TuneBox playback',
        androidNotificationIcon: 'drawable/ic_stat_tunebox',
        androidNotificationOngoing: true,
        androidStopForegroundOnPause: true,
      ),
    );
  }
  // Desktop: no media notification service, same handler drives the player.
  return TuneBoxAudioHandler(db, proxy);
}

class TuneBoxApp extends ConsumerStatefulWidget {
  const TuneBoxApp({super.key});

  @override
  ConsumerState<TuneBoxApp> createState() => _TuneBoxAppState();
}

class _TuneBoxAppState extends ConsumerState<TuneBoxApp> {
  @override
  void initState() {
    super.initState();
    // Every finished or skipped listen trains the on-device model.
    final handler = ref.read(audioHandlerProvider);
    handler.reports.listen((report) async {
      final settings = ref.read(settingsProvider);
      await ref.read(aiProvider).learnFromListen(report, settings);
      dropTasteProfileCache();
      ref.invalidate(tasteProfileProvider);
    });
    handler.setSkipSilence(ref.read(settingsProvider).skipSilence);
    if (kTour) startFrameStats();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final seed = ref.watch(seedColorProvider).value ?? settings.accentColor;

    return MaterialApp.router(
      title: 'TuneBox',
      debugShowCheckedModeBanner: false,
      themeMode: settings.themeMode,
      theme: buildTheme(seed: seed, brightness: Brightness.light),
      darkTheme: buildTheme(
        seed: seed,
        brightness: Brightness.dark,
        pureBlack: settings.pureBlack,
      ),
      routerConfig: router,
      builder: (context, child) {
        final themed = AnimatedTheme(
          data: Theme.of(context),
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeOut,
          child: child!,
        );
        return kTour ? TourDriver(child: themed) : themed;
      },
    );
  }
}
