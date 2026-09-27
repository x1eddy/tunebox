import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Shown on the About row; keep in step with pubspec.
const kAppVersion = '0.5.0';

const kDefaultSeed = Color(0xFF3F5EFB);

/// Corner radius vocabulary — OpenTune leans on big, soft rounding.
class R {
  static const card = BorderRadius.all(Radius.circular(14));
  static const tile = BorderRadius.all(Radius.circular(10));
  static const sheet = BorderRadius.vertical(top: Radius.circular(28));
  static const pill = BorderRadius.all(Radius.circular(999));
  static const hero = BorderRadius.all(Radius.circular(22));
}

/// "Bold text" is an accessibility setting on both platforms; this is the
/// same idea applied inside the app. `TextTheme.apply` cannot shift weight,
/// only `TextStyle.apply` can, so every style is walked.
TextTheme _weighted(TextTheme t, int delta) {
  if (delta == 0) return t;
  TextStyle? w(TextStyle? s) => s?.apply(fontWeightDelta: delta);
  return TextTheme(
    displayLarge: w(t.displayLarge),
    displayMedium: w(t.displayMedium),
    displaySmall: w(t.displaySmall),
    headlineLarge: w(t.headlineLarge),
    headlineMedium: w(t.headlineMedium),
    headlineSmall: w(t.headlineSmall),
    titleLarge: w(t.titleLarge),
    titleMedium: w(t.titleMedium),
    titleSmall: w(t.titleSmall),
    bodyLarge: w(t.bodyLarge),
    bodyMedium: w(t.bodyMedium),
    bodySmall: w(t.bodySmall),
    labelLarge: w(t.labelLarge),
    labelMedium: w(t.labelMedium),
    labelSmall: w(t.labelSmall),
  );
}

/// A page transition that simply swaps, for "reduce motion".
class _NoTransition extends PageTransitionsBuilder {
  const _NoTransition();
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => child;
}

ThemeData buildTheme({
  required Color seed,
  required Brightness brightness,
  bool pureBlack = false,
  bool highContrast = false,
  bool boldText = false,
  bool reduceMotion = false,
}) {
  final scheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: brightness,
    // The high-contrast variants are part of Material 3 itself, so this keeps
    // the palette coherent instead of hand-darkening colours.
    contrastLevel: highContrast ? 1.0 : 0.0,
  );
  final dark = brightness == Brightness.dark;
  final surface = dark && pureBlack ? Colors.black : scheme.surface;

  final base = ThemeData(
    colorScheme: scheme.copyWith(surface: surface),
    useMaterial3: true,
    scaffoldBackgroundColor: surface,
  );

  final transition = reduceMotion
      ? const _NoTransition()
      : const FadeForwardsPageTransitionsBuilder();

  return base.copyWith(
    splashFactory: reduceMotion
        ? NoSplash.splashFactory
        : InkSparkle.splashFactory,
    cardTheme: highContrast
        ? base.cardTheme.copyWith(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: scheme.outline),
              borderRadius: R.card,
            ),
          )
        : base.cardTheme,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: transition,
        TargetPlatform.iOS: transition,
        TargetPlatform.linux: transition,
        TargetPlatform.windows: transition,
        TargetPlatform.macOS: transition,
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
      color: highContrast
          ? scheme.outline
          : scheme.onSurface.withValues(alpha: 0.08),
      space: 1,
      thickness: 1,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: scheme.surfaceContainerLow,
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(borderRadius: R.sheet),
      showDragHandle: true,
    ),
    textTheme: _weighted(
      base.textTheme.apply(fontFamilyFallback: const ['Roboto']),
      boldText ? 2 : 0,
    ),
  );
}
