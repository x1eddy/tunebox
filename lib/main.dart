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
import 'state/appearance.dart';
import 'state/gestures.dart';
import 'state/home_widget_sync.dart';
import 'state/lyrics.dart';
import 'state/settings.dart';
import 'state/sound_wiring.dart';
import 'state/sync.dart';

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
  if (Platform.isLinux) {
    // MPRIS: GNOME's media controls, the lock screen and the keyboard's media
    // keys all reach TuneBox. The plugin shows the "channel id" as the
    // player's name, hence the plain one here.
    try {
      return await AudioService.init(
        builder: () => TuneBoxAudioHandler(db, proxy),
        config: const AudioServiceConfig(
          androidNotificationChannelId: 'TuneBox',
          androidNotificationChannelName: 'TuneBox',
        ),
      ).timeout(const Duration(seconds: 5));
    } catch (e) {
      debugPrint('MPRIS unavailable: $e');
    }
  }
  // No media service: the same handler drives the player directly.
  return TuneBoxAudioHandler(db, proxy);
}

/// Building a theme means a full Material colour scheme and type scale;
/// flipping an unrelated switch (Wi-Fi only, smart shuffle…) used to rebuild
/// both themes from scratch. The last ones are kept and reused while their
/// inputs stay the same.
final _themeCache = <String, ThemeData>{};

ThemeData _themeFor({
  required Color seed,
  required Brightness brightness,
  required bool pureBlack,
  required bool highContrast,
  required bool boldText,
  required bool reduceMotion,
  required Appearance appearance,
  Color? background,
}) {
  final key = [
    seed.toARGB32(),
    brightness.name,
    pureBlack,
    highContrast,
    boldText,
    reduceMotion,
    appearance.fonts.name,
    appearance.corners.name,
    appearance.density.name,
    background?.toARGB32(),
  ].join('|');
  final hit = _themeCache[key];
  if (hit != null) return hit;
  if (_themeCache.length > 8) _themeCache.clear();
  return _themeCache[key] = buildTheme(
    seed: seed,
    brightness: brightness,
    pureBlack: pureBlack,
    highContrast: highContrast,
    boldText: boldText,
    reduceMotion: reduceMotion,
    appearance: appearance,
    background: background,
  );
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
      // A blend is someone else's taste too; it teaches nothing unless asked.
      if (report.origin == 'blend' &&
          !(ref.read(prefsProvider).getBool('blendLearns') ?? false)) {
        return;
      }
      await ref.read(aiProvider).learnFromListen(report, settings);
      dropTasteProfileCache();
      ref.invalidate(tasteProfileProvider);
    });
    handler.setSkipSilence(ref.read(settingsProvider).skipSilence);
    ref.read(soundWiringProvider);
    ref.read(lyricsPrefetchProvider);
    ref.read(shakeToSkipProvider);
    ref.read(homeWidgetSyncProvider);
    ref.read(syncTickerProvider);
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
    final look = ref.watch(appearanceProvider);
    final preset = look.themePreset;
    final seed = preset?.seed ??
        ref.watch(seedColorProvider).value ??
        settings.accentColor;
    final themeMode = preset == null
        ? settings.themeMode
        : preset.brightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;
    ThemeData themed(Brightness b) => _themeFor(
      seed: seed,
      brightness: b,
      pureBlack: b == Brightness.dark && settings.pureBlack,
      highContrast: settings.highContrast,
      boldText: settings.boldText,
      reduceMotion: settings.reduceMotion,
      appearance: look,
      background: preset?.brightness == b ? preset?.background : null,
    );

    return MaterialApp.router(
      title: 'TuneBox',
      debugShowCheckedModeBanner: false,
      themeAnimationDuration: settings.reduceMotion
          ? Duration.zero
          : const Duration(milliseconds: 250),
      themeMode: themeMode,
      theme: themed(Brightness.light),
      darkTheme: themed(Brightness.dark),
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
              // still inside the same 0.8–2.4 window as everything else
              textScaler: TextScaler.linear(
                (media.textScaler.scale(14) / 14 * settings.textScale)
                    .clamp(0.8, 2.4),
              ),
            ),
            child: child,
          );
        }
        // MaterialApp already animates theme changes; a second AnimatedTheme
        // here blended the whole theme twice per frame, which is what made
        // flipping a setting stutter.
        return kTour ? TourDriver(child: themed) : themed;
      },
    );
  }
}
