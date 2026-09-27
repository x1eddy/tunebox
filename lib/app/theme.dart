import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Shown on the About row; keep in step with pubspec.
const kAppVersion = '0.3.0';

const kDefaultSeed = Color(0xFF3F5EFB);

/// Corner radius vocabulary — OpenTune leans on big, soft rounding.
class R {
  static const card = BorderRadius.all(Radius.circular(14));
  static const tile = BorderRadius.all(Radius.circular(10));
  static const sheet = BorderRadius.vertical(top: Radius.circular(28));
  static const pill = BorderRadius.all(Radius.circular(999));
  static const hero = BorderRadius.all(Radius.circular(22));
}

ThemeData buildTheme({
  required Color seed,
  required Brightness brightness,
  bool pureBlack = false,
}) {
  final scheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: brightness,
  );
  final dark = brightness == Brightness.dark;
  final surface = dark && pureBlack ? Colors.black : scheme.surface;

  final base = ThemeData(
    colorScheme: scheme.copyWith(surface: surface),
    useMaterial3: true,
    scaffoldBackgroundColor: surface,
  );

  return base.copyWith(
    splashFactory: InkSparkle.splashFactory,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeForwardsPageTransitionsBuilder(),
        TargetPlatform.linux: FadeForwardsPageTransitionsBuilder(),
        TargetPlatform.windows: FadeForwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: FadeForwardsPageTransitionsBuilder(),
      },
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: surface,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      centerTitle: false,
      systemOverlayStyle: dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      titleTextStyle: base.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
        letterSpacing: -0.4,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: dark && pureBlack
          ? Colors.black
          : ElevationOverlay.applySurfaceTint(surface, scheme.surfaceTint, 2),
      surfaceTintColor: Colors.transparent,
      indicatorColor: scheme.secondaryContainer,
      elevation: 0,
      height: 68,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      labelTextStyle: WidgetStatePropertyAll(
        base.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      visualDensity: VisualDensity(vertical: -1),
    ),
    chipTheme: base.chipTheme.copyWith(
      side: BorderSide.none,
      shape: const RoundedRectangleBorder(borderRadius: R.pill),
      backgroundColor: scheme.surfaceContainerHighest,
      selectedColor: scheme.secondaryContainer,
      labelStyle: base.textTheme.labelLarge,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
    ),
    sliderTheme: base.sliderTheme.copyWith(
      trackHeight: 4,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 18),
      inactiveTrackColor: scheme.onSurface.withValues(alpha: 0.18),
    ),
    dividerTheme: DividerThemeData(
      color: scheme.onSurface.withValues(alpha: 0.08),
      space: 1,
      thickness: 1,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: scheme.surfaceContainerLow,
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(borderRadius: R.sheet),
      showDragHandle: true,
    ),
    textTheme: base.textTheme.apply(fontFamilyFallback: const ['Roboto']),
  );
}
