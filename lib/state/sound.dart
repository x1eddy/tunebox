import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../playback/sound_math.dart';
import 'settings.dart' show prefsProvider;

/// Everything about how TuneBox sounds. Stored as one JSON value.
@immutable
class SoundSettings {
  const SoundSettings({
    this.crossfadeSec = 0,
    this.smartCrossfade = true,
    this.normalize = true,
    this.target = LoudnessTarget.normal,
    this.eqEnabled = false,
    this.eqByOutput = const {},
    this.customPresets = const {},
    this.boostDb = 0,
    this.speed = 1.0,
    this.pitch = 1.0,
  });

  /// 0 = gapless, no fade.
  final int crossfadeSec;
  final bool smartCrossfade;
  final bool normalize;
  final LoudnessTarget target;

  final bool eqEnabled;

  /// Preset name per output (`AudioOutput.name`), so headphones and the
  /// car keep their own sound.
  final Map<String, String> eqByOutput;

  /// User presets, gains in dB at [kEqFrequencies].
  final Map<String, List<double>> customPresets;

  /// Extra loudness on Android (dB, 0–10).
  final double boostDb;
  final double speed;
  final double pitch;

  String presetFor(AudioOutput output) => eqByOutput[output.name] ?? 'Flat';

  List<double> gainsFor(String preset) =>
      customPresets[preset] ?? kEqPresets[preset] ?? kEqPresets['Flat']!;

  List<String> get presetNames => [...kEqPresets.keys, ...customPresets.keys];

  SoundSettings copyWith({
    int? crossfadeSec,
    bool? smartCrossfade,
    bool? normalize,
    LoudnessTarget? target,
    bool? eqEnabled,
    Map<String, String>? eqByOutput,
    Map<String, List<double>>? customPresets,
    double? boostDb,
    double? speed,
    double? pitch,
  }) => SoundSettings(
    crossfadeSec: crossfadeSec ?? this.crossfadeSec,
    smartCrossfade: smartCrossfade ?? this.smartCrossfade,
    normalize: normalize ?? this.normalize,
    target: target ?? this.target,
    eqEnabled: eqEnabled ?? this.eqEnabled,
    eqByOutput: eqByOutput ?? this.eqByOutput,
    customPresets: customPresets ?? this.customPresets,
    boostDb: boostDb ?? this.boostDb,
    speed: speed ?? this.speed,
    pitch: pitch ?? this.pitch,
  );

  Map<String, Object?> toJson() => {
    'xf': crossfadeSec,
    'smart': smartCrossfade,
    'norm': normalize,
    'target': target.name,
    'eq': eqEnabled,
    'eqOut': eqByOutput,
    'custom': customPresets,
    'boost': boostDb,
    'speed': speed,
    'pitch': pitch,
  };

  static SoundSettings fromJson(Map<String, dynamic> j) {
    const d = SoundSettings();
    double num0(Object? v, double fallback) =>
        v is num ? v.toDouble() : fallback;
    final custom = <String, List<double>>{};
    final rawCustom = j['custom'];
    if (rawCustom is Map) {
      rawCustom.forEach((k, v) {
        if (k is String && v is List && v.length == kEqFrequencies.length) {
          custom[k] = [for (final g in v) num0(g, 0).clamp(-12, 12)];
        }
      });
    }
    final eqOut = <String, String>{};
    final rawOut = j['eqOut'];
    if (rawOut is Map) {
      rawOut.forEach((k, v) {
        if (k is String && v is String) eqOut[k] = v;
      });
    }
    return SoundSettings(
      crossfadeSec: (j['xf'] as int? ?? d.crossfadeSec).clamp(0, 12),
      smartCrossfade: j['smart'] as bool? ?? d.smartCrossfade,
      normalize: j['norm'] as bool? ?? d.normalize,
      target: LoudnessTarget.values.firstWhere(
        (t) => t.name == j['target'],
        orElse: () => d.target,
      ),
      eqEnabled: j['eq'] as bool? ?? d.eqEnabled,
      eqByOutput: eqOut,
      customPresets: custom,
      boostDb: num0(j['boost'], 0).clamp(0, 10),
      speed: num0(j['speed'], 1).clamp(0.5, 2),
      pitch: num0(j['pitch'], 1).clamp(0.5, 2),
    );
  }
}

class SoundController extends Notifier<SoundSettings> {
  static const _key = 'sound';

  @override
  SoundSettings build() {
    final raw = ref.read(prefsProvider).getString(_key);
    if (raw == null) return const SoundSettings();
    try {
      return SoundSettings.fromJson(jsonDecode(raw) as Map<String, dynamic>);
    } catch (_) {
      return const SoundSettings();
    }
  }

  void update(SoundSettings Function(SoundSettings) change) {
    state = change(state);
    ref.read(prefsProvider).setString(_key, jsonEncode(state.toJson()));
  }
}

final soundProvider = NotifierProvider<SoundController, SoundSettings>(
  SoundController.new,
);
