import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../data/db/database.dart';
import '../artwork.dart';

/// A round cover that turns like a record while music plays, inside a ring
/// that fills as the song goes on. Stops where it is on pause, so it never
/// jumps back to the start.
class SpinningCover extends StatefulWidget {
  const SpinningCover({
    super.key,
    required this.song,
    required this.playing,
    required this.progress,
    this.size = 50,
    this.reduceMotion = false,
    this.heroTag,
  });

  final Song song;
  final bool playing;
  final double progress;
  final double size;
  final bool reduceMotion;
  final String? heroTag;

  @override
  State<SpinningCover> createState() => _SpinningCoverState();
}

class _SpinningCoverState extends State<SpinningCover>
    with SingleTickerProviderStateMixin {
  // One turn every 8 s: slow enough to read as "alive", not as a loader.
  late final _spin = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 8),
  );

  @override
  void initState() {
    super.initState();
    _sync();
  }

  @override
  void didUpdateWidget(SpinningCover old) {
    super.didUpdateWidget(old);
    _sync();
  }

  void _sync() {
    final run = widget.playing && !widget.reduceMotion;
    if (run && !_spin.isAnimating) {
      _spin.repeat();
    } else if (!run && _spin.isAnimating) {
      _spin.stop();
    }
  }

  @override
  void dispose() {
    _spin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ring = 3.0;
    final inner = widget.size - ring * 2 - 4;
    return SizedBox.square(
      dimension: widget.size,
      child: CustomPaint(
        painter: _RingPainter(
          progress: widget.progress,
          track: cs.onSurface.withValues(alpha: 0.12),
          fill: cs.primary,
          width: ring,
        ),
        child: Center(
          child: RotationTransition(
            turns: _spin,
            child: SizedBox.square(
              dimension: inner,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CoverArt(
                    song: widget.song,
                    size: inner,
                    circle: true,
                    heroTag: widget.heroTag,
                  ),
                  // the spindle hole sells the record
                  Center(
                    child: Container(
                      width: inner * 0.16,
                      height: inner * 0.16,
                      decoration: BoxDecoration(
                        color: cs.surface,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black.withValues(alpha: 0.25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter({
    required this.progress,
    required this.track,
    required this.fill,
    required this.width,
  });

  final double progress;
  final Color track;
  final Color fill;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final arc = rect.deflate(width / 2);
    final p = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(arc, 0, math.pi * 2, false, p..color = track);
    if (progress > 0) {
      canvas.drawArc(
        arc,
        -math.pi / 2,
        math.pi * 2 * progress.clamp(0.0, 1.0),
        false,
        p..color = fill,
      );
    }
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.progress != progress || old.fill != fill || old.track != track;
}
