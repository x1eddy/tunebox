// Dev-only "smart monkey". Unlike the plain monkey, which only notices the
// app breaking, this one also checks that the app *looks and behaves* right:
//
//  * a button the user can't reach because something is drawn over it, at the
//    end of its list where scrolling can't uncover it (e.g. a pill over a row)
//  * text that is cut off without an ellipsis, or runs off the screen
//  * a switch / checkbox / chip that doesn't change when tapped
//  * buttons with no label (screen readers can't name them) and tiny targets
//  * which pages and buttons were reached, so coverage is a number
//
// It also long-presses, types into fields and pinches, which the plain monkey
// never did. Findings are printed as `[audit] kind | detail | page` lines, once
// per distinct finding; the driver screenshots each one.
part of 'tour.dart';

class _Target {
  _Target(this.node, this.rect, this.data, this.scrollAncestors);
  final SemanticsNode node;
  final Rect rect; // logical pixels, global
  final SemanticsData data;

  /// Scroll actions still available on scrollable ancestors.
  final Set<SemanticsAction> scrollAncestors;

  String get label {
    final s = [data.label, data.value, data.tooltip, data.hint]
        .where((e) => e.trim().isNotEmpty)
        .join(' / ')
        .replaceAll('\n', ' ')
        .trim();
    return s.length > 60 ? '${s.substring(0, 60)}…' : s;
  }

  Offset get center => rect.center;
  bool get tappable => data.hasAction(SemanticsAction.tap);
  bool get longPressable => data.hasAction(SemanticsAction.longPress);
  bool get isField => data.flagsCollection.isTextField;
  bool get isToggle =>
      data.flagsCollection.isToggled != Tristate.none ||
      data.flagsCollection.isChecked != CheckedState.none;
  String get toggleState =>
      '${data.flagsCollection.isToggled}/${data.flagsCollection.isChecked}';
}

class _Explorer {
  final reported = <String>{};
  final pages = <String>{};
  final labels = <String>{};
  final tapsByLabel = <String, int>{};
  int findings = 0;
  int steps = 0;
  // a covered button counts only if it is still covered on the next audit
  final suspectCovered = <String>{};

  static const queries = [
    'michael jackson',
    'a',
    'zzzzzzqqqq',
    '😀🎵',
    'the',
    '  ',
    'Beyoncé',
    'lo-fi beats to study',
    'ÄÖÜß',
    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
    '"; DROP TABLE songs; --',
    'Daft Punk',
    '1',
    'rock',
    'سلام',
    '日本',
  ];
}

final _explorer = _Explorer();

extension on _TourDriverState {
  String get _page {
    try {
      return router.routerDelegate.currentConfiguration.uri.path;
    } catch (_) {
      return '?';
    }
  }

  /// Every semantics node with something to do, with its on-screen rect.
  List<_Target> _targets() {
    final out = <_Target>[];
    final view = PlatformDispatcher.instance.views.first;
    final dpr = view.devicePixelRatio;
    for (final rv in RendererBinding.instance.renderViews) {
      final root = rv.owner?.semanticsOwner?.rootSemanticsNode;
      if (root == null) continue;
      void visit(SemanticsNode n, Matrix4 parent, Set<SemanticsAction> scroll) {
        final m = n.transform == null
            ? parent
            : parent.multiplied(n.transform!);
        final d = n.getSemanticsData();
        var s = scroll;
        for (final a in const [
          SemanticsAction.scrollUp,
          SemanticsAction.scrollDown,
          SemanticsAction.scrollLeft,
          SemanticsAction.scrollRight,
        ]) {
          if (d.hasAction(a)) s = {...s, a};
        }
        if (!d.flagsCollection.isHidden &&
            (d.hasAction(SemanticsAction.tap) ||
                d.hasAction(SemanticsAction.longPress) ||
                d.flagsCollection.isTextField)) {
          final r = MatrixUtils.transformRect(m, n.rect);
          out.add(
            _Target(
              n,
              Rect.fromLTRB(
                r.left / dpr,
                r.top / dpr,
                r.right / dpr,
                r.bottom / dpr,
              ),
              d,
              s,
            ),
          );
        }
        n.visitChildren((c) {
          visit(c, m, s);
          return true;
        });
      }

      visit(root, Matrix4.identity(), const {});
    }
    return out;
  }

  Size get _screen {
    final view = PlatformDispatcher.instance.views.first;
    return view.physicalSize / view.devicePixelRatio;
  }

  void _report(String kind, String detail, [Rect? at]) {
    // small, repeated things (unlabelled rows, the same tiny button on every
    // page) are reported once, not once per row and per page
    final key = switch (kind) {
      'button without a label' =>
        '$kind|${at?.width.round()}x${at?.height.round()}',
      'tiny tap target' => '$kind|$detail',
      _ => '$kind|$detail|$_page',
    };
    if (!_explorer.reported.add(key)) return;
    _explorer.findings++;
    final shot =
        'finding-${DateTime.now().millisecondsSinceEpoch}-${_explorer.findings}.png';
    // ignore: avoid_print
    print('[audit] $kind | $detail | $_page | $shot');
    unawaited(_snap(shot, at));
  }

