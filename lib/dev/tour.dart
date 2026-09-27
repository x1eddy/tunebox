// Dev-only screenshot harness. Enabled with --dart-define=TOUR=true.
//
// It polls a command file and drives the *real* running app: navigate, tap,
// scroll. After each command it writes an ack file, so a shell script can take
// a screenshot at exactly the right moment.
import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../app/router.dart';

const kTour = bool.fromEnvironment('TOUR');
const _cmdFile = '/tmp/tunebox_cmd';
const _ackFile = '/tmp/tunebox_ack';

/// Where the harness talks to the app.
///
/// On desktop that is `/tmp`. An iOS simulator app cannot read `/tmp` on the
/// host, so there it is the app's own documents directory, which the test
/// script finds with `xcrun simctl get_app_container`.
Directory? _boxDir;

File _file(String tmpPath, String name) {
  final box = _boxDir;
  return box == null ? File(tmpPath) : File('${box.path}/$name');
}

/// Dev-only frame timing. Prints how long the UI thread (build) and the raster
/// thread (GPU) take, so "it feels laggy" becomes a number.
void startFrameStats() {
  final build = <int>[];
  final raster = <int>[];
  var last = DateTime.now();
  WidgetsBinding.instance.addTimingsCallback((timings) {
    for (final t in timings) {
      build.add(t.buildDuration.inMicroseconds);
      raster.add(t.rasterDuration.inMicroseconds);
    }
    final now = DateTime.now();
    if (now.difference(last) < const Duration(seconds: 2) || build.isEmpty) {
      return;
    }
    last = now;
    build.sort();
    raster.sort();
    String stat(List<int> xs) {
      final p50 = xs[xs.length ~/ 2] / 1000;
      final p95 = xs[(xs.length * 0.95).floor().clamp(0, xs.length - 1)] / 1000;
      final worst = xs.last / 1000;
      return 'p50 ${p50.toStringAsFixed(1)} p95 ${p95.toStringAsFixed(1)} '
          'max ${worst.toStringAsFixed(1)}';
    }

    final hz = WidgetsBinding.instance.platformDispatcher.displays.first
        .refreshRate;
    final budget = (1000000 / (hz <= 0 ? 60 : hz)).round();
    final janky = raster.where((r) => r > budget).length;
    // ignore: avoid_print
    print('[frames] ${hz.toStringAsFixed(0)}Hz budget '
        '${(budget / 1000).toStringAsFixed(1)}ms n=${build.length} '
        'build(${stat(build)}) raster(${stat(raster)}) '
        'over=$janky/${build.length}');
    build.clear();
    raster.clear();
  });
}

class TourDriver extends StatefulWidget {
  const TourDriver({super.key, required this.child});
  final Widget child;

  @override
  State<TourDriver> createState() => _TourDriverState();
}

class _TourDriverState extends State<TourDriver> {
  Timer? _poll;
  int _seen = -1;
  bool _mouseAdded = false;

  @override
  void initState() {
    super.initState();
    if (Platform.isIOS || Platform.isMacOS) {
      unawaited(
        getApplicationDocumentsDirectory().then((d) => _boxDir = d),
      );
    }
    _poll = Timer.periodic(const Duration(milliseconds: 120), (_) => _tick());
  }

  @override
  void dispose() {
    _poll?.cancel();
    super.dispose();
  }

  Future<void> _tick() async {
    final f = _file(_cmdFile, 'tunebox_cmd');
    if (!f.existsSync()) return;
    final raw = f.readAsStringSync().trim();
    if (raw.isEmpty) return;
    final parts = raw.split('|');
    final id = int.tryParse(parts.first) ?? 0;
    if (id == _seen) return;
    _seen = id;
    for (final cmd in parts.skip(1)) {
      await _run(cmd.trim());
    }
    await Future<void>.delayed(const Duration(milliseconds: 700));
    _file(_ackFile, 'tunebox_ack').writeAsStringSync('$id');
  }

  Future<void> _run(String cmd) async {
    final i = cmd.indexOf(':');
    final verb = i < 0 ? cmd : cmd.substring(0, i);
    final arg = i < 0 ? '' : cmd.substring(i + 1);
    switch (verb) {
      case 'go':
        router.go(arg);
      case 'push':
        router.push(arg);
      case 'pop':
        router.pop();
      case 'tap':
        final p = arg.split(',');
        _tap(Offset(double.parse(p[0]), double.parse(p[1])));
      case 'scroll':
        _scroll(double.parse(arg));
      case 'wait':
        await Future<void>.delayed(Duration(milliseconds: int.parse(arg)));
    }
    await Future<void>.delayed(const Duration(milliseconds: 450));
  }

  void _tap(Offset p) {
    final b = GestureBinding.instance;
    b.handlePointerEvent(
      PointerDownEvent(position: p, kind: PointerDeviceKind.touch, device: 7),
    );
    b.handlePointerEvent(
      PointerUpEvent(position: p, kind: PointerDeviceKind.touch, device: 7),
    );
  }

  void _scroll(double dy) {
    final view = PlatformDispatcher.instance.views.first;
    final size = view.physicalSize / view.devicePixelRatio;
    final p = Offset(size.width / 2, size.height / 2);
    final b = GestureBinding.instance;
    if (!_mouseAdded) {
      _mouseAdded = true;
      b.handlePointerEvent(
        PointerAddedEvent(position: p, kind: PointerDeviceKind.mouse),
      );
    }
    b.handlePointerEvent(
      PointerScrollEvent(
        position: p,
        kind: PointerDeviceKind.mouse,
        scrollDelta: Offset(0, dy),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
