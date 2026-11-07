import 'dart:math' as math;

import 'package:flutter/material.dart';

/// A slow field of colour taken from the cover: three or four soft lights
/// drifting over the surface. Painted with plain radial gradients (no blur
/// filter), so it costs about as much as a static image.
class LivingBackground extends StatefulWidget {
  const LivingBackground({
    super.key,
    required this.colors,
    this.animate = true,
    this.intensity = 1.0,
  });

  final List<Color> colors;
  final bool animate;

  /// 0..1, how strongly the colours show through.
  final double intensity;

  @override
  State<LivingBackground> createState() => _LivingBackgroundState();
}

class _LivingBackgroundState extends State<LivingBackground>
    with SingleTickerProviderStateMixin {
  late final _t = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 40),
  );

  @override
  void initState() {
    super.initState();
    if (widget.animate) _t.repeat();
  }

  @override
  void didUpdateWidget(LivingBackground old) {
    super.didUpdateWidget(old);
    if (widget.animate && !_t.isAnimating) _t.repeat();
    if (!widget.animate && _t.isAnimating) _t.stop();
  }

  @override
  void dispose() {
    _t.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final colors = widget.colors.isEmpty
        ? [cs.primary, cs.tertiary, cs.secondary]
        : widget.colors;
    return RepaintBoundary(
      child: TweenAnimationBuilder<double>(
        // cross-fade the whole field when the song (and palette) changes
        key: ValueKey(colors.map((c) => c.toARGB32()).join()),
        tween: Tween(begin: 0, end: 1),
        duration: const Duration(milliseconds: 900),
        builder: (context, fade, _) => CustomPaint(
          painter: _FieldPainter(
            animation: _t,
            colors: colors,
            base: cs.surface,
            strength: widget.intensity * fade,
            dark: Theme.of(context).brightness == Brightness.dark,
          ),
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}

class _FieldPainter extends CustomPainter {
  _FieldPainter({
    required this.animation,
    required this.colors,
    required this.base,
    required this.strength,
    required this.dark,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final List<Color> colors;
  final Color base;
  final double strength;
  final bool dark;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = base);
    final t = animation.value * math.pi * 2;
    final r = size.longestSide * 0.75;
    for (var i = 0; i < 4; i++) {
      final c = colors[i % colors.length];
      // each light runs its own slow Lissajous loop
      final phase = i * 1.7;
      final centre = Offset(
        size.width * (0.5 + 0.42 * math.sin(t * (i.isEven ? 1 : -1) + phase)),
        size.height * (0.35 + 0.35 * math.cos(t * 0.8 + phase * 1.3)),
      );
      final alpha = (dark ? 0.55 : 0.35) * strength * (i == 0 ? 1 : 0.75);
      canvas.drawCircle(
        centre,
        r,
        Paint()
          ..shader = RadialGradient(
            colors: [c.withValues(alpha: alpha), c.withValues(alpha: 0)],
          ).createShader(Rect.fromCircle(center: centre, radius: r)),
      );
    }
    // a soft vignette keeps text readable over any palette
    canvas.drawRect(
      Offset.zero & size,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            base.withValues(alpha: 0.05),
            base.withValues(alpha: dark ? 0.55 : 0.4),
          ],
        ).createShader(Offset.zero & size),
    );
  }

  @override
  bool shouldRepaint(_FieldPainter old) =>
      old.colors != colors || old.strength != strength || old.base != base;
}
