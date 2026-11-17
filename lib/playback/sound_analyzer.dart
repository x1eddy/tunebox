import 'dart:math' as math;
import 'dart:typed_data';

import '../ai/sound_profile.dart';
import 'live_audio.dart' show AudioFrame;

/// Learns what a song sounds like from the live spectrum while it plays.
///
/// Fed with [AudioFrame]s (32 log-spaced bands, 40 Hz .. 10 kHz, 0..1) at
/// whatever irregular rate the platform delivers them (~30/s on Linux,
/// ~20/s on Android). The Linux bands are auto-gained, so absolute loudness
/// means nothing here: every feature is built from the shape of the
/// spectrum and how it moves, relative to the song's own level.
///
/// Silent frames are skipped entirely and memory stays bounded: the beat
/// envelope keeps only the last [_keepSeconds] of audio.
class SoundAnalyzer {
  static const _bandCount = 32;

  /// Bands 0..5 are about 40..110 Hz: kick drum and bass.
  static const _bassBands = 6;

  /// Bands 0..19 are about 40 Hz..1.2 kHz: where kicks, snares and the
  /// rhythm section move.
  static const _beatBands = 20;

  /// A band counts as "busy" for [SoundProfile.energy] above this level.
  static const _busy = 0.3;

  /// Any band above this means the frame is not silence.
  static const _silent = 0.02;

  /// Gaps longer than this (pause, stall, seek) break continuity: no flux
  /// is measured across them and they add no seconds.
  static const _maxGap = 0.25;

  /// Onset envelope grid rate and how much of it is kept.
  static const _gridHz = 50.0;
  static const _keepSeconds = 90.0;

  /// Audio needed before a tempo is even attempted.
  static const _tempoSeconds = 30.0;

  /// Normalised autocorrelation the winning beat lag must reach.
  static const _beatClarity = 0.2;

  // running sums for the spectral features
  final _bandSum = Float64List(_bandCount);
  int _frames = 0;
  double _levelSum = 0, _busySum = 0;

  // punch: positive flux of the low/mid level, and that level's mean
  double _fluxSum = 0, _beatLevelSum = 0;

  double _seconds = 0;
  double? _lastAt;
  Float32List? _prev;
  double _prevBeatLevel = 0;

  // onset envelope on a uniform grid of "audio time" (silence and gaps
  // excluded); _grid[0] is grid bin number _gridStart
  final _grid = <double>[];
  int _gridStart = 0;

  /// Feed one frame. [at] = time since the song started playing (monotonic).
  void add(AudioFrame frame, Duration at) {
    final bands = frame.bands;
    if (bands.length < _bandCount) return;
    final t = at.inMicroseconds / 1e6;

    var loudest = 0.0;
    for (var b = 0; b < _bandCount; b++) {
      final v = bands[b];
      if (v.isFinite && v > loudest) loudest = v;
    }
    if (loudest < _silent) {
      // silence breaks continuity, so the next sound starts fresh
      _prev = null;
      _lastAt = null;
      return;
    }

    final v = Float32List(_bandCount);
    var level = 0.0, busy = 0;
    for (var b = 0; b < _bandCount; b++) {
      final x = bands[b].isFinite ? bands[b].clamp(0.0, 1.0) : 0.0;
      v[b] = x;
      level += x;
      if (x > _busy) busy++;
      _bandSum[b] += x;
    }
    _frames++;
    _levelSum += level / _bandCount;
    _busySum += busy / _bandCount;

    var beatLevel = 0.0;
    for (var b = 0; b < _beatBands; b++) {
      beatLevel += v[b];
    }
    beatLevel /= _beatBands;
    _beatLevelSum += beatLevel;

    final last = _lastAt, prev = _prev;
    final dt = last == null ? 0.0 : t - last;
    if (prev != null && dt > 0 && dt <= _maxGap) {
      _fluxSum += math.max(0.0, beatLevel - _prevBeatLevel);
      // spectral flux of the rhythm bands: summed per-band rises
      var onset = 0.0;
      for (var b = 0; b < _beatBands; b++) {
        final d = v[b] - prev[b];
        if (d > 0) onset += d;
      }
      _spread(_seconds, _seconds + dt, onset);
      _seconds += dt;
    }
    _prev = v;
    _prevBeatLevel = beatLevel;
    _lastAt = t;
  }

