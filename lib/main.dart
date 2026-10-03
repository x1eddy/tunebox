import 'dart:async';
import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio_media_kit/just_audio_media_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/router.dart';
import 'l10n/app_localizations.dart';
import 'app/theme.dart';
import 'data/db/database.dart';
import 'dev/tour.dart';
import 'data/services/innertube.dart';
import 'data/services/yt_service.dart';
import 'playback/audio_handler.dart';
import 'playback/stream_proxy.dart';
import 'state/profiles.dart';
import 'ui/scroll_behavior.dart';
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
    ..maximumSizeBytes = (mobile ? 24 : 256) << 20
    ..maximumSize = mobile ? 120 : 600;
  // Skia keeps up to ~96 MB of GPU resources around by default; on a phone
  // that is most of what the app weighs. A small budget costs a re-upload now
  // and then, not memory the system will come and take back.
  if (Platform.isAndroid) _setGpuCache(12 << 20);

  final prefs = await SharedPreferences.getInstance();
  final innerTube = InnerTube();
  final yt = YtService(innerTube: innerTube);
  final proxy = StreamProxy(innerTube);
  final profiles = ProfileController(prefs: prefs, proxy: proxy)..load();
  profiles.onSwitching = dropTasteProfileCache;
  await proxy.start();
  final handler = await _buildHandler(profiles.db, proxy);
  profiles.handler = handler;

  runApp(
    // Switching profile bumps the generation, which gives the whole provider
    // tree a new key and so rebuilds it against the other profile's database.
    ListenableBuilder(
      listenable: profiles,
      builder: (context, _) => ProviderScope(
        key: ValueKey(profiles.generation),
        overrides: [
          prefsProvider.overrideWithValue(prefs),
          dbProvider.overrideWithValue(profiles.db),
          profilesProvider.overrideWithValue(profiles),
          ytProvider.overrideWithValue(yt),
          streamProxyProvider.overrideWithValue(proxy),
          audioHandlerProvider.overrideWithValue(handler),
        ],
        child: const TuneBoxApp(),
      ),
    ),
  );
}

void _setGpuCache(int bytes) {
  try {
    SystemChannels.skia.invokeMethod<void>(
      'Skia.setResourceCacheMaxBytes',
      bytes,
    );
  } catch (_) {
    // Impeller or a platform without the channel: nothing to tune
  }
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

class _TuneBoxAppState extends ConsumerState<TuneBoxApp>
    with WidgetsBindingObserver {
  StreamSubscription<ListenReport>? _reports;

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _reports?.cancel();
    super.dispose();
  }

  /// A music app spends most of its life in the background, which is exactly
  /// when Android decides who to kill. Nothing on screen needs the decoded
  /// covers or GPU caches then; they are rebuilt on return.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.hidden) {
      final cache = PaintingBinding.instance.imageCache;
      cache.clear();
      cache.clearLiveImages();
      if (Platform.isAndroid) _setGpuCache(8 << 20);
    } else if (state == AppLifecycleState.resumed && Platform.isAndroid) {
      _setGpuCache(12 << 20);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // Every finished or skipped listen trains the on-device model.
    final handler = ref.read(audioHandlerProvider);
    _reports = handler.reports.listen((report) async {
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
    // The switch in Settings only saved the choice; the player kept whatever
    // it was started with until the next launch.
    ref.listen(settingsProvider.select((s) => s.skipSilence), (_, on) {
      ref.read(audioHandlerProvider).setSkipSilence(on);
    });
    final seed = ref.watch(seedColorProvider).value ?? settings.accentColor;

    return MaterialApp.router(
      title: 'TuneBox',
      debugShowCheckedModeBanner: false,
      themeMode: settings.themeMode,
      theme: buildTheme(
        seed: seed,
        brightness: Brightness.light,
        highContrast: settings.highContrast,
        boldText: settings.boldText,
        reduceMotion: settings.reduceMotion,
      ),
      darkTheme: buildTheme(
        seed: seed,
        brightness: Brightness.dark,
        pureBlack: settings.pureBlack,
        highContrast: settings.highContrast,
        boldText: settings.boldText,
        reduceMotion: settings.reduceMotion,
      ),
      locale: localeFromCode(settings.localeCode),
      supportedLocales: L.supportedLocales,
      localizationsDelegates: L.localizationsDelegates,
      routerConfig: router,
      scrollBehavior: TuneBoxScrollBehavior(bouncy: !settings.reduceMotion),
      builder: (context, child) {
        // The accessibility text scale multiplies whatever the system is
        // already asking for, rather than replacing it.
        final media = MediaQuery.of(context);
        var themed = MediaQuery(
          data: media.copyWith(
            textScaler: media.textScaler.clamp(
              minScaleFactor: 0.8,
              maxScaleFactor: 2.0,
            ),
          ),
          child: child!,
        );
        if (settings.textScale != 1.0) {
          themed = MediaQuery(
            data: media.copyWith(
              textScaler: TextScaler.linear(
                media.textScaler.scale(14) / 14 * settings.textScale,
              ),
            ),
            child: child,
          );
        }
        final animated = settings.reduceMotion
            ? Theme(data: Theme.of(context), child: themed)
            : AnimatedTheme(
                data: Theme.of(context),
                duration: const Duration(milliseconds: 450),
                curve: Curves.easeOut,
                child: themed,
              );
        return kTour ? TourDriver(child: animated) : animated;
      },
    );
  }
}
