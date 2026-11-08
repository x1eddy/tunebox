import 'package:flutter/cupertino.dart' show CupertinoPageTransitionsBuilder;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../state/appearance.dart';

/// Shown on the About row; keep in step with pubspec.
const kAppVersion = '1.0.1';

const kDefaultSeed = Color(0xFF3F5EFB);

/// Corner radius vocabulary. The scale follows the corner style chosen in
/// the Appearance studio; [buildTheme] sets it before anything is laid out.
class R {
  static double scale = 1.0;
  static BorderRadius _r(double v) =>
      BorderRadius.all(Radius.circular(v * scale));

  static BorderRadius get card => _r(16);
  static BorderRadius get tile => _r(10);
  static BorderRadius get sheet =>
      BorderRadius.vertical(top: Radius.circular(28 * scale.clamp(0.5, 1.2)));
  static const pill = BorderRadius.all(Radius.circular(999));
  static BorderRadius get hero => _r(24);
}

/// Scripts the bundled fonts don't cover fall back to the platform's own.
const _fallback = [
  'Roboto',
  'Noto Sans',
  'Noto Sans CJK SC',
  'Noto Sans Arabic',
  'Noto Sans Devanagari',
];

/// A real type scale for the chosen font pair: display face for headings,
/// text face for reading. Weights stay within what is bundled.
TextTheme _typeScale(TextTheme base, FontPair pair, Color color) {
  TextStyle d(double size, FontWeight w, double tracking, double height) =>
      TextStyle(
        fontFamily: pair.display,
        fontFamilyFallback: _fallback,
        fontSize: size,
        fontWeight: w,
        letterSpacing: tracking,
        height: height,
        color: color,
      );
  TextStyle t(double size, FontWeight w, double tracking, double height) =>
      TextStyle(
        fontFamily: pair.text,
        fontFamilyFallback: _fallback,
        fontSize: size,
        fontWeight: w,
        letterSpacing: tracking,
        height: height,
        color: color,
      );
  return base.merge(
    TextTheme(
      displayLarge: d(54, FontWeight.w700, -1.8, 1.02),
      displayMedium: d(44, FontWeight.w700, -1.4, 1.04),
      displaySmall: d(36, FontWeight.w700, -1.0, 1.08),
      headlineLarge: d(32, FontWeight.w700, -0.9, 1.1),
      headlineMedium: d(27, FontWeight.w700, -0.7, 1.12),
      headlineSmall: d(23, FontWeight.w700, -0.5, 1.15),
      titleLarge: d(20, FontWeight.w700, -0.4, 1.2),
      titleMedium: t(16, FontWeight.w600, -0.15, 1.3),
      titleSmall: t(14, FontWeight.w600, -0.05, 1.3),
      bodyLarge: t(16, FontWeight.w400, -0.1, 1.45),
      bodyMedium: t(14, FontWeight.w400, -0.05, 1.45),
      bodySmall: t(12.5, FontWeight.w400, 0, 1.4),
      labelLarge: t(14, FontWeight.w600, 0, 1.2),
      labelMedium: t(12, FontWeight.w600, 0.1, 1.2),
      labelSmall: t(11, FontWeight.w600, 0.2, 1.2),
    ),
  );
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
  Appearance appearance = const Appearance(),
  Color? background,
}) {
  R.scale = appearance.corners.scale;
  final scheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: brightness,
    // The high-contrast variants are part of Material 3 itself, so this keeps
    // the palette coherent instead of hand-darkening colours.
    contrastLevel: highContrast ? 1.0 : 0.0,
    dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
  );
  final dark = brightness == Brightness.dark;
  final surface = dark && pureBlack
      ? Colors.black
      : background ?? scheme.surface;
  // Containers are derived from the surface so a preset's background (warm
  // paper, deep green) carries through every card instead of only the page.
  Color lift(double amount) => Color.lerp(
    surface,
    dark ? Colors.white : scheme.primary,
    amount,
  )!;
  final colors = scheme.copyWith(
    surface: surface,
    surfaceContainerLowest: dark ? Color.lerp(surface, Colors.black, 0.3) : lift(0),
    surfaceContainerLow: lift(dark ? 0.035 : 0.025),
    surfaceContainer: lift(dark ? 0.055 : 0.04),
    surfaceContainerHigh: lift(dark ? 0.08 : 0.06),
    surfaceContainerHighest: lift(dark ? 0.11 : 0.085),
  );

  final base = ThemeData(
    colorScheme: colors,
    useMaterial3: true,
    scaffoldBackgroundColor: surface,
    visualDensity: appearance.density == Density.compact
        ? VisualDensity.compact
        : VisualDensity.standard,
  );

  final transition = reduceMotion
      ? const _NoTransition()
      // The iOS push: the old page slides back with parallax, and an edge
      // swipe drags the new one away again.
      : const CupertinoPageTransitionsBuilder();

  return base.copyWith(
    splashFactory: reduceMotion
        ? NoSplash.splashFactory
        : InkSparkle.splashFactory,
    cardTheme: base.cardTheme.copyWith(
      elevation: 0,
      color: colors.surfaceContainer,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: highContrast
            ? BorderSide(color: scheme.outline)
            : BorderSide.none,
        borderRadius: R.card,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        side: BorderSide(color: scheme.outlineVariant),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
    ),
    switchTheme: SwitchThemeData(
      trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      thumbColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected)
            ? scheme.onPrimary
            : scheme.onSurface.withValues(alpha: 0.75),
      ),
      trackColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected)
            ? scheme.primary
            : scheme.onSurface.withValues(alpha: 0.14),
      ),
      thumbIcon: const WidgetStatePropertyAll(null),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
        selectedBackgroundColor: scheme.primary,
        selectedForegroundColor: scheme.onPrimary,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: colors.surfaceContainerHigh,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: R.hero),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: colors.surfaceContainerHigh,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: R.card),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: R.card),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colors.surfaceContainerHigh,
      border: OutlineInputBorder(
        borderRadius: R.card,
        borderSide: BorderSide.none,
      ),
    ),
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
      titleTextStyle: (appearance.fonts == FontPair.system
              ? base.textTheme.titleLarge
              : _typeScale(base.textTheme, appearance.fonts, colors.onSurface)
                  .headlineSmall)
          ?.copyWith(fontWeight: FontWeight.w700),
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
      labelPadding: EdgeInsets.zero,
      labelTextStyle: WidgetStatePropertyAll(
        base.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 10.5,
        ),
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
      trackHeight: 6,
      year2023: false,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
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
      shape: RoundedRectangleBorder(borderRadius: R.sheet),
      showDragHandle: true,
    ),
    textTheme: _weighted(
      appearance.fonts == FontPair.system
          ? base.textTheme.apply(fontFamilyFallback: _fallback)
          : _typeScale(base.textTheme, appearance.fonts, colors.onSurface),
      boldText ? 1 : 0,
    ),
  );
}
