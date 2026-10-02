import 'package:flutter/material.dart';

/// One scroll controller per tab, handed to the tab's page as its primary
/// controller so the navigation bar can send it back to the top.
final tabScrollControllers = List.generate(5, (_) => ScrollController());

class TabScroll extends StatelessWidget {
  const TabScroll({super.key, required this.index, required this.child});

  final int index;
  final Widget child;

  @override
  Widget build(BuildContext context) => PrimaryScrollController(
    controller: tabScrollControllers[index],
    child: child,
  );
}

/// Scrolls tab [index] to the top. Another tab is out of sight, so it just
/// jumps; the tab you are already on glides.
void scrollTabToTop(int index, {required bool animate}) {
  final controller = tabScrollControllers[index];
  if (!controller.hasClients) return;
  if (animate) {
    controller.animateTo(
      0,
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  } else {
    for (final position in controller.positions) {
      position.jumpTo(0);
    }
  }
}
