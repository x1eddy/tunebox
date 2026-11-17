import 'dart:async';
import 'dart:math';

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show Ticker;

import '../playback/live_audio.dart';
import '../state/appearance.dart' show VisualizerStyle;

/// Three little bars that dance while a song plays — the "this one is
/// playing" marker in lists and in the mini player.
class PlayingBars extends StatefulWidget {
  const PlayingBars({
    super.key,
    required this.playing,
    this.color,
    this.size = 14,
    this.bars = 3,
    this.reduceMotion = false,
  });

  final bool playing;
  final Color? color;
  final double size;
  final int bars;
  final bool reduceMotion;

  @override
  State<PlayingBars> createState() => _PlayingBarsState();
}

class _PlayingBarsState extends State<PlayingBars> {
  static const _tick = Duration(milliseconds: 55); // ~18 fps
  Timer? _timer;
  double _t = 0;

  @override
  void initState() {
    super.initState();
    if (widget.playing) _start();
  }

  void _start() {
    _timer?.cancel();
    // "Reduce motion" leaves the bars standing still rather than hiding them:
    // they still say which row is playing.
    if (widget.reduceMotion) return;
    _timer = Timer.periodic(_tick, (_) {
      if (!mounted) return;
      setState(() => _t = (_t + 0.11) % 1.0);
    });
  }

  @override
  void didUpdateWidget(PlayingBars old) {
    super.didUpdateWidget(old);
    // Reduce motion switched on while playing: stop now, not at the pause
    if (widget.reduceMotion && _timer != null) {
      _timer?.cancel();
      _timer = null;
    } else if (widget.playing && _timer == null) {
      _start();
    } else if (!widget.playing) {
      _timer?.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color ?? Theme.of(context).colorScheme.primary;
    return RepaintBoundary(
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: CustomPaint(
          painter: _BarsPainter(
            t: _t,
            color: color,
            bars: widget.bars,
            idle: !widget.playing,
          ),
        ),
      ),
    );
  }
}

class _BarsPainter extends CustomPainter {
  _BarsPainter({
    required this.t,
    required this.color,
    required this.bars,
    required this.idle,
  });

  final double t;
  final Color color;
  final int bars;
  final bool idle;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final gap = size.width / (bars * 2 - 1);
    final width = gap;
    for (var i = 0; i < bars; i++) {
      final phase = t * 2 * pi + i * 2.1;
      final wave = idle ? 0.35 : (sin(phase) * 0.5 + 0.5);
      final height = size.height * (0.28 + 0.72 * wave);
      final x = i * gap * 2;
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(x, size.height - height, width, height),
          Radius.circular(width / 2),
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_BarsPainter old) => old.t != t || old.color != color;
}

/// A wide bar visualiser for the player screen. Decorative — there is no FFT
/// behind it — but it moves with the music's tempo feel and idles when paused.
/// The strip of motion on the player. With [frames] (Android, live
/// visualiser on) it draws the real spectrum and waveform of what is
/// playing; otherwise it animates on its own.
class Visualizer extends StatefulWidget {
  const Visualizer({
    super.key,
    required this.playing,
    this.style = VisualizerStyle.bars,
    this.frames,
    this.height = 34,
    this.color,
    this.reduceMotion = false,
  });

  final bool playing;
  final VisualizerStyle style;
  final Stream<AudioFrame>? frames;
  final double height;
  final Color? color;
  final bool reduceMotion;

  @override
  State<Visualizer> createState() => _VisualizerState();
}

