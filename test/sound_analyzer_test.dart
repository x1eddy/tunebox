import 'dart:math' as math;
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/playback/live_audio.dart';
import 'package:tunebox/playback/sound_analyzer.dart';

/// Feeds [seconds] of frames at ~30 fps with jittered timestamps; [bands]
/// gives the spectrum for the time the frame was taken.
SoundAnalyzer feed(
  double seconds,
  double Function(int band, double t, math.Random rnd) bands, {
  int seed = 1,
  SoundAnalyzer? into,
}) {
  final rnd = math.Random(seed);
  final a = into ?? SoundAnalyzer();
  final wave = Float32List(64);
  for (var i = 0; i < seconds * 30; i++) {
    final t = i / 30 + (rnd.nextDouble() - 0.5) * 0.016;
    final b = Float32List.fromList([
      for (var k = 0; k < 32; k++) bands(k, t, rnd).clamp(0.0, 1.0),
    ]);
    a.add(AudioFrame(b, wave), Duration(microseconds: (t * 1e6).round()));
  }
  return a;
}

/// Kick drum every beat on the low bands over a quiet, noisy background.
double Function(int, double, math.Random) kicks(double bpm) {
  final period = 60 / bpm;
  return (k, t, rnd) {
    final noise = 0.04 * rnd.nextDouble();
    if (k >= 6) return 0.1 + noise;
    final since = t % period;
    return 0.05 + 0.9 * math.exp(-since / 0.08) + noise;
  };
}

void main() {
  test('kick at 120 BPM: tempo, punchy, heavy bass', () {
    final p = feed(45, kicks(120)).result()!;
    expect(p.tempo, isNotNull);
    expect(p.tempo!, closeTo(120, 6));
    expect(p.punch, greaterThan(0.6));
    expect(p.bass, greaterThan(0.6));
    expect(p.descriptors(), containsAll(['tempo:mid', 'beat:punchy']));
  });

  test('kick at 80 BPM is not read as 160', () {
    final p = feed(45, kicks(80), seed: 2).result()!;
    expect(p.tempo, isNotNull);
    expect(p.tempo!, closeTo(80, 5));
  });

  test('kick-snare at 150 BPM is not read as 75', () {
    const period = 60 / 150;
    final p = feed(45, (k, t, rnd) {
      final base = 0.25 + 0.15 * rnd.nextDouble();
      if (k < 8) return base + 0.4 * math.exp(-(t % period) / 0.1);
      if (k >= 10 && k < 20) {
        // snare on every other beat
        return base + 0.3 * math.exp(-((t + period) % (2 * period)) / 0.08);
      }
      return base;
    }, seed: 3).result()!;
    expect(p.tempo, isNotNull);
    expect(p.tempo!, closeTo(150, 6));
  });

  test('smooth bright pad: no tempo, soft, bright', () {
    final p = feed(45, (k, t, rnd) {
      if (k < 18) return 0.03;
      // slow swell, far too smooth to be a beat
      return 0.55 + 0.1 * math.sin(2 * math.pi * t / 7 + k * 0.3);
    }).result()!;
    expect(p.tempo, isNull);
    expect(p.punch, lessThan(0.3));
    expect(p.tone, greaterThan(0.62));
  });

  test('silence gives nothing', () {
    final a = feed(60, (k, t, rnd) => 0);
    expect(a.seconds, 0);
    expect(a.result(), isNull);
  });

  test('under 15 s of audio gives nothing; silence does not count', () {
    final a = feed(12, kicks(120));
    expect(a.result(), isNull);
    feed(30, (k, t, rnd) => 0, into: a);
    expect(a.seconds, lessThan(15));
    expect(a.result(), isNull);
    expect(a.result(minSeconds: 10), isNotNull);
    expect(a.result(minSeconds: 10)!.tempo, isNull); // too short for tempo
  });

  test('dense spectrum is high energy, a lone bass line is low', () {
    final dense = feed(
      20,
      (k, t, rnd) => 0.5 + 0.3 * rnd.nextDouble(),
    ).result()!;
    expect(dense.energy, greaterThan(0.62));
    final sparse = feed(
      20,
      (k, t, rnd) => k < 3 ? 0.6 + 0.2 * rnd.nextDouble() : 0,
    ).result()!;
    expect(sparse.energy, lessThan(0.38));
    expect(sparse.tone, lessThan(0.38));
    expect(sparse.bass, greaterThan(0.6));
  });

  test('reset forgets everything', () {
    final a = feed(20, kicks(120));
    expect(a.result(), isNotNull);
    a.reset();
    expect(a.seconds, 0);
    expect(a.result(), isNull);
  });
}
