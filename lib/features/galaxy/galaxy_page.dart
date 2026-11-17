import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show Ticker;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/credit.dart';
import '../../ai/galaxy.dart';
import '../../app/router.dart';
import '../../l10n/app_localizations.dart';
import '../../state/galaxy.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/common.dart';

/// A colour per genre, stable across launches, so "the house corner" is
/// always the same shade.
Color tagColor(String tag) {
  if (tag.isEmpty) return const Color(0xFFB0B8D0);
  var h = 0;
  for (final u in tag.codeUnits) {
    h = (h * 31 + u) & 0x7FFFFFFF;
  }
  return HSLColor.fromAHSL(1, (h % 360).toDouble(), 0.75, 0.68).toColor();
}

/// Your artists as a 3D cloud of stars: big stars are the ones you play
/// most, neighbours sound alike or get played together. Drag to turn it,
/// pinch to zoom, tap a star, or draw a loop around a cluster to play that
/// corner of your taste.
class GalaxyPage extends ConsumerStatefulWidget {
  const GalaxyPage({super.key});

  @override
  ConsumerState<GalaxyPage> createState() => _GalaxyPageState();
}

/// Where one star lands on screen this frame.
class _Projected {
  _Projected(this.index, this.at, this.scale, this.depth);
  final int index;
  final Offset at;

  /// perspective size factor (bigger = nearer)
  final double scale;

  /// -1 (nearest) .. 1 (farthest), for fog
  final double depth;
}