class _VisualizerState extends State<Visualizer>
    with SingleTickerProviderStateMixin {
  static const _bands = 32, _samples = 64;
  late final Ticker _ticker = createTicker(_onTick);
  final _shownBands = Float32List(_bands);
  final _shownWave = Float32List(_samples);
  Float32List? _liveBands, _liveWave;
  DateTime _lastLive = DateTime.fromMillisecondsSinceEpoch(0);
  StreamSubscription<AudioFrame>? _sub;
  double _t = 0;
  Duration _prev = Duration.zero;
  final _seeds = [
    for (var i = 0; i < _bands; i++) Random(i * 7919).nextDouble(),
  ];
  // Peaks: a cap per band that is pushed up and falls back slowly.
  final _caps = Float32List(_bands);
  // Sparks: fly up from a band when it is hit (an onset), then fall.
  final _sparks = <_Spark>[];
  final _lastTarget = Float32List(_bands);
  final _sparkRnd = Random(7);

  @override
  void initState() {
    super.initState();
    _subscribe();
    _sync();
  }

  @override
  void didUpdateWidget(Visualizer old) {
    super.didUpdateWidget(old);
    if (old.frames != widget.frames) _subscribe();
    _sync();
  }

  void _subscribe() {
    _sub?.cancel();
    _sub = widget.frames?.listen((f) {
      _liveBands = f.bands;
      _liveWave = f.wave;
      _lastLive = DateTime.now();
    });
  }

  void _sync() {
    final run =
        widget.playing &&
        !widget.reduceMotion &&
        widget.style != VisualizerStyle.off;
    if (run && !_ticker.isActive) {
      _prev = Duration.zero;
      _ticker.start();
    } else if (!run && _ticker.isActive) {
      _ticker.stop();
      _settle();
    }
  }

  /// Paused: a calm, uneven resting shape instead of a flat line.
  void _settle() {
    for (var i = 0; i < _bands; i++) {
      _shownBands[i] = 0.12 + _seeds[i] * 0.1;
    }
    _shownWave.fillRange(0, _samples, 0);
    if (mounted) setState(() {});
  }

  void _onTick(Duration now) {
    final dt = ((now - _prev).inMicroseconds / 1e6).clamp(0.0, 0.1);
    _prev = now;
    _t += dt;
    final live =
        _liveBands != null &&
        DateTime.now().difference(_lastLive) <
            const Duration(milliseconds: 600);
    for (var i = 0; i < _bands; i++) {
      final target = live ? _liveBands![i] : _synthetic(i);
      // fast attack, slow release: hits snap up, tails fall smoothly
      final k = target > _shownBands[i] ? 0.55 : 0.12;
      _shownBands[i] += (target - _shownBands[i]) * k;
      _caps[i] = max(_shownBands[i], _caps[i] - dt * 0.5);
      if (widget.style == VisualizerStyle.sparks) {
        final rise = target - _lastTarget[i];
        if (rise > 0.16 && _sparks.length < 160) {
          for (var n = 0; n < 1 + (rise * 6).floor().clamp(0, 3); n++) {
            _sparks.add(
              _Spark(
                x: (i + 0.5) / _bands + (_sparkRnd.nextDouble() - .5) * 0.02,
                y: 1 - _shownBands[i] * 0.8,
                vx: (_sparkRnd.nextDouble() - .5) * 0.12,
                vy: -(0.7 + rise * 2.2 + _sparkRnd.nextDouble() * 0.5),
                hue: i / _bands,
              ),
            );
          }
        }
      }
      _lastTarget[i] = target;
    }
    for (final sp in _sparks) {
      sp
        ..x += sp.vx * dt
        ..y += sp.vy * dt
        ..vy +=
            2.2 *
            dt // gravity
        ..life -= dt * 1.3;
    }
    _sparks.removeWhere((sp) => sp.life <= 0 || sp.y > 1.1);
    for (var i = 0; i < _samples; i++) {
      final target = live && _liveWave != null
          ? _liveWave![i]
          : sin(_t * 5 + i * 0.35) *
                0.35 *
                (0.6 + 0.4 * sin(_t * 1.3 + i * 0.07));
      _shownWave[i] += (target - _shownWave[i]) * 0.35;
    }
    setState(() {});
  }

  /// The animation used when no real audio is available.
  double _synthetic(int i) {
    final seed = _seeds[i];
    final centre = 1 - (i / (_bands - 1) - 0.25).abs() * 1.2;
    final beat = pow(max(0.0, sin(_t * 2 * pi * 1.9)), 6).toDouble();
    final wobble = (sin(_t * (3 + seed * 4) + i * 0.7) * 0.5 + 0.5);
    return ((0.2 + 0.5 * wobble) * centre.clamp(0.2, 1.0) +
            beat * 0.35 * (1 - i / _bands))
        .clamp(0.05, 1.0);
  }

  @override
  void dispose() {
    _ticker.dispose();
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.style == VisualizerStyle.off) return const SizedBox.shrink();
    final cs = Theme.of(context).colorScheme;
    return RepaintBoundary(
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: CustomPaint(
          painter: _ScopePainter(
            style: widget.style,
            bands: _shownBands,
            wave: _shownWave,
            caps: _caps,
            sparks: _sparks,
            color: widget.color ?? cs.primary,
            accent: cs.tertiary,
          ),
        ),
      ),
    );
  }
}

