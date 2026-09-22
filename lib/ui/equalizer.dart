import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

/// Three little bars that dance while a song plays — the "this one is
/// playing" marker in lists and in the mini player.
class PlayingBars extends StatefulWidget {
  const PlayingBars({
    super.key,
    required this.playing,
    this.color,
    this.size = 14,
    this.bars = 3,
  });

  final bool playing;
  final Color? color;
  final double size;
  final int bars;

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
    _timer = Timer.periodic(_tick, (_) {
      if (!mounted) return;
      setState(() => _t = (_t + 0.11) % 1.0);
    });
  }

  @override
  void didUpdateWidget(PlayingBars old) {
    super.didUpdateWidget(old);
    if (widget.playing && _timer == null) {
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
class Visualizer extends StatefulWidget {
  const Visualizer({
    super.key,
    required this.playing,
    this.bars = 32,
    this.height = 34,
    this.color,
  });

  final bool playing;
  final int bars;
  final double height;
  final Color? color;

  @override
  State<Visualizer> createState() => _VisualizerState();
}

class _VisualizerState extends State<Visualizer> {
  static const _tick = Duration(milliseconds: 40); // 25 fps
  Timer? _timer;
  double _t = 0;
  late final List<double> _seeds = [
    for (var i = 0; i < widget.bars; i++) Random(i * 7919).nextDouble(),
  ];

  @override
  void initState() {
    super.initState();
    if (widget.playing) _start();
  }

  void _start() {
    _timer?.cancel();
    _timer = Timer.periodic(_tick, (_) {
      if (!mounted) return;
      setState(() => _t = (_t + 0.017) % 1.0);
    });
  }

  @override
  void didUpdateWidget(Visualizer old) {
    super.didUpdateWidget(old);
    if (widget.playing && _timer == null) {
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
        height: widget.height,
        width: double.infinity,
        child: CustomPaint(
          painter: _VisualizerPainter(
            t: _t,
            seeds: _seeds,
            color: color,
            idle: !widget.playing,
          ),
        ),
      ),
    );
  }
}

class _VisualizerPainter extends CustomPainter {
  _VisualizerPainter({
    required this.t,
    required this.seeds,
    required this.color,
    required this.idle,
  });

  final double t;
  final List<double> seeds;
  final Color color;
  final bool idle;

  @override
  void paint(Canvas canvas, Size size) {
    final count = seeds.length;
    final slot = size.width / count;
    final width = slot * 0.55;
    for (var i = 0; i < count; i++) {
      // Two offset sines per bar so neighbours never move in lockstep.
      final seed = seeds[i];
      final phase = t * 2 * pi;
      // Paused: a still, gently uneven row of bars — not a line of dots.
      final wave = idle
          ? 0.34 + seed * 0.16
          : (sin(phase * (1 + seed * 0.8) + i * 0.7) * 0.5 + 0.5) *
                    (0.45 + 0.55 * sin(phase * 0.5 + seed * 3).abs());
      // Loudest in the middle, like a real spectrum, and never so short that
      // the row reads as dots.
      final centre = (1 - (i / (count - 1) - 0.5).abs() * 1.7).clamp(0.15, 1.0);
      final height = (size.height * (0.26 + 0.74 * wave) * (0.45 + 0.55 * centre))
          .clamp(3.0, size.height);
      final paint = Paint()
        ..color = color.withValues(alpha: (0.45 + 0.55 * centre).clamp(0.0, 1.0));
      final x = i * slot + (slot - width) / 2;
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
  bool shouldRepaint(_VisualizerPainter old) =>
      old.t != t || old.color != color || old.idle != idle;
}
