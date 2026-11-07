import 'package:flutter/material.dart';

import '../../app/theme.dart';
import 'living_background.dart';

/// A hero card lit from inside by the current colours, instead of the flat
/// two-stop gradient every template app uses.
class AuraCard extends StatelessWidget {
  const AuraCard({
    super.key,
    required this.child,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.all(18),
  });

  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: margin,
      child: ClipRRect(
        borderRadius: R.hero,
        child: Stack(
          children: [
            Positioned.fill(
              child: LivingBackground(
                colors: [cs.primary, cs.tertiary, cs.secondary],
                animate: false,
                intensity: 1.2,
              ),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: R.hero,
                  border: Border.all(
                    color: cs.onSurface.withValues(alpha: 0.08),
                  ),
                ),
              ),
            ),
            Padding(padding: padding, child: child),
          ],
        ),
      ),
    );
  }
}
