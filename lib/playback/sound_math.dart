import 'dart:math' as math;

/// How loud normalised songs should end up. YouTube reports each song's
/// loudness relative to its own reference (positive = louder); these shift
/// that reference.
enum LoudnessTarget {
  quiet('Quiet', -3),
  normal('Normal', 0),
  loud('Loud', 3);

  const LoudnessTarget(this.label, this.offsetDb);
  final String label;
  final double offsetDb;
}

/// Volume (0..1) that brings a song with [loudnessDb] to [target]. Only ever
/// turns loud songs down: a player cannot push past full volume without
/// clipping, so quiet songs are left alone.
double normalizationGain(double? loudnessDb, LoudnessTarget target) {
  if (loudnessDb == null || loudnessDb.isNaN) return 1.0;
  final excess = loudnessDb - target.offsetDb;
  if (excess <= 0) return 1.0;
  return math.pow(10, -excess / 20).toDouble().clamp(0.2, 1.0);
}

/// Equal-power crossfade: the sum of both songs' energy stays constant, so
/// the middle of a fade does not dip the way a straight line does.
(double out, double into) crossfadeCurve(double x) {
  final t = x.clamp(0.0, 1.0) * math.pi / 2;
  return (math.cos(t), math.sin(t));
}

/// Whether to begin fading into the next song now.
bool shouldStartFade({
  required Duration position,
  required Duration? duration,
  required Duration crossfade,
  required bool hasNext,
  required bool nextReady,
}) {
  if (crossfade <= Duration.zero || !hasNext || !nextReady) return false;
  if (duration == null) return false;
  // Short clips and jingles play out in full.
  if (duration < crossfade * 3 || duration < const Duration(seconds: 30)) {
    return false;
  }
  return duration - position <= crossfade;
}

/// The length of the fade between two songs. Smart mode keeps an album or a
/// live set seamless (no fade at all) and shortens fades between songs that
/// are short themselves.
Duration fadeLength({
  required Duration chosen,
  required bool smart,
  required String fromAlbum,
  required String toAlbum,
  required Duration? fromDuration,
}) {
  if (chosen <= Duration.zero) return Duration.zero;
  if (!smart) return chosen;
  if (fromAlbum.isNotEmpty && fromAlbum == toAlbum) return Duration.zero;
  final d = fromDuration;
  if (d != null && d < const Duration(minutes: 2)) {
    return chosen ~/ 2;
  }
  return chosen;
}

/// The bands every preset is written for (Hz). Devices offer their own
/// bands; [gainAt] reads a preset at any frequency.
const kEqFrequencies = [60.0, 230.0, 910.0, 3600.0, 14000.0];

/// Gain (dB) of a preset at [hz], interpolated on a log-frequency scale.
double gainAt(List<double> preset, double hz) {
  if (preset.isEmpty) return 0;
  final x = math.log(hz.clamp(20, 20000));
  final xs = [for (final f in kEqFrequencies) math.log(f)];
  if (x <= xs.first) return preset.first;
  if (x >= xs.last) return preset.last;
  for (var i = 0; i < xs.length - 1; i++) {
    if (x <= xs[i + 1]) {
      final t = (x - xs[i]) / (xs[i + 1] - xs[i]);
      return preset[i] + (preset[i + 1] - preset[i]) * t;
    }
  }
  return preset.last;
}

/// Built-in equaliser presets, in dB at [kEqFrequencies].
const kEqPresets = <String, List<double>>{
  'Flat': [0, 0, 0, 0, 0],
  'Bass': [6, 3.5, 0, 0, 0.5],
  'Vocal': [-2, -1, 3, 3.5, 1],
  'Night': [-3, -1, 1, 1, -3],
  'Headphones': [3, 1, -1, 1.5, 3],
  'Car': [4, 2, 0, 2, 3],
  'Treble': [0, 0, 0, 3, 6],
};

/// Which output is in use, for per-output equaliser memory.
enum AudioOutput {
  speaker('Phone speaker'),
  wired('Wired'),
  bluetooth('Bluetooth');

  const AudioOutput(this.label);
  final String label;
}