class _Spark {
  _Spark({
    required this.x,
    required this.y,
    required this.vx,
    required this.vy,
    required this.hue,
  });

  /// position as a fraction of the strip (0..1), velocity in strips/second
  double x, y, vx, vy;
  final double hue;
  double life = 1;
}

class _ScopePainter extends CustomPainter {
  _ScopePainter({
    required this.style,
    required this.bands,
    required this.wave,
    required this.caps,
    required this.sparks,
    required this.color,
    required this.accent,
  });

  final VisualizerStyle style;
  final Float32List bands;
  final Float32List wave;
  final Float32List caps;
  final List<_Spark> sparks;
  final Color color;
  final Color accent;

  @override
  void paint(Canvas canvas, Size size) {
    switch (style) {
      case VisualizerStyle.bars:
        _bars(canvas, size, mirror: false);
      case VisualizerStyle.mirror:
        _bars(canvas, size, mirror: true);
      case VisualizerStyle.wave:
        _wave(canvas, size);
      case VisualizerStyle.line:
        _line(canvas, size);
      case VisualizerStyle.dots:
        _dots(canvas, size);
      case VisualizerStyle.peaks:
        _bars(canvas, size, mirror: false);
        _peaks(canvas, size);
      case VisualizerStyle.glow:
        _glow(canvas, size);
      case VisualizerStyle.sparks:
        _sparks(canvas, size);
      case VisualizerStyle.pulse:
        _pulse(canvas, size);
      case VisualizerStyle.off:
        break;
    }
  }

