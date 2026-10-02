import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

/// Rubber-band overscroll on every platform, the way iOS lists feel — or the
/// plain clamped scroll when Reduce motion is on.
class TuneBoxScrollBehavior extends MaterialScrollBehavior {
  const TuneBoxScrollBehavior({required this.bouncy});

  final bool bouncy;

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) => bouncy
      ? const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())
      : const ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics());

  // The stretch/glow indicator would fight the rubber band.
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) => bouncy ? child : super.buildOverscrollIndicator(context, child, details);

  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.trackpad,
  };
}
