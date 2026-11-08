import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

/// Rubber-band overscroll on every platform, the way iOS lists feel — or the
/// plain clamped scroll when Reduce motion is on.
class TuneBoxScrollBehavior extends MaterialScrollBehavior {
  const TuneBoxScrollBehavior({required this.bouncy});

  final bool bouncy;

  /// Bottom sheets and dialogs never bounce. A rubber band inside a sheet
  /// let the list be pulled down inside it, leaving an empty gap above the
  /// song, instead of the drag going to the sheet itself.
  static bool _inPopup(BuildContext context) => ModalRoute.of(context) is PopupRoute;

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    if (_inPopup(context)) return const ClampingScrollPhysics();
    return bouncy
        ? const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())
        : const ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics());
  }

  // The stretch/glow indicator would fight the rubber band.
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) => bouncy && !_inPopup(context)
      ? child
      : super.buildOverscrollIndicator(context, child, details);

  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.trackpad,
  };
}