  /// A screenshot taken by the app itself, at this exact frame, with a red
  /// box around [at]. Saved in \$TB_SHOTS (or /tmp/tunebox_shots).
  Future<void> _snap(String name, [Rect? at]) async {
    try {
      final rv = RendererBinding.instance.renderViews.first;
      final layer = rv.debugLayer;
      if (layer is! OffsetLayer) return;
      final size = _screen;
      final img = await layer.toImage(Offset.zero & size);
      final rec = PictureRecorder();
      final c = Canvas(rec);
      c.drawImage(img, Offset.zero, Paint());
      if (at != null) {
        c.drawRect(
          at.inflate(3),
          Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 4
            ..color = const Color(0xFFFF0000),
        );
      }
      final picture = rec.endRecording();
      final out = await picture.toImage(
        size.width.round(),
        size.height.round(),
      );
      final png = await out.toByteData(format: ImageByteFormat.png);
      picture.dispose();
      img.dispose();
      out.dispose();
      if (png == null) return;
      final dir = Directory(
        Platform.environment['TB_SHOTS'] ?? '/tmp/tunebox_shots',
      )..createSync(recursive: true);
      File('${dir.path}/$name').writeAsBytesSync(png.buffer.asUint8List());
    } catch (e) {
      // ignore: avoid_print
      print('[audit] screenshot failed: $e');
    }
  }

  /// Does a finger at [p] actually reach [t], or is something on top of it?
  bool _reaches(_Target t, Offset p, [Set<int>? reachedOut]) {
    final hit = HitTestResult();
    RendererBinding.instance.hitTestInView(
      hit,
      p,
      PlatformDispatcher.instance.views.first.viewId,
    );
    final reached = reachedOut ?? <int>{};
    for (final e in hit.path) {
      final target = e.target;
      if (target is! RenderObject) continue;
      RenderObject? ro = target;
      while (ro != null) {
        final s = ro.debugSemantics;
        if (s != null) reached.add(s.id);
        ro = ro.parent;
      }
    }
    if (reached.isEmpty || reached.contains(t.node.id)) return true;
    var related = false;
    t.node.visitChildren((c) {
      if (reached.contains(c.id)) related = true;
      return !related;
    });
    return related;
  }

  Future<void> _settle() async {
    await WidgetsBinding.instance.endOfFrame;
    await Future<void>.delayed(const Duration(milliseconds: 450));
    await WidgetsBinding.instance.endOfFrame;
  }

  // ---------------------------------------------------------------- actions

  Future<void> _longPress(Offset p) async {
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
    await Future<void>.delayed(const Duration(milliseconds: 650));
    b.handlePointerEvent(
      PointerUpEvent(
        pointer: id,
        position: p,
        kind: PointerDeviceKind.touch,
        device: 7,
      ),
    );
  }

  Future<void> _pinch(Offset c, double from, double to) async {
    final b = GestureBinding.instance;
    final a = ++_pointer, z = ++_pointer;
    Offset pa(double d) => c - Offset(d / 2, 0);
    Offset pz(double d) => c + Offset(d / 2, 0);
    b.handlePointerEvent(
      PointerDownEvent(
        pointer: a,
        position: pa(from),
        kind: PointerDeviceKind.touch,
        device: 8,
      ),
    );
    b.handlePointerEvent(
      PointerDownEvent(
        pointer: z,
        position: pz(from),
        kind: PointerDeviceKind.touch,
        device: 9,
      ),
    );
    for (var i = 1; i <= 10; i++) {
      await Future<void>.delayed(const Duration(milliseconds: 16));
      final d = from + (to - from) * i / 10;
      final step = (to - from) / 20;
      b.handlePointerEvent(
        PointerMoveEvent(
          pointer: a,
          position: pa(d),
          delta: Offset(-step, 0),
          kind: PointerDeviceKind.touch,
          device: 8,
        ),
      );
      b.handlePointerEvent(
        PointerMoveEvent(
          pointer: z,
          position: pz(d),
          delta: Offset(step, 0),
          kind: PointerDeviceKind.touch,
          device: 9,
        ),
      );
    }
    b.handlePointerEvent(
      PointerUpEvent(
        pointer: a,
        position: pa(to),
        kind: PointerDeviceKind.touch,
        device: 8,
      ),
    );
    b.handlePointerEvent(
      PointerUpEvent(
        pointer: z,
        position: pz(to),
        kind: PointerDeviceKind.touch,
        device: 9,
      ),
    );
  }

