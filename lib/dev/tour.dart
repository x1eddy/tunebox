// Dev-only screenshot harness. Enabled with --dart-define=TOUR=true.
//
// It polls a command file and drives the *real* running app: navigate, tap,
// scroll. After each command it writes an ack file, so a shell script can take
// a screenshot at exactly the right moment.
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  SemanticsHandle? _semantics;
  final _rnd = Random(DateTime.now().millisecondsSinceEpoch);
  int monkeyTaps = 0;
  List<Offset> _cachedTargets = const [];

  @override
  void initState() {
    super.initState();
    if (Platform.isIOS || Platform.isMacOS) {
      unawaited(
        getApplicationDocumentsDirectory().then((d) => _boxDir = d),
      );
    }
    // the monkey needs to know where the buttons are
    _semantics = SemanticsBinding.instance.ensureSemantics();
    _poll = Timer.periodic(const Duration(milliseconds: 120), (_) => _tick());
  }

  @override
  void dispose() {
    _poll?.cancel();
    _semantics?.dispose();
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
      try {
        await _run(cmd.trim());
      } catch (e, st) {
        // ignore: avoid_print
        print('[tour] $cmd failed: $e\n$st');
      }
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
      case 'push': // the way the app opens pages
        openPage(arg);
      case 'pop':
        router.pop();
      case 'tap':
        final p = arg.split(',');
        _tap(Offset(double.parse(p[0]), double.parse(p[1])));
      case 'scroll':
        _scroll(double.parse(arg));
      case 'dtap': // a double tap, 70 ms apart
        final p = arg.split(',');
        final at = Offset(double.parse(p[0]), double.parse(p[1]));
        _tap(at);
        await Future<void>.delayed(const Duration(milliseconds: 70));
        _tap(at);
      case 'spam': // x,y,count: hammering one button
        final p = arg.split(',');
        final at = Offset(double.parse(p[0]), double.parse(p[1]));
        for (var i = 0; i < int.parse(p[2]); i++) {
          _tap(at);
          await Future<void>.delayed(const Duration(milliseconds: 25));
        }
      case 'swipe': // x1,y1,x2,y2,ms
        final p = arg.split(',').map(double.parse).toList();
        await _swipe(Offset(p[0], p[1]), Offset(p[2], p[3]), p[4].round());
      case 'monkey': // count,intervalMs: random real buttons, fast
        final p = arg.split(',');
        final n = int.parse(p[0]), gap = int.parse(p[1]);
        final clock = Stopwatch()..start();
        for (var k = 0; k < n; k++) {
          // keep the pace: wait only for what is left of this tap's slot
          final due = gap * (k + 1);
          unawaited(_monkeyStep().catchError((Object e, StackTrace st) {
            // ignore: avoid_print
            print('[monkey] step failed: $e\n$st');
          }));
          final left = due - clock.elapsedMilliseconds;
          if (left > 0) await Future<void>.delayed(Duration(milliseconds: left));
        }
        // ignore: avoid_print
        print('[monkey] $n actions in ${clock.elapsedMilliseconds} ms '
            '(${(n * 1000 / clock.elapsedMilliseconds).toStringAsFixed(1)}/s)');
      case 'back': // like a back press, but never leaves the app
        await WidgetsBinding.instance.endOfFrame;
        final root = router.routerDelegate.navigatorKey.currentState;
        if (root != null && root.canPop()) await root.maybePop();
      case 'wait':
        await Future<void>.delayed(Duration(milliseconds: int.parse(arg)));
    }
    await Future<void>.delayed(const Duration(milliseconds: 450));
  }

  /// Centres of everything on screen that answers to a tap right now.
  List<Offset> _tappables() {
    final out = <Offset>[];
    final view = PlatformDispatcher.instance.views.first;
    final dpr = view.devicePixelRatio;
    final screen = Offset.zero & (view.physicalSize / dpr);
    for (final rv in RendererBinding.instance.renderViews) {
      final root = rv.owner?.semanticsOwner?.rootSemanticsNode;
      if (root == null) continue;
      void visit(SemanticsNode n, Matrix4 parent) {
        final m = n.transform == null ? parent : parent.multiplied(n.transform!);
        final d = n.getSemanticsData();
        if (d.hasAction(SemanticsAction.tap) && !d.flagsCollection.isHidden) {
          final r = MatrixUtils.transformRect(m, n.rect);
          final c = r.center / dpr;
          if (screen.contains(c)) out.add(c);
        }
        n.visitChildren((child) {
          visit(child, m);
          return true;
        });
      }
      visit(root, Matrix4.identity());
    }
    return out;
  }

  Future<void> _monkeyStep() async {
    monkeyTaps++;
    final view = PlatformDispatcher.instance.views.first;
    final size = view.physicalSize / view.devicePixelRatio;
    final roll = _rnd.nextDouble();
    if (roll < 0.06) {
      // a back press, on a settled frame (a real one never lands mid-push)
      await WidgetsBinding.instance.endOfFrame;
      final root = router.routerDelegate.navigatorKey.currentState;
      if (root != null && root.canPop()) await root.maybePop();
      return;
    }
    if (roll < 0.16) {
      // a swipe or a flick, any direction
      final a = Offset(_rnd.nextDouble() * size.width, 80 + _rnd.nextDouble() * (size.height - 160));
      final b = a + Offset((_rnd.nextDouble() - .5) * size.width, (_rnd.nextDouble() - .5) * size.height * .7);
      await _swipe(a, b, 60 + _rnd.nextInt(200));
      return;
    }
    // the button list is rebuilt every few taps; walking the tree every
    // 50 ms kept the monkey at half speed
    if (monkeyTaps % 3 == 0 || _cachedTargets.isEmpty) _cachedTargets = _tappables();
    final targets = _cachedTargets;
    final at = targets.isEmpty || roll < 0.22
        ? Offset(_rnd.nextDouble() * size.width, _rnd.nextDouble() * size.height)
        : targets[_rnd.nextInt(targets.length)];
    _tap(at);
    if (roll > 0.92) {
      // and sometimes a double tap
      await Future<void>.delayed(const Duration(milliseconds: 60));
      _tap(at);
    }
  }

  int _pointer = 1000;

  void _tap(Offset p) {
    final b = GestureBinding.instance;
    final id = ++_pointer;
    b.handlePointerEvent(
      PointerDownEvent(
        pointer: id,
        position: p,
        kind: PointerDeviceKind.touch,
        device: 7,
      ),
    );
    b.handlePointerEvent(
      PointerUpEvent(
        pointer: id,
        position: p,
        kind: PointerDeviceKind.touch,
        device: 7,
      ),
    );
  }

  Future<void> _swipe(Offset from, Offset to, int ms) async {
    final b = GestureBinding.instance;
    final id = ++_pointer;
    const steps = 12.0;
    b.handlePointerEvent(
      PointerDownEvent(
        pointer: id,
        position: from,
        kind: PointerDeviceKind.touch,
        device: 7,
      ),
    );
    for (var i = 1; i <= steps; i++) {
      await Future<void>.delayed(Duration(milliseconds: ms ~/ 12));
      final p = Offset.lerp(from, to, i / steps)!;
      b.handlePointerEvent(
        PointerMoveEvent(
          pointer: id,
          position: p,
          delta: (to - from) / steps,
          kind: PointerDeviceKind.touch,
          device: 7,
        ),
      );
    }
    b.handlePointerEvent(
      PointerUpEvent(
        pointer: id,
        position: to,
        kind: PointerDeviceKind.touch,
        device: 7,
      ),
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
