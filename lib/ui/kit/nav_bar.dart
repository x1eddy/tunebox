import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;

class NavItem {
  const NavItem(this.icon, this.activeIcon, this.label);
  final IconData icon;
  final IconData activeIcon;
  final String label;
}

/// The floating pill at the bottom. The highlight slides between tabs and
/// stretches as it travels instead of blinking from one to the next.
class FloatingNavBar extends StatelessWidget {
  const FloatingNavBar({
    super.key,
    required this.items,
    required this.selected,
    required this.onSelect,
    this.glass = true,
    this.labels = true,
    this.reduceMotion = false,
  });

  final List<NavItem> items;

  /// -1 when the current page is not one of [items].
  final int selected;
  final ValueChanged<int> onSelect;
  final bool glass;
  final bool labels;
  final bool reduceMotion;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final cs = t.colorScheme;
    final height = labels ? 62.0 : 54.0;
    final radius = BorderRadius.circular(height / 2);
    final duration = reduceMotion
        ? Duration.zero
        : const Duration(milliseconds: 380);

    Widget bar = LayoutBuilder(
      builder: (context, c) {
        final slot = c.maxWidth / items.length;
        return Stack(
          children: [
            if (selected >= 0)
              AnimatedPositioned(
                duration: duration,
                curve: Curves.easeOutBack,
                left: slot * selected + 5,
                top: 5,
                bottom: 5,
                width: slot - 10,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: cs.primary.withValues(alpha: 0.16),
                    borderRadius: BorderRadius.circular(height / 2 - 5),
                  ),
                ),
              ),
            Row(
              children: [
                for (var i = 0; i < items.length; i++)
                  Expanded(
                    child: _NavButton(
                      item: items[i],
                      active: i == selected,
                      labels: labels,
                      duration: duration,
                      onTap: () {
                        HapticFeedback.selectionClick();
                        onSelect(i);
                      },
                    ),
                  ),
              ],
            ),
          ],
        );
      },
    );

    final fill = cs.surfaceContainerHigh;
    final decoration = BoxDecoration(
      color: glass ? fill.withValues(alpha: 0.78) : fill,
      borderRadius: radius,
      border: Border.all(color: cs.onSurface.withValues(alpha: 0.07)),
    );
    bar = SizedBox(
      height: height,
      child: DecoratedBox(decoration: decoration, child: bar),
    );
    if (glass) {
      bar = ClipRRect(
        borderRadius: radius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 22, sigmaY: 22),
          child: bar,
        ),
      );
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: radius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: t.brightness == Brightness.dark ? 0.45 : 0.12,
            ),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Semantics(container: true, explicitChildNodes: true, child: bar),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    required this.item,
    required this.active,
    required this.labels,
    required this.duration,
    required this.onTap,
  });

  final NavItem item;
  final bool active;
  final bool labels;
  final Duration duration;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final cs = t.colorScheme;
    final color = active ? cs.primary : cs.onSurfaceVariant;
    return Semantics(
      button: true,
      selected: active,
      label: item.label,
      child: InkResponse(
        onTap: onTap,
        radius: 32,
        highlightShape: BoxShape.circle,
        child: Tooltip(
          message: labels ? '' : item.label,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedScale(
                duration: duration,
                curve: Curves.easeOutBack,
                scale: active ? 1.12 : 1.0,
                child: Icon(
                  active ? item.activeIcon : item.icon,
                  color: color,
                  size: 24,
                ),
              ),
              if (labels) ...[
                const SizedBox(height: 2),
                ExcludeSemantics(
                  child: Text(
                    item.label,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: t.textTheme.labelSmall?.copyWith(
                      color: color,
                      fontWeight: active ? FontWeight.w700 : FontWeight.w600,
                      fontSize: 10.5,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