  Future<void> _type(_Target field) async {
    _tap(field.center);
    await WidgetsBinding.instance.endOfFrame;
    final q = _Explorer.queries[_rnd.nextInt(_Explorer.queries.length)];
    final owner =
        RendererBinding.instance.renderViews.first.owner?.semanticsOwner;
    // re-find the field: tapping it may have rebuilt the node
    final now = _targets().where((t) => t.isField).toList();
    final f = now.isEmpty ? field : now.first;
    if (owner != null && f.data.hasAction(SemanticsAction.setText)) {
      owner.performAction(f.node.id, SemanticsAction.setText, q);
    }
    // sometimes submit, like pressing enter on the keyboard
    if (_rnd.nextBool()) {
      await Future<void>.delayed(const Duration(milliseconds: 120));
      FocusManager.instance.primaryFocus?.context
          ?.findAncestorStateOfType<EditableTextState>()
          ?.performAction(TextInputAction.search);
    }
  }

  /// Taps a switch / checkbox / chip and checks it really changed.
  Future<void> _tapToggle(_Target t) async {
    final page = _page;
    final before = t.toggleState;
    final label = t.label;
    if (!_reaches(t, t.center)) {
      _tap(t.center); // still tap; just don't judge the result
      return;
    }
    _tap(t.center);
    await _settle();
    if (_page != page) return; // it opened something instead; fine
    for (final n in _targets()) {
      if (n.label == label && (n.rect.center - t.center).distance < 24) {
        if (n.toggleState == before) {
          _report('switch did not change', '"$label" stayed $before', n.rect);
        }
        return;
      }
    }
  }

  // ----------------------------------------------------------------- audits

  /// Everything that can be checked on a still frame.
  void _audit() {
    final screen = Offset.zero & _screen;
    final targets = _targets();
    _explorer.pages.add(_page);
    final ids = <int, _Target>{for (final t in targets) t.node.id: t};

    for (final t in targets) {
      if (!t.tappable || t.isField) continue;
      final r = t.rect;
      if (!screen.overlaps(r) || r.width < 1 || r.height < 1) continue;
      final visible = r.intersect(screen);
      if (visible.width < r.width * .9 || visible.height < r.height * .9) {
        continue;
      }

      if (t.label.isEmpty) {
        _report('button without a label', 'at ${_fmt(r)}', r);
      }
      if (r.shortestSide < 28) {
        _report(
          'tiny tap target',
          '"${t.label}" ${r.width.round()}×${r.height.round()}',
          r,
        );
      }

      // Is something else drawn over the middle of this button?
      final reached = <int>{};
      if (_reaches(t, visible.center, reached)) continue;
      // Content scrolled under the nav bar is normal while the list can still
      // scroll to uncover it. It's a bug when it can't.
      final canReveal =
          t.scrollAncestors.contains(SemanticsAction.scrollUp) ||
          t.scrollAncestors.contains(SemanticsAction.scrollDown);
      if (canReveal) continue;
      String? coverName;
      for (final id in reached) {
        if (ids[id] != null && ids[id]!.label.isNotEmpty) {
          coverName = ids[id]!.label;
          break;
        }
      }
      final key = '${t.label}@$_page';
      if (_explorer.suspectCovered.remove(key)) {
        _report(
          'button covered by something',
          '"${t.label}" under ${coverName == null ? 'another layer' : '"$coverName"'}',
          r,
        );
      } else {
        _explorer.suspectCovered.add(key);
      }
    }

    // Text cut off without an ellipsis, or drawn off the screen. Only text a
    // person can actually see counts: not pages behind this one, not offstage
    // tabs, not icons.
    final letters = RegExp(r'[\p{L}\p{N}]', unicode: true);
    final view = PlatformDispatcher.instance.views.first;
    bool seen(RenderParagraph o, Rect box) {
      final part = box.intersect(screen);
      if (part.isEmpty) return false;
      final hit = HitTestResult();
      RendererBinding.instance.hitTestInView(hit, part.center, view.viewId);
      return hit.path.any((e) => identical(e.target, o));
    }

    for (final rv in RendererBinding.instance.renderViews) {
      void walk(RenderObject o, bool inHorizontalScroll) {
        if (o is RenderOffstage && o.offstage) return;
        var h = inHorizontalScroll;
        if (o is RenderViewportBase && o.axis == Axis.horizontal) h = true;
        if (o is RenderParagraph && o.attached && o.hasSize) {
          final text = o.text.toPlainText().replaceAll('\n', ' ').trim();
          if (letters.hasMatch(text)) {
            final short = text.length > 50 ? '${text.substring(0, 50)}…' : text;
            final box = MatrixUtils.transformRect(
              o.getTransformTo(null),
              Offset.zero & o.size,
            );
            final cut =
                o.didExceedMaxLines &&
                o.overflow != TextOverflow.ellipsis &&
                o.overflow != TextOverflow.fade;
            final offEdge =
                !h &&
                (box.left < -2 || box.right > screen.right + 2) &&
                box.top >= 0 &&
                box.bottom <= screen.bottom;
            if ((cut || offEdge) && seen(o, box)) {
              _report(
                cut ? 'text cut off (no …)' : 'text runs off the screen',
                '"$short"',
                box,
              );
            }
          }
        }
        o.visitChildren((c) => walk(c, h));
      }

      walk(rv, false);
    }
  }