class _GalaxyPageState extends ConsumerState<GalaxyPage>
    with SingleTickerProviderStateMixin {
  // the camera
  double _yaw = 0.6, _pitch = -0.35, _zoom = 1;
  double _yawV = 0, _pitchV = 0; // rad/s, after a flick
  double _startZoom = 1;
  late final Ticker _ticker = createTicker(_tick);
  Duration _last = Duration.zero;
  bool _dragging = false;
  final _frame = ValueNotifier<int>(0);

  bool _lassoMode = false;
  List<Offset> _lasso = const [];
  List<_Projected> _projected = const [];

  late final bool _calm = ref.read(settingsProvider).reduceMotion;

  @override
  void initState() {
    super.initState();
    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    _frame.dispose();
    super.dispose();
  }

  void _tick(Duration now) {
    final dt = ((now - _last).inMicroseconds / 1e6).clamp(0.0, 0.05);
    _last = now;
    if (_dragging) return;
    final moving = _yawV.abs() > 0.002 || _pitchV.abs() > 0.002;
    if (_calm && !moving) return; // still: no frames at all
    // a flick keeps turning and slows down; otherwise a slow drift
    _yaw += (_yawV + (_calm ? 0 : 0.06)) * dt;
    _pitch = (_pitch + _pitchV * dt).clamp(-1.35, 1.35);
    final decay = math.pow(0.04, dt).toDouble();
    _yawV *= decay;
    _pitchV *= decay;
    _frame.value++;
  }

  void _recenter() {
    _yaw = 0.6;
    _pitch = -0.35;
    _zoom = 1;
    _yawV = _pitchV = 0;
    _frame.value++;
  }

  /// Projects every star for a canvas of [size] with the current camera.
  List<_Projected> _project(Galaxy g, Size size) {
    const camera = 3.4; // distance from the centre, in galaxy units
    final cy = math.cos(_yaw), sy = math.sin(_yaw);
    final cp = math.cos(_pitch), sp = math.sin(_pitch);
    final unit = math.min(size.width, size.height) * 0.42 * _zoom;
    final centre = size.center(Offset.zero);
    final out = <_Projected>[];
    for (var i = 0; i < g.stars.length; i++) {
      final s = g.stars[i];
      final x1 = s.x * cy - s.z * sy;
      final z1 = s.x * sy + s.z * cy;
      final y2 = s.y * cp - z1 * sp;
      final z2 = s.y * sp + z1 * cp;
      final f = camera / (camera + z2);
      out.add(
        _Projected(
          i,
          centre + Offset(x1, y2) * unit * f,
          f,
          z2.clamp(-1.0, 1.0),
        ),
      );
    }
    // far ones first, so near stars are drawn over them
    out.sort((a, b) => b.depth.compareTo(a.depth));
    return out;
  }

  double _radius(Star s, int maxPlays) =>
      5 + 16 * math.sqrt(s.plays / math.max(maxPlays, 1));

  Future<void> _playArtists(Set<String> keys) async {
    final library = await ref.read(dbProvider).library();
    final songs =
        library.where((s) => !s.blocked && keys.contains(artistKey(s))).toList()
          ..shuffle();
    if (songs.isEmpty) return;
    await ref.read(musicProvider).playAll(songs, origin: 'galaxy');
  }

  bool _sheetOpen = false;

  void _openStar(Star s) {
    // a burst of taps must not stack a pile of sheets
    if (_sheetOpen) return;
    _sheetOpen = true;
    final l = L.of(context);
    final music = ref.read(musicProvider);
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      builder: (sheet) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor: tagColor(s.mainTag)),
              title: Text(
                s.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Text(s.tags.join(' · ')),
            ),
            ListTile(
              leading: const Icon(Icons.play_arrow_rounded),
              title: Text(l.glxPlay(s.name)),
              onTap: () {
                Navigator.pop(sheet);
                _playArtists({s.key});
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_search_rounded),
              title: Text(l.glxOpen),
              onTap: () {
                Navigator.pop(sheet);
                pushDetail(context, 'artist/${Uri.encodeComponent(s.name)}');
              },
            ),
            ListTile(
              leading: const Icon(Icons.trending_up_rounded),
              title: Text(l.glxMore),
              onTap: () {
                Navigator.pop(sheet);
                music.setArtistRule(s.name, 1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.block_rounded),
              title: Text(l.glxNever),
              onTap: () {
                Navigator.pop(sheet);
                music.setArtistRule(s.name, -1);
                ref.invalidate(galaxyProvider);
              },
            ),
          ],
        ),
      ),
    ).whenComplete(() => _sheetOpen = false);
  }

  void _finishLasso(Galaxy g) {
    final pts = _lasso;
    setState(() {
      _lasso = const [];
      _lassoMode = false;
    });
    if (pts.length < 6) return;
    final poly = [for (final p in pts) (p.dx, p.dy)];
    final picked = {
      for (final p in _projected)
        if (insidePolygon(poly, p.at.dx, p.at.dy)) g.stars[p.index].key,
    };
    final l = L.of(context);
    if (picked.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showTimed(SnackBar(content: Text(l.glxLassoEmpty)));
      return;
    }
    ScaffoldMessenger.of(
      context,
    ).showTimed(SnackBar(content: Text(l.glxLassoPlaying(picked.length))));
    _playArtists(picked);
  }

  void _tapAt(Galaxy g, Offset at, int maxPlays) {
    // the nearest star under the finger wins (the list runs far to near)
    for (final p in _projected.reversed) {
      final r = _radius(g.stars[p.index], maxPlays) * p.scale + 14;
      if ((p.at - at).distance < r) {
        _openStar(g.stars[p.index]);
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    final galaxy = ref.watch(galaxyProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF05060C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: Text(
          l.glxTitle,
          style: t.textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(
            tooltip: l.glxLasso,
            isSelected: _lassoMode,
            onPressed: () => setState(() => _lassoMode = !_lassoMode),
            icon: const Icon(Icons.gesture_rounded),
            selectedIcon: const Icon(
              Icons.gesture_rounded,
              color: Colors.amber,
            ),
          ),
          IconButton(
            tooltip: l.glxRecenter,
            onPressed: _recenter,
            icon: const Icon(Icons.center_focus_strong_rounded),
          ),
        ],
      ),
      body: galaxy.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (g) {
          if (g.stars.length < 3) {
            return Theme(
              data: ThemeData.dark(),
              child: EmptyState(
                icon: Icons.auto_awesome_outlined,
                title: l.glxEmpty,
                body: l.glxEmptyBody,
              ),
            );
          }
          final maxPlays = g.stars.map((s) => s.plays).reduce(math.max);
          return Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTapUp: _lassoMode
                      ? null
                      : (d) => _tapAt(g, d.localPosition, maxPlays),
                  onScaleStart: _lassoMode
                      ? null
                      : (_) {
                          _dragging = true;
                          _startZoom = _zoom;
                          _yawV = _pitchV = 0;
                        },
                  onScaleUpdate: _lassoMode
                      ? null
                      : (d) {
                          if (d.pointerCount > 1) {
                            _zoom = (_startZoom * d.scale).clamp(0.5, 4.0);
                          } else {
                            _yaw += d.focalPointDelta.dx * 0.008;
                            _pitch = (_pitch - d.focalPointDelta.dy * 0.008)
                                .clamp(-1.35, 1.35);
                          }
                          _frame.value++;
                        },
                  onScaleEnd: _lassoMode
                      ? null
                      : (d) {
                          _dragging = false;
                          final v = d.velocity.pixelsPerSecond;
                          _yawV = (v.dx * 0.008 * 0.35).clamp(-6.0, 6.0);
                          _pitchV = (-v.dy * 0.008 * 0.35).clamp(-6.0, 6.0);
                        },
                  child: RepaintBoundary(
                    child: CustomPaint(
                      painter: _SkyPainter(
                        galaxy: g,
                        repaint: _frame,
                        project: (size) => _projected = _project(g, size),
                        radius: (s) => _radius(s, maxPlays),
                        yaw: () => _yaw,
                        pitch: () => _pitch,
                        zoom: () => _zoom,
                        labelStyle: t.textTheme.labelMedium!.copyWith(
                          color: Colors.white.withValues(alpha: 0.9),
                          fontSize: 12.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (_lassoMode)
                Positioned.fill(
                  child: GestureDetector(
                    onPanStart: (d) =>
                        setState(() => _lasso = [d.localPosition]),
                    onPanUpdate: (d) =>
                        setState(() => _lasso = [..._lasso, d.localPosition]),
                    onPanEnd: (_) => _finishLasso(g),
                    child: CustomPaint(painter: _LassoPainter(_lasso)),
                  ),
                ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: IgnorePointer(
                  child: Text(
                    _lassoMode ? l.glxLassoHint : l.glxHint,
                    textAlign: TextAlign.center,
                    style: t.textTheme.bodySmall?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Glow sprites, one per colour, drawn once and reused every frame: making
/// a gradient shader per star per frame was most of the old lag.
final _sprites = <int, ui.Image>{};

ui.Image _sprite(Color c) => _sprites.putIfAbsent(c.toARGB32(), () {
  const size = 96.0;
  final rec = ui.PictureRecorder();
  final canvas = Canvas(rec);
  const centre = Offset(size / 2, size / 2);
  canvas.drawCircle(
    centre,
    size / 2,
    Paint()
      ..shader = RadialGradient(
        colors: [c.withValues(alpha: 0.42), c.withValues(alpha: 0)],
      ).createShader(Rect.fromCircle(center: centre, radius: size / 2)),
  );
  canvas.drawCircle(centre, size * 0.19, Paint()..color = c);
  canvas.drawCircle(
    centre,
    size * 0.085,
    Paint()..color = Colors.white.withValues(alpha: 0.9),
  );
  return rec.endRecording().toImageSync(size.toInt(), size.toInt());
});

/// Faint far-away stars on a big sphere round the galaxy; they turn with
/// it, slower, which is most of what makes it feel deep.
final Float32List _dust = () {
  final rnd = math.Random(7);
  final out = Float32List(600 * 3);
  for (var i = 0; i < 600; i++) {
    // uniform on a sphere
    final u = rnd.nextDouble() * 2 - 1, a = rnd.nextDouble() * math.pi * 2;
    final r = math.sqrt(1 - u * u);
    out[i * 3] = r * math.cos(a) * 4;
    out[i * 3 + 1] = u * 4;
    out[i * 3 + 2] = r * math.sin(a) * 4;
  }
  return out;
}();

class _SkyPainter extends CustomPainter {
  _SkyPainter({
    required this.galaxy,
    required Listenable repaint,
    required this.project,
    required this.radius,
    required this.yaw,
    required this.pitch,
    required this.zoom,
    required this.labelStyle,
  }) : super(repaint: repaint);

  final Galaxy galaxy;
  final List<_Projected> Function(Size) project;
  final double Function(Star) radius;
  final double Function() yaw, pitch, zoom;
  final TextStyle labelStyle;

  /// Names are laid out once, not every frame.
  static final _labels = <String, TextPainter>{};

  TextPainter _label(Star s) => _labels.putIfAbsent(
    '${s.key}|${labelStyle.hashCode}',
    () => TextPainter(
      text: TextSpan(text: s.name, style: labelStyle),
      textDirection: TextDirection.ltr,
      maxLines: 1,
      ellipsis: '…',
    )..layout(maxWidth: 160),
  );

  @override
  void paint(Canvas canvas, Size size) {
    final stars = galaxy.stars;
    final centre = size.center(Offset.zero);
    final cy = math.cos(yaw()), sy = math.sin(yaw());
    final cp = math.cos(pitch()), sp = math.sin(pitch());

    // background dust, in two brightness buckets, two draw calls in all
    final unit = math.min(size.width, size.height) * 0.42;
    final near = <double>[], far = <double>[];
    for (var i = 0; i < _dust.length; i += 3) {
      final x = _dust[i], y = _dust[i + 1], z = _dust[i + 2];
      final x1 = x * cy - z * sy;
      final z1 = x * sy + z * cy;
      final y2 = y * cp - z1 * sp;
      final z2 = y * sp + z1 * cp;
      if (z2 < -3.2) continue; // behind the camera
      final f = 7 / (7 + z2);
      final p = centre + Offset(x1, y2) * unit * 0.55 * f;
      (z2 < 0 ? near : far)
        ..add(p.dx)
        ..add(p.dy);
    }
    final dot = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Colors.white.withValues(alpha: 0.32)
      ..strokeWidth = 1.6;
    canvas.drawRawPoints(ui.PointMode.points, Float32List.fromList(near), dot);
    canvas.drawRawPoints(
      ui.PointMode.points,
      Float32List.fromList(far),
      dot
        ..color = Colors.white.withValues(alpha: 0.14)
        ..strokeWidth = 1.1,
    );

    final proj = project(size);
    final at = List<_Projected?>.filled(stars.length, null);
    for (final p in proj) {
      at[p.index] = p;
    }

    // links between neighbours, fainter with distance
    final line = Paint()..strokeWidth = 1;
    for (final l in galaxy.links) {
      final a = at[l.a]!, b = at[l.b]!;
      final fog = 1 - ((a.depth + b.depth) / 2 + 1) / 2 * 0.75;
      line.color = Color.lerp(
        tagColor(stars[l.a].mainTag),
        tagColor(stars[l.b].mainTag),
        0.5,
      )!.withValues(alpha: (0.08 + l.strength * 0.24) * fog);
      canvas.drawLine(a.at, b.at, line);
    }

    // stars, far to near; names for the biggest near ones
    final byPlays = [...stars]..sort((a, b) => b.plays.compareTo(a.plays));
    final named = {
      for (final s in byPlays.take(
        (12 * zoom() * zoom()).clamp(10, 90).round(),
      ))
        s.key,
    };
    final paint = Paint()..filterQuality = FilterQuality.low;
    final labels = <(Offset, Star, double)>[];
    for (final p in proj) {
      final s = stars[p.index];
      final r = radius(s) * p.scale;
      final fog = 1 - (p.depth + 1) / 2 * 0.65; // far stars fade
      final img = _sprite(tagColor(s.mainTag));
      paint.color = Colors.white.withValues(alpha: fog.clamp(0.25, 1.0));
      // the sprite's core is ~0.38 of its width: the glow reaches 2.6r
      canvas.drawImageRect(
        img,
        Rect.fromLTWH(0, 0, img.width.toDouble(), img.height.toDouble()),
        Rect.fromCircle(center: p.at, radius: r * 2.6),
        paint,
      );
      if (named.contains(s.key) && p.depth < 0.35) labels.add((p.at, s, r));
    }
    // names last, biggest stars first, never on top of each other
    labels.sort((a, b) => b.$2.plays.compareTo(a.$2.plays));
    final taken = <Rect>[];
    for (final (at, s, r) in labels) {
      final tp = _label(s);
      final box = Rect.fromLTWH(
        at.dx - tp.width / 2,
        at.dy + r + 4,
        tp.width,
        tp.height,
      );
      if (taken.any((t) => t.overlaps(box.inflate(2)))) continue;
      taken.add(box);
      tp.paint(canvas, box.topLeft);
    }
  }

  @override
  bool shouldRepaint(_SkyPainter old) =>
      old.galaxy != galaxy || old.labelStyle != labelStyle;
}

class _LassoPainter extends CustomPainter {
  _LassoPainter(this.points);
  final List<Offset> points;

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length < 2) return;
    final path = Path()..addPolygon(points, true);
    canvas.drawPath(
      path,
      Paint()..color = Colors.amber.withValues(alpha: 0.12),
    );
    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.amber
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.5,
    );
  }

  @override
  bool shouldRepaint(_LassoPainter old) => old.points != points;
}
