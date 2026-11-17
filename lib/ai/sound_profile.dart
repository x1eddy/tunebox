import 'package:flutter/foundation.dart';

/// What a song sounds like, measured from the real audio while it played
/// (see SoundAnalyzer). Stored on the song as "tempo=118;energy=0.62;…".
///
/// All values but [tempo] are 0..1:
/// - [energy]: how full and dense it is (many bands busy at once)
/// - [tone]: dark/warm (0) to bright (1), from the spectral centre
/// - [bass]: share of the sound in the low bands
/// - [punch]: how hard and often the beats hit (onset strength)
@immutable
class SoundProfile {
  const SoundProfile({
    this.tempo,
    required this.energy,
    required this.tone,
    required this.bass,
    required this.punch,
    this.n = 1,
  });

  /// Beats per minute, when the beat was clear enough to tell.
  final double? tempo;
  final double energy;
  final double tone;
  final double bass;
  final double punch;

  /// How many listens this is averaged over.
  final int n;

  static SoundProfile? parse(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    final m = <String, double>{};
    for (final part in raw.split(';')) {
      final kv = part.split('=');
      if (kv.length != 2) continue;
      final v = double.tryParse(kv[1]);
      if (v != null && v.isFinite) m[kv[0]] = v;
    }
    if (!m.containsKey('energy')) return null;
    double c(String k) => (m[k] ?? 0.5).clamp(0.0, 1.0);
    return SoundProfile(
      tempo: m['tempo']?.clamp(40.0, 220.0),
      energy: c('energy'),
      tone: c('tone'),
      bass: c('bass'),
      punch: c('punch'),
      n: (m['n'] ?? 1).round().clamp(1, 1000),
    );
  }

  String encode() => [
    if (tempo != null) 'tempo=${tempo!.toStringAsFixed(0)}',
    'energy=${energy.toStringAsFixed(2)}',
    'tone=${tone.toStringAsFixed(2)}',
    'bass=${bass.toStringAsFixed(2)}',
    'punch=${punch.toStringAsFixed(2)}',
    'n=$n',
  ].join(';');

  /// Folds another listen in, weighted by how many listens each side holds.
  SoundProfile merge(SoundProfile o) {
    final total = n + o.n;
    double mix(double a, double b) => (a * n + b * o.n) / total;
    return SoundProfile(
      tempo: tempo == null
          ? o.tempo
          : o.tempo == null
          ? tempo
          : mix(tempo!, o.tempo!),
      energy: mix(energy, o.energy),
      tone: mix(tone, o.tone),
      bass: mix(bass, o.bass),
      punch: mix(punch, o.punch),
      n: total.clamp(1, 1000),
    );
  }

  static SoundProfile? average(Iterable<SoundProfile> all) {
    SoundProfile? acc;
    for (final p in all) {
      acc = acc == null ? p : acc.merge(p);
    }
    return acc;
  }

  /// The words the AI learns with, one per trait. Middling values say
  /// nothing about taste, so bass and punch only count when they stand out.
  List<String> descriptors() => [
    if (tempo != null)
      'tempo:${tempo! < 95
          ? 'slow'
          : tempo! < 125
          ? 'mid'
          : 'fast'}',
    'energy:${energy < 0.38
        ? 'low'
        : energy < 0.62
        ? 'mid'
        : 'high'}',
    'tone:${tone < 0.38
        ? 'dark'
        : tone < 0.62
        ? 'balanced'
        : 'bright'}',
    if (bass > 0.6) 'bass:heavy',
    if (bass < 0.3) 'bass:light',
    if (punch > 0.6) 'beat:punchy',
    if (punch < 0.3) 'beat:soft',
  ];
}

/// Song length is known for every song, measured or not.
String? lengthDescriptor(int durationMs) {
  if (durationMs <= 0) return null;
  final s = durationMs / 1000;
  return 'length:${s < 150
      ? 'short'
      : s < 300
      ? 'mid'
      : 'long'}';
}

/// The prefixes of all sound and length descriptors.
const soundPrefixes = ['tempo:', 'energy:', 'tone:', 'bass:', 'beat:', 'length:'];