  String _fmt(Rect r) =>
      '${r.left.round()},${r.top.round()} ${r.width.round()}×${r.height.round()}';

  // ------------------------------------------------------------------ loop

  Future<void> _explore(int count, int intervalMs) async {
    final clock = Stopwatch()..start();
    for (var i = 0; i < count; i++) {
      final due = (i + 1) * intervalMs;
      try {
        await _exploreStep(i);
      } catch (e, st) {
        // ignore: avoid_print
        print('[explore] step failed: $e\n$st');
      }
      final left = due - clock.elapsedMilliseconds;
      if (left > 0) await Future<void>.delayed(Duration(milliseconds: left));
    }
    final ex = _explorer;
    final cache = PaintingBinding.instance.imageCache;
    // ignore: avoid_print
    print(
      '[mem] imageCache=${cache.currentSizeBytes >> 20}MB '
      'n=${cache.currentSize} live=${cache.liveImageCount} '
      'pending=${cache.pendingImageCount}',
    );
    // ignore: avoid_print
    print(
      '[coverage] pages=${ex.pages.length} buttons=${ex.labels.length} '
      'findings=${ex.findings} pages: ${(ex.pages.toList()..sort()).join(' ')}',
    );
  }

  Future<void> _exploreStep(int i) async {
    _explorer.steps++;
    // every 40 steps: stop, let the screen settle, and look at it
    if (i % 40 == 39) {
      await _settle();
      final before = _explorer.findings;
      final newPage = !_explorer.pages.contains(_page);
      _audit();
      if (newPage) {
        // ignore: avoid_print
        final shot = 'page-${DateTime.now().millisecondsSinceEpoch}.png';
        // ignore: avoid_print
        print('[page] $_page | $shot');
        unawaited(_snap(shot));
      }
      // hold still so the driver's screenshot shows what was found
      if (newPage || _explorer.findings > before) {
        await Future<void>.delayed(const Duration(milliseconds: 900));
      }
      return;
    }
    final size = _screen;
    final roll = _rnd.nextDouble();
    if (roll < 0.05) {
      await WidgetsBinding.instance.endOfFrame;
      final root = router.routerDelegate.navigatorKey.currentState;
      if (root != null && root.canPop()) await root.maybePop();
      return;
    }
    if (roll < 0.14) {
      final a = Offset(
        _rnd.nextDouble() * size.width,
        80 + _rnd.nextDouble() * (size.height - 160),
      );
      final b =
          a +
          Offset(
            (_rnd.nextDouble() - .5) * size.width,
            (_rnd.nextDouble() - .5) * size.height * .7,
          );
      await _swipe(a, b, 60 + _rnd.nextInt(200));
      return;
    }
    if (roll < 0.16) {
      final c = Offset(size.width / 2, size.height / 2);
      final zoomIn = _rnd.nextBool();
      await _pinch(c, zoomIn ? 60 : 260, zoomIn ? 260 : 60);
      return;
    }
    final targets = _targets()
        .where((t) => (Offset.zero & size).contains(t.center))
        .toList();
    if (targets.isEmpty) {
      _tap(
        Offset(_rnd.nextDouble() * size.width, _rnd.nextDouble() * size.height),
      );
      return;
    }
    // Prefer buttons tapped least so far: reaches deep pages, not just the
    // same ten buttons over and over.
    targets.shuffle(_rnd);
    targets.sort(
      (a, b) => (_explorer.tapsByLabel[a.label] ?? 0).compareTo(
        _explorer.tapsByLabel[b.label] ?? 0,
      ),
    );
    final t =
        targets[_rnd.nextDouble() < .6 ? 0 : _rnd.nextInt(targets.length)];
    _explorer.labels.add(t.label);
    _explorer.tapsByLabel.update(t.label, (n) => n + 1, ifAbsent: () => 1);

    if (t.isField && _rnd.nextDouble() < .7) {
      await _type(t);
    } else if (t.longPressable && _rnd.nextDouble() < .5) {
      await _longPress(t.center);
    } else if (t.isToggle && t.tappable) {
      await _tapToggle(t);
    } else {
      _tap(t.center);
      if (roll > 0.93) {
        await Future<void>.delayed(const Duration(milliseconds: 60));
        _tap(t.center);
      }
    }
  }
}
