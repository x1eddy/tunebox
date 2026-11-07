import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;

import '../../playback/sound_math.dart';

/// Five handles on a smooth curve. Drag a handle up or down to set that
/// band; the line between them is what the equaliser actually applies.
class EqCurve extends StatefulWidget {
  const EqCurve({
    super.key,
    required this.gains,
    required this.onChanged,
    this.enabled = true,
    this.range = 12,
  });

  final List<double> gains;
  final ValueChanged<List<double>> onChanged;
  final bool enabled;

  /// ± dB shown.
  final double range;

  @override
  State<EqCurve> createState() => _EqCurveState();
}

class _EqCurveState extends State<EqCurve> {
  int? _dragging;

  static String _hz(double f) =>
      f >= 1000 ? '${(f / 1000).toStringAsFixed(f >= 10000 ? 0 : 1)}k' : '${f.round()}';

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final t = Theme.of(context).textTheme;
    return LayoutBuilder(
      builder: (context, c) {
        const height = 190.0;
        final width = c.maxWidth;
        final n = widget.gains.length;
        double xOf(int i) => width * (0.08 + 0.84 * i / (n - 1));
        double yOf(double db) =>
            height / 2 - (db / widget.range) * (height / 2 - 16);
        double dbOf(double y) =>
            ((height / 2 - y) / (height / 2 - 16) * widget.range)
                .clamp(-widget.range, widget.range);

        void move(int i, double y) {
          final next = [...widget.gains];
          // half-dB steps, so presets stay readable
          next[i] = (dbOf(y) * 2).round() / 2;
          if (next[i] != widget.gains[i]) {
            HapticFeedback.selectionClick();
            widget.onChanged(next);
          }
        }

        int nearest(Offset p) {
          var best = 0;
          var dist = double.infinity;
          for (var i = 0; i < n; i++) {
            final d = (p.dx - xOf(i)).abs();
            if (d < dist) {
              dist = d;
              best = i;
            }
          }
          return best;
        }

        return Column(
          children: [
            GestureDetector(
              onPanStart: widget.enabled
                  ? (d) {
                      setState(() => _dragging = nearest(d.localPosition));
                      move(_dragging!, d.localPosition.dy);
                    }
                  : null,
              onPanUpdate: widget.enabled && _dragging != null
                  ? (d) => move(_dragging!, d.localPosition.dy)
                  : null,
              onPanEnd: (_) => setState(() => _dragging = null),
              child: SizedBox(
                height: height,
                width: width,
                child: CustomPaint(
                  painter: _CurvePainter(
                    gains: widget.gains,
                    xOf: xOf,
                    yOf: yOf,
                    active: _dragging,
                    line: widget.enabled ? cs.primary : cs.outline,
                    grid: cs.onSurface.withValues(alpha: 0.08),
                    handle: cs.onPrimary,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                for (var i = 0; i < n; i++)
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '${widget.gains[i] > 0 ? '+' : ''}${widget.gains[i].toStringAsFixed(1)}',
                          style: t.labelMedium?.copyWith(
                            color: i == _dragging ? cs.primary : null,
                            fontFeatures: const [FontFeature.tabularFigures()],
                          ),
                        ),
                        Text(
                          '${_hz(kEqFrequencies[i])} Hz',
                          style: t.labelSmall?.copyWith(
                            color: cs.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _CurvePainter extends CustomPainter {
  _CurvePainter({
    required this.gains,
    required this.xOf,
    required this.yOf,
    required this.active,
    required this.line,
    required this.grid,
    required this.handle,
  });

  final List<double> gains;
  final double Function(int) xOf;
  final double Function(double) yOf;
  final int? active;
  final Color line;
  final Color grid;
  final Color handle;

  @override
  void paint(Canvas canvas, Size size) {
    final g = Paint()
      ..color = grid
      ..strokeWidth = 1;
    for (final db in [-12.0, -6.0, 0.0, 6.0, 12.0]) {
      canvas.drawLine(Offset(0, yOf(db)), Offset(size.width, yOf(db)), g);
    }

    // sample the real interpolated response across the width
    final path = Path();
    final fill = Path();
    final minX = xOf(0), maxX = xOf(gains.length - 1);
    final logMin = math.log(kEqFrequencies.first);
    final logMax = math.log(kEqFrequencies.last);
    for (var x = minX; x <= maxX; x += 2) {
      final u = (x - minX) / (maxX - minX);
      final hz = math.exp(logMin + (logMax - logMin) * u);
      final y = yOf(gainAt(gains, hz));
      if (x == minX) {
        path.moveTo(x, y);
        fill.moveTo(x, yOf(0));
        fill.lineTo(x, y);
      } else {
        path.lineTo(x, y);
        fill.lineTo(x, y);
      }
    }
    fill
      ..lineTo(maxX, yOf(0))
      ..close();
    canvas.drawPath(
      fill,
      Paint()..color = line.withValues(alpha: 0.14),
    );
    canvas.drawPath(
      path,
      Paint()
        ..color = line
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.round,
    );
    for (var i = 0; i < gains.length; i++) {
      final c = Offset(xOf(i), yOf(gains[i]));
      canvas.drawCircle(c, i == active ? 14 : 10, Paint()..color = line);
      canvas.drawCircle(c, i == active ? 6 : 4, Paint()..color = handle);
    }
  }

  @override
  bool shouldRepaint(_CurvePainter old) =>
      old.gains != gains || old.active != active || old.line != line;
}
