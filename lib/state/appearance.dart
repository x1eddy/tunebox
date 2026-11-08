import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings.dart' show prefsProvider;

/// Display face for titles + text face for everything else, all bundled in
/// assets/fonts so the app looks the same offline and on every platform.
enum FontPair {
  tunebox('Space Grotesk + Inter', 'SpaceGrotesk', 'Inter'),
  editorial('Fraunces + Inter', 'Fraunces', 'Inter'),
  rounded('Nunito', 'Nunito', 'Nunito'),
  mono('JetBrains Mono + Inter', 'JetBrainsMono', 'Inter'),
  system('System', null, null);

  const FontPair(this.label, this.display, this.text);
  final String label;
  final String? display;
  final String? text;
}

enum Corners {
  sharp('Sharp', 0.35),
  soft('Soft', 1.0),
  round('Round', 1.6);

  const Corners(this.label, this.scale);
  final String label;
  final double scale;
}

enum Density { compact, comfy }

enum PlayerStyle {
  classic('Classic'),
  vinyl('Vinyl'),
  fullBleed('Full-bleed'),
  minimal('Minimal'),
  cassette('Cassette');

  const PlayerStyle(this.label);
  final String label;
}

enum VisualizerStyle { bars, wave, mirror, line, dots, off }

enum SeekStyle { line, wave, thick }

/// What a swipe on a song row does.
enum SwipeAction { none, like, queue, download, hide }

/// A ready-made look. [background] overrides the surface for presets that
/// are about more than an accent (Paper, AMOLED, Neon).
class ThemePreset {
  const ThemePreset(
    this.id,
    this.label,
    this.seed,
    this.brightness, {
    this.background,
  });

  final String id;
  final String label;
  final Color seed;
  final Brightness brightness;
  final Color? background;
}

const kThemePresets = <ThemePreset>[
  ThemePreset('midnight', 'Midnight', Color(0xFF3F5EFB), Brightness.dark,
      background: Color(0xFF0E1020)),
  ThemePreset('amoled', 'AMOLED', Color(0xFF8E9BFF), Brightness.dark,
      background: Color(0xFF000000)),
  ThemePreset('paper', 'Paper', Color(0xFF9A6B3F), Brightness.light,
      background: Color(0xFFF6F1E7)),
  ThemePreset('sunset', 'Sunset', Color(0xFFFF6B4A), Brightness.dark,
      background: Color(0xFF1C0F14)),
  ThemePreset('forest', 'Forest', Color(0xFF3FA86B), Brightness.dark,
      background: Color(0xFF0C1712)),
  ThemePreset('neon', 'Neon', Color(0xFFFF2BD6), Brightness.dark,
      background: Color(0xFF0A0614)),
];

ThemePreset? presetById(String id) {
  for (final p in kThemePresets) {
    if (p.id == id) return p;
  }
  return null;
}

/// Everything about how TuneBox looks and responds to touch. Kept apart from
/// [Settings] so it can travel as one small "theme code".
@immutable
class Appearance {
  const Appearance({
    this.fonts = FontPair.tunebox,
    this.corners = Corners.soft,
    this.density = Density.comfy,
    this.player = PlayerStyle.classic,
    this.visualizer = VisualizerStyle.bars,
    this.seek = SeekStyle.wave,
    this.livingBackground = true,
    this.glassNav = true,
    this.navLabels = true,
    this.preset = '',
    this.tabs = kDefaultTabs,
    this.hiddenShelves = const [],
    this.shelfOrder = const [],
    this.swipeLeft = SwipeAction.queue,
    this.swipeRight = SwipeAction.like,
    this.doubleTapLike = true,
    this.shakeToSkip = false,
    this.liveVisualizer = false,
  });

  final FontPair fonts;
  final Corners corners;
  final Density density;
  final PlayerStyle player;
  final VisualizerStyle visualizer;
  final SeekStyle seek;

  /// The slow-moving colour field behind the player and the Home header.
  final bool livingBackground;

  /// Frosted floating navigation; solid when off.
  final bool glassNav;
  final bool navLabels;

  /// Empty means "follow Settings" (artwork or the chosen accent).
  final String preset;

  /// Branch indexes of the bottom tabs, in order. Settings (4) is always
  /// reachable, so it is never removed, only moved.
  final List<int> tabs;

  /// Home shelves by kind name; see `ShelfKind`.
  final List<String> hiddenShelves;
  final List<String> shelfOrder;

  final SwipeAction swipeLeft;
  final SwipeAction swipeRight;
  final bool doubleTapLike;
  final bool shakeToSkip;

  /// Android: drive the visualiser from the real playback instead of an
  /// animation. Needs the record-audio permission (the app's own audio only).
  final bool liveVisualizer;

  static const kDefaultTabs = [0, 1, 2, 3, 4];

  ThemePreset? get themePreset => preset.isEmpty ? null : presetById(preset);