  void _bars(Canvas canvas, Size size, {required bool mirror}) {
    final n = bands.length;
    final slot = size.width / n;
    final w = slot * 0.58;
    final mid = size.height / 2;
    for (var i = 0; i < n; i++) {
      final v = bands[i].clamp(0.04, 1.0);
      final h = mirror ? v * size.height : max(3.0, v * size.height);
      final x = i * slot + (slot - w) / 2;
      final rect = mirror
          ? Rect.fromLTWH(x, mid - h / 2, w, h)
          : Rect.fromLTWH(x, size.height - h, w, h);
      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(w / 2)),
        Paint()
          ..color = Color.lerp(
            color,
            accent,
            i / n,
          )!.withValues(alpha: 0.55 + 0.45 * v),
      );
    }
  }

  void _wave(Canvas canvas, Size size) {
    final mid = size.height / 2;
    final path = Path();
    for (var i = 0; i < wave.length; i++) {
      final x = size.width * i / (wave.length - 1);
      final env = sin(pi * i / (wave.length - 1)); // quiet at the edges
      final y = mid + wave[i] * env * size.height * 0.48;
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6
        ..strokeCap = StrokeCap.round
        ..color = color.withValues(alpha: 0.18)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
    );
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.4
        ..strokeCap = StrokeCap.round
        ..shader = LinearGradient(
          colors: [color, accent, color],
        ).createShader(Offset.zero & size),
    );
  }

  void _line(Canvas canvas, Size size) {
    final n = bands.length;
    final pts = [
      for (var i = 0; i < n; i++)
        Offset(
          size.width * i / (n - 1),
          size.height * (1 - bands[i].clamp(0.03, 1.0)),
        ),
    ];
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (var i = 1; i < n; i++) {
      final c = Offset(
        (pts[i - 1].dx + pts[i].dx) / 2,
        (pts[i - 1].dy + pts[i].dy) / 2,
      );
      path.quadraticBezierTo(pts[i - 1].dx, pts[i - 1].dy, c.dx, c.dy);
    }
    path.lineTo(pts.last.dx, pts.last.dy);
    final fill = Path.from(path)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(
      fill,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color.withValues(alpha: 0.45), color.withValues(alpha: 0.0)],
        ).createShader(Offset.zero & size),
    );
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.2
        ..color = color,
    );
  }

  void _dots(Canvas canvas, Size size) {
    final n = bands.length;
    final slot = size.width / n;
    const rows = 4;
    final r = min(slot, size.height / rows) * 0.32;
    for (var i = 0; i < n; i++) {
      final lit = (bands[i] * rows).round();
      for (var row = 0; row < rows; row++) {
        final on = row < lit;
        canvas.drawCircle(
          Offset(
            i * slot + slot / 2,
            size.height - (row + 0.5) * size.height / rows,
          ),
          r,
          Paint()
            ..color = on
                ? Color.lerp(color, accent, row / rows)!
                : color.withValues(alpha: 0.12),
        );
      }
    }
  }

  void _peaks(Canvas canvas, Size size) {
    final n = caps.length;
    final slot = size.width / n;
    final w = slot * 0.58;
    for (var i = 0; i < n; i++) {
      final y = size.height - caps[i].clamp(0.04, 1.0) * size.height;
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(i * slot + (slot - w) / 2, max(0.0, y - 4), w, 2.5),
          const Radius.circular(2),
        ),
        Paint()..color = Color.lerp(accent, color, i / n)!,
      );
    }
  }

  /// The whole spectrum as one soft, mirrored, glowing shape.
  void _glow(Canvas canvas, Size size) {
    final n = bands.length;
    final mid = size.height / 2;
    Path half(double sign) {
      final p = Path()..moveTo(0, mid);
      for (var i = 0; i < n; i++) {
        final x = size.width * (i + 0.5) / n;
        final y = mid + sign * bands[i].clamp(0.02, 1.0) * mid * 0.95;
        final px = size.width * (i - 0.5) / n;
        final py = i == 0
            ? mid
            : mid + sign * bands[i - 1].clamp(0.02, 1.0) * mid * 0.95;
        p.quadraticBezierTo(px, py, (px + x) / 2, (py + y) / 2);
      }
      p.lineTo(size.width, mid);
      return p;
    }

    final shape = Path()
      ..addPath(half(-1), Offset.zero)
      ..addPath(half(1), Offset.zero);
    final shader = LinearGradient(
      colors: [color, accent, color],
    ).createShader(Offset.zero & size);
    canvas.drawPath(
      shape,
      Paint()
        ..shader = shader
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 7),
    );
    canvas.drawPath(
      shape,
      Paint()
        ..shader = shader
        ..color = Colors.white.withValues(alpha: 0.85),
    );
  }

  void _sparks(Canvas canvas, Size size) {
    // a faint spectrum floor the sparks fly off
    final n = bands.length;
    final slot = size.width / n;
    for (var i = 0; i < n; i++) {
      final h = max(2.0, bands[i] * size.height * 0.8);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(i * slot + slot * 0.2, size.height - h, slot * 0.6, h),
          const Radius.circular(2),
        ),
        Paint()..color = color.withValues(alpha: 0.22),
      );
    }
    for (final sp in sparks) {
      final c = Color.lerp(color, accent, sp.hue)!;
      final o = Offset(sp.x * size.width, sp.y * size.height);
      canvas.drawCircle(
        o,
        3.2 * sp.life,
        Paint()
          ..color = c.withValues(alpha: 0.35 * sp.life)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3),
      );
      canvas.drawCircle(o, 1.6, Paint()..color = c.withValues(alpha: sp.life));
    }
  }

  /// A glowing line that swells with the bass, the waveform running in it.
  void _pulse(Canvas canvas, Size size) {
    var bass = 0.0, mids = 0.0;
    for (var i = 0; i < 5; i++) {
      bass += bands[i];
    }
    for (var i = 8; i < 20; i++) {
      mids += bands[i];
    }
    bass /= 5;
    mids /= 12;
    final mid = size.height / 2;
    final thick = 3 + bass * size.height * 0.75;
    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, mid),
      width: size.width * (0.55 + 0.45 * bass),
      height: thick,
    );
    final shader = LinearGradient(
      colors: [
        color.withValues(alpha: 0),
        color,
        accent,
        color,
        color.withValues(alpha: 0),
      ],
    ).createShader(rect);
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(thick / 2)),
      Paint()
        ..shader = shader
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, 4 + bass * 8),
    );
    final path = Path();
    for (var i = 0; i < wave.length; i++) {
      final x = size.width * i / (wave.length - 1);
      final env = sin(pi * i / (wave.length - 1));
      final y = mid + wave[i] * env * size.height * (0.15 + 0.35 * mids);
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.6
        ..color = Colors.white.withValues(alpha: 0.75),
    );
  }

  @override
  bool shouldRepaint(_ScopePainter old) => true;
}