  /// Seconds of usable (non-silent) audio seen so far.
  double get seconds => _seconds;

  /// null until at least [minSeconds] of non-silent audio; tempo stays null
  /// until ~30 s of audio AND the beat is clear (autocorrelation peak strong
  /// enough), otherwise tempo is null but the rest is filled in.
  SoundProfile? result({double minSeconds = 15}) {
    if (_frames == 0 || _seconds < minSeconds) return null;
    double unit(double x) => x.isFinite ? x.clamp(0.0, 1.0) : 0.5;

    // energy: how many bands are busy at once plus how high they sit.
    // ~0.1 for a lone bass line, ~0.55 for a full mix, ~0.9 for a wall of
    // sound; spread so a full pop mix lands just above 0.62.
    final busy = _busySum / _frames, level = _levelSum / _frames;
    // calibrated on real songs through the Linux tap: pop/R&B land mid-way
    final energy = unit((0.5 * busy + 0.5 * level - 0.1) / 0.3);

    // tone: spectral centre of the average spectrum, in bands (0..31).
    // With the treble tilt typical music centres around band 14-16.
    var total = 0.0, moment = 0.0, low = 0.0;
    for (var b = 0; b < _bandCount; b++) {
      final m = _bandSum[b] / _frames;
      total += m;
      moment += m * b;
      if (b < _bassBands) low += m;
    }
    if (total <= 0) return null;
    final centre = moment / total;
    // real songs centre around bands 11..15 (after the treble tilt)
    final tone = unit((centre - 9.5) / 5.5);

    // bass: share of the average spectrum in the lowest six bands. A flat
    // spectrum gives 6/32 = 0.19; a big kick and bass line about 0.35+.
    final bass = unit((low / total - 0.1) / 0.3);

    // punch: rises of the low/mid level per second, relative to that level
    // (1/s). Jitter alone gives ~0.3, a drum-led pop song ~0.8-1, a
    // four-on-the-floor dance track 1.2+.
    final beatLevel = _beatLevelSum / _frames;
    final rises = beatLevel <= 1e-4 ? 0.0 : _fluxSum / _seconds / beatLevel;
    // real songs measured 1.1 (smooth) .. 4.5 (hard-hitting): log scale
    final punch = rises <= 1 ? 0.0 : unit(math.log(rises) / math.log(4.5));
    lastRaw =
        'rises=${rises.toStringAsFixed(2)} centre=${centre.toStringAsFixed(1)} '
        'bassShare=${(low / total).toStringAsFixed(2)}';

    return SoundProfile(
      tempo: _seconds >= _tempoSeconds ? _tempo() : null,
      energy: energy,
      tone: tone,
      bass: bass,
      punch: punch,
    );
  }

  void reset() {
    _bandSum.fillRange(0, _bandCount, 0);
    _frames = 0;
    _levelSum = _busySum = _fluxSum = _beatLevelSum = 0;
    _seconds = 0;
    _lastAt = null;
    _prev = null;
    _prevBeatLevel = 0;
    _grid.clear();
    _gridStart = 0;
  }

  /// Spreads [amount] of onset evenly over audio time [from]..[to] on the
  /// grid, so irregular frame timing leaves no holes or double hits.
  void _spread(double from, double to, double amount) {
    final a = from * _gridHz, b = to * _gridHz;
    final span = b - a;
    if (span <= 0) return;
    for (var k = a.floor(); k < b; k++) {
      final overlap = math.min(b, k + 1.0) - math.max(a, k.toDouble());
      if (overlap <= 0) continue;
      final i = k - _gridStart;
      if (i < 0) continue;
      while (_grid.length <= i) {
        _grid.add(0);
      }
      _grid[i] += amount * overlap / span;
    }
    final keep = (_keepSeconds * _gridHz).round();
    if (_grid.length > keep + _gridHz * 10) {
      final drop = _grid.length - keep;
      _grid.removeRange(0, drop);
      _gridStart += drop;
    }
  }

