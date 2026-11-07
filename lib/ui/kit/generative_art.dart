import 'dart:math' as math;

import 'package:flutter/material.dart';

/// A cover for things that have none. The same text always gives the same
/// picture, so an album without art is still recognisable at a glance, and
/// no two look like the same stock gradient.
class GenerativeArt extends StatelessWidget {
  const GenerativeArt({super.key, required this.seed, this.label = true});

  final String seed;

  /// Print the first letter, like a label on a pressing.
  final bool label;

  static int hashOf(String s) {
    var h = 0x811C9DC5;
    for (final u in s.codeUnits) {
      h = ((h ^ u) * 0x01000193) & 0x7FFFFFFF;
    }
    return h;
  }

  @override
  Widget build(BuildContext context) {
    final h = hashOf(seed);
    final match = RegExp(r'\p{L}', unicode: true).firstMatch(seed);
    final letter = match?.group(0)?.toUpperCase() ?? '♪';
    return CustomPaint(
      painter: _ArtPainter(h),
      child: label
          ? LayoutBuilder(
              builder: (context, c) {
                final side = c.biggest.shortestSide;
                if (!side.isFinite || side < 36) return const SizedBox.expand();
                return Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(side * 0.09),
                    child: Text(
                      letter,
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        color: Colors.white.withValues(alpha: 0.92),
                        fontWeight: FontWeight.w700,
                        fontSize: side * 0.3,
                        height: 1,
                        letterSpacing: -1,
                        shadows: const [
                          Shadow(blurRadius: 12, color: Color(0x55000000)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : null,
    );
  }
}

class _ArtPainter extends CustomPainter {
  _ArtPainter(this.h);
  final int h;

  @override
  void paint(Canvas canvas, Size size) {
    final rnd = math.Random(h);
    final hue = (h % 360).toDouble();
    // Two related hues plus an accent across the wheel: always harmonious.
    final shift = 25.0 + rnd.nextInt(50);
    Color c(double hueOffset, double s, double l) =>
        HSLColor.fromAHSL(1, (hue + hueOffset) % 360, s, l).toColor();
    final bg = c(0, 0.55, 0.22);
    final mid = c(shift, 0.65, 0.45);
    final accent = c(180 + shift / 2, 0.75, 0.62);

    final rect = Offset.zero & size;
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [bg, c(-shift / 2, 0.6, 0.3)],
        ).createShader(rect),
    );

    final w = size.width, ht = size.height;
    final paint = Paint()..isAntiAlias = true;
    switch (h % 5) {
      case 0: // concentric rings off-centre, like a pressed groove
        final centre = Offset(w * (0.55 + rnd.nextDouble() * 0.3), ht * 0.35);
        for (var i = 6; i > 0; i--) {
          paint.color = (i.isEven ? mid : accent).withValues(
            alpha: 0.18 + i * 0.05,
          );
          canvas.drawCircle(centre, w * 0.13 * i, paint);
        }
      case 1: // diagonal bands
        canvas.save();
        canvas.translate(w / 2, ht / 2);
        canvas.rotate(-math.pi / 5 + rnd.nextDouble() * 0.6);
        final band = w * (0.12 + rnd.nextDouble() * 0.08);
        for (var i = -6; i < 6; i++) {
          paint.color = (i.isEven ? mid : accent).withValues(alpha: 0.55);
          canvas.drawRect(Rect.fromLTWH(i * band * 2, -w, band, w * 2), paint);
        }
        canvas.restore();
      case 2: // a rising sun with rays
        final centre = Offset(w * 0.5, ht * 0.78);
        paint.color = accent.withValues(alpha: 0.9);
        canvas.drawCircle(centre, w * 0.26, paint);
        paint
          ..color = mid.withValues(alpha: 0.6)
          ..strokeWidth = w * 0.025
          ..style = PaintingStyle.stroke;
        for (var i = 0; i < 9; i++) {
          final a = math.pi + i * math.pi / 8;
          canvas.drawLine(
            centre + Offset(math.cos(a), math.sin(a)) * w * 0.34,
            centre + Offset(math.cos(a), math.sin(a)) * w * 0.6,
            paint,
          );
        }
      case 3: // soft blobs
        for (var i = 0; i < 4; i++) {
          paint.color = (i.isEven ? mid : accent).withValues(alpha: 0.5);
          paint.maskFilter = MaskFilter.blur(BlurStyle.normal, w * 0.06);
          canvas.drawCircle(
            Offset(w * rnd.nextDouble(), ht * rnd.nextDouble()),
            w * (0.2 + rnd.nextDouble() * 0.25),
            paint,
          );
        }
      default: // dot grid with one highlighted dot
        final n = 5 + rnd.nextInt(3);
        final step = w / n;
        final pick = rnd.nextInt(n * n);
        for (var y = 0; y < n; y++) {
          for (var x = 0; x < n; x++) {
            final hot = y * n + x == pick;
            paint.color = hot ? accent : mid.withValues(alpha: 0.55);
            canvas.drawCircle(
              Offset(step * (x + 0.5), step * (y + 0.5)),
              step * (hot ? 0.34 : 0.16),
              paint,
            );
          }
        }
    }
  }

  @override
  bool shouldRepaint(_ArtPainter old) => old.h != h;
}
