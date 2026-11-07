import 'package:flutter/material.dart';

import '../../app/theme.dart';
import '../common.dart';

/// Turns a flat settings list (headers, tiles, dividers) into grouped cards:
/// every run of tiles between two [SectionHeader]s sits on one rounded
/// surface, and the hairline dividers between sections go away.
List<Widget> groupSections(BuildContext context, List<Widget> children) {
  final cs = Theme.of(context).colorScheme;
  final out = <Widget>[];
  var run = <Widget>[];

  void flush() {
    if (run.isEmpty) return;
    final afterHeader = out.isNotEmpty && out.last is SectionHeader;
    out.add(
      Padding(
        padding: EdgeInsets.fromLTRB(12, afterHeader ? 0 : 10, 12, 6),
        child: Material(
          color: cs.surfaceContainerLow,
          borderRadius: R.card,
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: run,
            ),
          ),
        ),
      ),
    );
    run = [];
  }

  for (final w in children) {
    if (w is Divider) {
      flush();
    } else if (w is SizedBox && w.child == null) {
      // a spacer separates groups rather than sitting inside one
      flush();
      out.add(w);
    } else if (w is SectionHeader) {
      flush();
      out.add(w);
    } else {
      run.add(w);
    }
  }
  flush();
  return out;
}