  /// Beats per minute from the autocorrelation of the onset envelope, or
  /// null when no lag stands out.
  /// The unscaled measurements behind the last [result], for calibration
  /// logs.
  String lastRaw = '';

  double? _tempo() {
    // the last bin may still be filling
    final n = _grid.length - 1;
    if (n < _gridHz * 20) return null;

    // light smoothing, then remove the slow trend (1 s moving average) so
    // only the pulses remain
    final s = Float64List(n);
    for (var i = 0; i < n; i++) {
      final l = _grid[i > 0 ? i - 1 : i], r = _grid[i + 1 < n ? i + 1 : i];
      s[i] = 0.25 * l + 0.5 * _grid[i] + 0.25 * r;
    }
    final half = (_gridHz / 2).round();
    final prefix = Float64List(n + 1);
    for (var i = 0; i < n; i++) {
      prefix[i + 1] = prefix[i] + s[i];
    }
    final x = Float64List(n);
    var power = 0.0;
    for (var i = 0; i < n; i++) {
      final lo = math.max(0, i - half), hi = math.min(n, i + half + 1);
      x[i] = s[i] - (prefix[hi] - prefix[lo]) / (hi - lo);
      power += x[i] * x[i];
    }
    if (power <= 1e-12) return null;
    power /= n;

    // lags for 200 .. 60 BPM, with one spare on each side for interpolation
    final minLag = (60 * _gridHz / 200).floor() - 1;
    final maxLag = (60 * _gridHz / 60).ceil() + 1;
    final r = Float64List(maxLag + 1);
    for (var lag = minLag; lag <= maxLag; lag++) {
      var acc = 0.0;
      for (var i = 0; i + lag < n; i++) {
        acc += x[i] * x[i + lag];
      }
      r[lag] = acc / (n - lag) / power;
    }

    // best local peak, gently preferring 90..140 BPM so half- and
    // double-time readings lose ties
    double weight(double bpm) {
      final d = bpm < 90
          ? math.log(90 / bpm) / math.ln2
          : bpm > 140
          ? math.log(bpm / 140) / math.ln2
          : 0.0;
      return math.exp(-0.5 * (d / 0.6) * (d / 0.6));
    }

    var best = -1, bestScore = 0.0, bestLag = 0.0, bestR = 0.0;
    for (var lag = minLag + 1; lag < maxLag; lag++) {
      if (r[lag] <= 0 || r[lag] < r[lag - 1] || r[lag] < r[lag + 1]) continue;
      // parabolic interpolation for a fractional lag
      final den = r[lag - 1] - 2 * r[lag] + r[lag + 1];
      final shift = den == 0
          ? 0.0
          : (0.5 * (r[lag - 1] - r[lag + 1]) / den).clamp(-0.5, 0.5);
      final exact = lag + shift;
      final bpm = 60 * _gridHz / exact;
      if (bpm < 60 || bpm > 200) continue;
      final score = r[lag] * weight(bpm);
      if (score > bestScore) {
        best = lag;
        bestScore = score;
        bestLag = exact;
        bestR = r[lag];
      }
    }
    lastRaw += ' beat=${best < 0 ? '-' : (60 * _gridHz / bestLag).toStringAsFixed(0)}'
        '@${bestR.toStringAsFixed(2)}';
    if (best < 0 || bestR < _beatClarity) return null;

    // kick-snare patterns repeat every two beats, which can make the bar
    // half outscore the beat. A slow reading whose double time also pulses
    // clearly is the double.
    final bpm = 60 * _gridHz / bestLag;
    final halfLag = bestLag / 2;
    if (bpm < 95 && halfLag >= minLag + 1) {
      final i = halfLag.floor();
      final atHalf = math.max(r[i], r[i + 1]);
      if (atHalf > 0.5 * bestR && atHalf >= _beatClarity) return bpm * 2;
    }
    return bpm;
  }
}
