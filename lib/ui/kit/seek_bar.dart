import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;

import '../../state/appearance.dart';

/// A seek bar painted by hand, for the "wave" and "thick" styles. The wave is
/// a fingerprint of the song (the same song always draws the same shape), not
/// a measurement of its loudness.
class PaintedSeekBar extends StatelessWidget {
  const PaintedSeekBar({
    super.key,
    required this.value,
    required this.style,
    required this.seed,
    required this.onChangeStart,
    required this.onChanged,
    required this.onChangeEnd,
    this.semanticLabel,
    this.semanticValue,
  });

  final double value;
  final SeekStyle style;
  final String seed;
  final VoidCallback onChangeStart;
  final ValueChanged<double>? onChanged;
  final ValueChanged<double> onChangeEnd;
  final String? semanticLabel;
  final String? semanticValue;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final enabled = onChanged != null;
    final height = style == SeekStyle.wave ? 44.0 : 26.0;

    double at(Offset local, double width) =>
        (local.dx / width).clamp(0.0, 1.0);

    return LayoutBuilder(
      builder: (context, c) {
        final width = c.maxWidth;
        double last = value;
        return Semantics(
          slider: true,
          label: semanticLabel,
          value: semanticValue,
          increasedValue: semanticValue,
          decreasedValue: semanticValue,
          onIncrease: enabled
              ? () => onChangeEnd((value + 0.05).clamp(0.0, 1.0))
              : null,
          onDecrease: enabled
              ? () => onChangeEnd((value - 0.05).clamp(0.0, 1.0))
              : null,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: enabled
                ? (d) {
                    HapticFeedback.selectionClick();
                    onChangeEnd(at(d.localPosition, width));
                  }
                : null,
            onHorizontalDragStart: enabled
                ? (d) {
                    HapticFeedback.selectionClick();
                    onChangeStart();
                    last = at(d.localPosition, width);
                    onChanged!(last);
                  }
                : null,
            onHorizontalDragUpdate: enabled
                ? (d) {
                    last = at(d.localPosition, width);
                    onChanged!(last);
                  }
                : null,
            onHorizontalDragEnd: enabled ? (_) => onChangeEnd(last) : null,
            child: SizedBox(
              height: height + 16,
              width: double.infinity,
              child: CustomPaint(
                painter: style == SeekStyle.wave
                    ? _WavePainter(
                        value: value,
                        seed: seed,
                        played: cs.primary,
                        rest: cs.onSurface.withValues(alpha: 0.18),
                      )
                    : _ThickPainter(
                        value: value,
                        played: cs.primary,
                        rest: cs.onSurface.withValues(alpha: 0.14),
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _WavePainter extends CustomPainter {
  _WavePainter({
    required this.value,
    required this.seed,
    required this.played,
    required this.rest,
  });

  final double value;
  final String seed;
  final Color played;
  final Color rest;

  static final _cache = <String, List<double>>{};

  List<double> _shape(int bars) {
    final key = '$seed/$bars';
    return _cache.putIfAbsent(key, () {
      if (_cache.length > 40) _cache.clear();
      var h = 0;
      for (final u in seed.codeUnits) {
        h = (h * 31 + u) & 0x7FFFFFFF;
      }
      final rnd = math.Random(h);
      // a song-like envelope: quiet intro, a build, a chorus or two, an outro
      final peaks = [0.3 + rnd.nextDouble() * 0.2, 0.65 + rnd.nextDouble() * 0.2];
      return [
        for (var i = 0; i < bars; i++)
          () {
            final u = i / bars;
            var env = 0.35 + 0.25 * math.sin(u * math.pi);
            for (final p in peaks) {
              env += 0.35 * math.exp(-math.pow((u - p) * 7, 2));
            }
            final intro = (u * 12).clamp(0.0, 1.0);
            final outro = ((1 - u) * 14).clamp(0.0, 1.0);
            return (env * (0.55 + 0.45 * rnd.nextDouble()) * intro * outro)
                .clamp(0.08, 1.0);
          }(),
      ];
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    const gap = 2.0;
    const bar = 3.0;
    final count = (size.width / (bar + gap)).floor();
    final shape = _shape(count);
    final mid = size.height / 2;
    final playedTo = size.width * value;
    final paint = Paint()..strokeCap = StrokeCap.round;
    for (var i = 0; i < count; i++) {
      final x = i * (bar + gap) + bar / 2;
      final h = shape[i] * (size.height - 16);
      paint
        ..color = x <= playedTo ? played : rest
        ..strokeWidth = bar;
      canvas.drawLine(Offset(x, mid - h / 2), Offset(x, mid + h / 2), paint);
    }
    // playhead
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(playedTo.clamp(1.5, size.width - 1.5), mid),
          width: 3,
          height: size.height - 6,
        ),
        const Radius.circular(2),
      ),
      Paint()..color = played,
    );
  }

  @override
  bool shouldRepaint(_WavePainter old) =>
      old.value != value || old.seed != seed || old.played != played;
}

class _ThickPainter extends CustomPainter {
  _ThickPainter({required this.value, required this.played, required this.rest});
  final double value;
  final Color played;
  final Color rest;

  @override
  void paint(Canvas canvas, Size size) {
    const h = 14.0;
    final top = (size.height - h) / 2;
    final track = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, top, size.width, h),
      const Radius.circular(h / 2),
    );
    canvas.drawRRect(track, Paint()..color = rest);
    canvas.save();
    canvas.clipRRect(track);
    canvas.drawRect(
      Rect.fromLTWH(0, top, size.width * value, h),
      Paint()..color = played,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(_ThickPainter old) =>
      old.value != value || old.played != played;
}