  Appearance copyWith({
    FontPair? fonts,
    Corners? corners,
    Density? density,
    PlayerStyle? player,
    VisualizerStyle? visualizer,
    SeekStyle? seek,
    bool? livingBackground,
    bool? glassNav,
    bool? navLabels,
    String? preset,
    List<int>? tabs,
    List<String>? hiddenShelves,
    List<String>? shelfOrder,
    SwipeAction? swipeLeft,
    SwipeAction? swipeRight,
    bool? doubleTapLike,
    bool? shakeToSkip,
    bool? liveVisualizer,
  }) => Appearance(
    fonts: fonts ?? this.fonts,
    corners: corners ?? this.corners,
    density: density ?? this.density,
    player: player ?? this.player,
    visualizer: visualizer ?? this.visualizer,
    seek: seek ?? this.seek,
    livingBackground: livingBackground ?? this.livingBackground,
    glassNav: glassNav ?? this.glassNav,
    navLabels: navLabels ?? this.navLabels,
    preset: preset ?? this.preset,
    tabs: tabs ?? this.tabs,
    hiddenShelves: hiddenShelves ?? this.hiddenShelves,
    shelfOrder: shelfOrder ?? this.shelfOrder,
    swipeLeft: swipeLeft ?? this.swipeLeft,
    swipeRight: swipeRight ?? this.swipeRight,
    doubleTapLike: doubleTapLike ?? this.doubleTapLike,
    shakeToSkip: shakeToSkip ?? this.shakeToSkip,
    liveVisualizer: liveVisualizer ?? this.liveVisualizer,
  );

  Map<String, Object?> toJson() => {
    'fonts': fonts.name,
    'corners': corners.name,
    'density': density.name,
    'player': player.name,
    'visualizer': visualizer.name,
    'seek': seek.name,
    'living': livingBackground,
    'glass': glassNav,
    'labels': navLabels,
    'preset': preset,
    'tabs': tabs,
    'hidden': hiddenShelves,
    'order': shelfOrder,
    'swipeL': swipeLeft.name,
    'swipeR': swipeRight.name,
    'dtl': doubleTapLike,
    'shake': shakeToSkip,
    'live': liveVisualizer,
  };

  static T _enum<T extends Enum>(List<T> values, Object? name, T fallback) {
    for (final v in values) {
      if (v.name == name) return v;
    }
    return fallback;
  }

  /// Unknown or missing fields fall back to defaults, so codes from newer or
  /// older versions still load.
  static Appearance fromJson(Map<String, dynamic> j) {
    const d = Appearance();
    List<int> tabs = d.tabs;
    final rawTabs = j['tabs'];
    if (rawTabs is List) {
      final parsed = <int>{
        for (final t in rawTabs)
          if (t is int && t >= 0 && t <= 4) t,
      }.toList();
      // Settings must stay reachable and there must be at least two tabs.
      if (!parsed.contains(4)) parsed.add(4);
      if (parsed.length >= 2) tabs = parsed;
    }
    List<String> strings(Object? v) =>
        v is List ? [for (final e in v) if (e is String) e] : const [];
    return Appearance(
      fonts: _enum(FontPair.values, j['fonts'], d.fonts),
      corners: _enum(Corners.values, j['corners'], d.corners),
      density: _enum(Density.values, j['density'], d.density),
      player: _enum(PlayerStyle.values, j['player'], d.player),
      visualizer: _enum(VisualizerStyle.values, j['visualizer'], d.visualizer),
      seek: _enum(SeekStyle.values, j['seek'], d.seek),
      livingBackground: j['living'] as bool? ?? d.livingBackground,
      glassNav: j['glass'] as bool? ?? d.glassNav,
      navLabels: j['labels'] as bool? ?? d.navLabels,
      preset: presetById(j['preset'] as String? ?? '') == null
          ? ''
          : j['preset'] as String,
      tabs: tabs,
      hiddenShelves: strings(j['hidden']),
      shelfOrder: strings(j['order']),
      swipeLeft: _enum(SwipeAction.values, j['swipeL'], d.swipeLeft),
      swipeRight: _enum(SwipeAction.values, j['swipeR'], d.swipeRight),
      doubleTapLike: j['dtl'] as bool? ?? d.doubleTapLike,
      shakeToSkip: j['shake'] as bool? ?? d.shakeToSkip,
      liveVisualizer: j['live'] as bool? ?? d.liveVisualizer,
    );
  }

  static const codePrefix = 'TBTHEME1:';

  /// A short text someone can paste to get exactly this look.
  String toCode() =>
      codePrefix + base64Url.encode(utf8.encode(jsonEncode(toJson())));

  /// Null when [code] is not a TuneBox theme code.
  static Appearance? fromCode(String code) {
    final trimmed = code.trim();
    final at = trimmed.indexOf(codePrefix);
    if (at < 0) return null;
    try {
      var body = trimmed.substring(at + codePrefix.length).split(RegExp(r'\s'))
          .first;
      body = body.padRight((body.length + 3) ~/ 4 * 4, '=');
      final j = jsonDecode(utf8.decode(base64Url.decode(body)));
      return j is Map<String, dynamic> ? fromJson(j) : null;
    } catch (_) {
      return null;
    }
  }

  @override
  bool operator ==(Object other) =>
      other is Appearance && jsonEncode(toJson()) == jsonEncode(other.toJson());

  @override
  int get hashCode => jsonEncode(toJson()).hashCode;
}

class AppearanceController extends Notifier<Appearance> {
  static const _key = 'appearance';

  @override
  Appearance build() {
    final raw = ref.read(prefsProvider).getString(_key);
    if (raw == null) return const Appearance();
    try {
      return Appearance.fromJson(jsonDecode(raw) as Map<String, dynamic>);
    } catch (_) {
      return const Appearance();
    }
  }

  void update(Appearance Function(Appearance) change) {
    state = change(state);
    ref.read(prefsProvider).setString(_key, jsonEncode(state.toJson()));
  }

  void replace(Appearance next) => update((_) => next);
}

final appearanceProvider =
    NotifierProvider<AppearanceController, Appearance>(AppearanceController.new);
