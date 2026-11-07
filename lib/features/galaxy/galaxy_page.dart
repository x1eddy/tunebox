import 'dart:math' as math;

import 'package:flutter/material.dart';
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

/// Your artists as a sky: big stars are the ones you play most, neighbours
/// sound alike or get played together. Pinch to zoom, tap a star, or draw a
/// loop around a cluster to play that corner of your taste.
class GalaxyPage extends ConsumerStatefulWidget {
  const GalaxyPage({super.key});

  @override
  ConsumerState<GalaxyPage> createState() => _GalaxyPageState();
}

class _GalaxyPageState extends ConsumerState<GalaxyPage>
    with SingleTickerProviderStateMixin {
  final _view = TransformationController();
  late final _twinkle = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 6),
  );
  bool _lassoMode = false;
  List<Offset> _lasso = const [];

  @override
  void initState() {
    super.initState();
    if (!ref.read(settingsProvider).reduceMotion) _twinkle.repeat();
  }

  @override
  void dispose() {
    _twinkle.dispose();
    _view.dispose();
    super.dispose();
  }

  static const _canvas = 900.0;

  Offset _pos(Star s) =>
      Offset((s.x + 1) / 2 * _canvas, (s.y + 1) / 2 * _canvas);

  double _radius(Star s, int maxPlays) =>
      7 + 24 * math.sqrt(s.plays / math.max(maxPlays, 1));

  Future<void> _playArtists(Set<String> keys) async {
    final library = await ref.read(dbProvider).library();
    final songs =
        library.where((s) => !s.blocked && keys.contains(artistKey(s))).toList()
          ..shuffle();
    if (songs.isEmpty) return;
    await ref.read(musicProvider).playAll(songs, origin: 'galaxy');
  }

  void _openStar(Star s) {
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
    );
  }

  void _finishLasso(Galaxy g) {
    final pts = _lasso;
    setState(() {
      _lasso = const [];
      _lassoMode = false;
    });
    if (pts.length < 6) return;
    // The lasso was drawn on screen; stars live in the zoomed canvas.
    final inverse = Matrix4.inverted(_view.value);
    final poly = [
      for (final p in pts)
        () {
          final c = MatrixUtils.transformPoint(inverse, p);
          return (c.dx, c.dy);
        }(),
    ];
    final picked = {
      for (final s in g.stars)
        if (insidePolygon(poly, _pos(s).dx, _pos(s).dy)) s.key,
    };
    final l = L.of(context);
    if (picked.isEmpty) {
      ScaffoldMessenger.of(context).showTimed(
        SnackBar(content: Text(l.glxLassoEmpty)),
      );
      return;
    }
    ScaffoldMessenger.of(context).showTimed(
      SnackBar(content: Text(l.glxLassoPlaying(picked.length))),
    );
    _playArtists(picked);
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
        title: Text(l.glxTitle),
        actions: [
          IconButton(
            tooltip: l.glxLasso,
            isSelected: _lassoMode,
            onPressed: () => setState(() => _lassoMode = !_lassoMode),
            icon: const Icon(Icons.gesture_rounded),
            selectedIcon: const Icon(Icons.gesture_rounded, color: Colors.amber),
          ),
          IconButton(
            tooltip: l.glxRecenter,
            onPressed: () => _view.value = Matrix4.identity(),
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
          return LayoutBuilder(
            builder: (context, c) {
              // start zoomed to fit the screen
              if (_view.value.isIdentity()) {
                final scale = math.min(c.maxWidth, c.maxHeight) / _canvas;
                _view.value = Matrix4.identity()
                  ..translateByDouble(
                    (c.maxWidth - _canvas * scale) / 2,
                    (c.maxHeight - _canvas * scale) / 2,
                    0,
                    1,
                  )
                  ..scaleByDouble(scale, scale, 1, 1);
              }
              return Stack(
                children: [
                  InteractiveViewer(
                    transformationController: _view,
                    constrained: false,
                    minScale: 0.15,
                    maxScale: 6,
                    panEnabled: !_lassoMode,
                    scaleEnabled: !_lassoMode,
                    boundaryMargin: const EdgeInsets.all(600),
                    child: GestureDetector(
                      onTapUp: (d) {
                        Star? hit;
                        var best = double.infinity;
                        for (final s in g.stars) {
                          final dist = (_pos(s) - d.localPosition).distance;
                          if (dist < _radius(s, maxPlays) + 18 && dist < best) {
                            best = dist;
                            hit = s;
                          }
                        }
                        if (hit != null) _openStar(hit);
                      },
                      child: AnimatedBuilder(
                        animation: Listenable.merge([_twinkle, _view]),
                        builder: (context, _) => CustomPaint(
                          size: const Size.square(_canvas),
                          painter: _SkyPainter(
                            galaxy: g,
                            pos: _pos,
                            radius: (s) => _radius(s, maxPlays),
                            twinkle: _twinkle.value,
                            zoom: _view.value.getMaxScaleOnAxis(),
                            labelStyle: t.textTheme.labelMedium!,
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
                        onPanUpdate: (d) => setState(
                          () => _lasso = [..._lasso, d.localPosition],
                        ),
                        onPanEnd: (_) => _finishLasso(g),
                        child: CustomPaint(painter: _LassoPainter(_lasso)),
                      ),
                    ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: Text(
                      _lassoMode ? l.glxLassoHint : l.glxHint,
                      textAlign: TextAlign.center,
                      style: t.textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class _SkyPainter extends CustomPainter {
  _SkyPainter({
    required this.galaxy,
    required this.pos,
    required this.radius,
    required this.twinkle,
    required this.zoom,
    required this.labelStyle,
  });

  final Galaxy galaxy;
  final Offset Function(Star) pos;
  final double Function(Star) radius;
  final double twinkle;
  final double zoom;
  final TextStyle labelStyle;

  @override
  void paint(Canvas canvas, Size size) {
    // faint background dust, the same every time
    final dust = math.Random(7);
    final dustPaint = Paint()..color = Colors.white.withValues(alpha: 0.18);
    for (var i = 0; i < 260; i++) {
      canvas.drawCircle(
        Offset(dust.nextDouble() * size.width, dust.nextDouble() * size.height),
        dust.nextDouble() * 1.4,
        dustPaint,
      );
    }

    final stars = galaxy.stars;
    for (final l in galaxy.links) {
      final a = stars[l.a], b = stars[l.b];
      canvas.drawLine(
        pos(a),
        pos(b),
        Paint()
          ..strokeWidth = 1.2 / zoom.clamp(0.4, 3)
          ..color = Color.lerp(
            tagColor(a.mainTag),
            tagColor(b.mainTag),
            0.5,
          )!.withValues(alpha: 0.12 + l.strength * 0.28),
      );
    }

    final byPlays = [...stars]..sort((a, b) => b.plays.compareTo(a.plays));
    // labels for the brightest; more appear as you zoom in
    final labelled = {
      for (final s in byPlays.take((14 * zoom * zoom).clamp(12, 90).round())) s.key,
    };
    for (var i = 0; i < stars.length; i++) {
      final s = stars[i];
      final p = pos(s);
      final r = radius(s);
      final c = tagColor(s.mainTag);
      final pulse = 0.85 + 0.15 * math.sin((twinkle + i * 0.137) * math.pi * 2);
      canvas.drawCircle(
        p,
        r * 2.6,
        Paint()
          ..shader = RadialGradient(
            colors: [c.withValues(alpha: 0.35 * pulse), c.withValues(alpha: 0)],
          ).createShader(Rect.fromCircle(center: p, radius: r * 2.6)),
      );
      canvas.drawCircle(p, r, Paint()..color = c);
      canvas.drawCircle(
        p,
        r * 0.45,
        Paint()..color = Colors.white.withValues(alpha: 0.85),
      );
      if (labelled.contains(s.key)) {
        final tp = TextPainter(
          text: TextSpan(
            text: s.name,
            style: labelStyle.copyWith(
              color: Colors.white.withValues(alpha: 0.9),
              // the same size on screen at any zoom
              fontSize: 12.5 / zoom.clamp(0.2, 4),
            ),
          ),
          textDirection: TextDirection.ltr,
          maxLines: 1,
          ellipsis: '…',
        )..layout(maxWidth: 160 / zoom.clamp(0.2, 4));
        tp.paint(canvas, p + Offset(-tp.width / 2, r + 4));
      }
    }
  }

  @override
  bool shouldRepaint(_SkyPainter old) =>
      old.twinkle != twinkle || old.zoom != zoom || old.galaxy != galaxy;
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
