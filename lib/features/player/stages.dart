import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/appearance.dart';
import '../../ui/artwork.dart';

/// The big area of the player. What it looks like is a choice in the
/// Appearance studio; everything around it (title, seek bar, controls) stays
/// the same so muscle memory survives a change of style.
class PlayerStage extends StatelessWidget {
  const PlayerStage({
    super.key,
    required this.song,
    required this.style,
    required this.playing,
    required this.speed,
    required this.reduceMotion,
    this.onDoubleTap,
  });

  final Song song;
  final PlayerStyle style;
  final bool playing;
  final double speed;
  final bool reduceMotion;
  final VoidCallback? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    final stage = switch (style) {
      PlayerStyle.classic => _Classic(song: song),
      PlayerStyle.fullBleed => _Classic(song: song, bleed: true),
      PlayerStyle.vinyl => _Vinyl(
        song: song,
        playing: playing && !reduceMotion,
        speed: speed,
      ),
      PlayerStyle.cassette => _Cassette(
        song: song,
        playing: playing && !reduceMotion,
        speed: speed,
      ),
      PlayerStyle.minimal => _Minimal(song: song),
    };
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      behavior: HitTestBehavior.opaque,
      child: stage,
    );
  }
}

class _Classic extends StatelessWidget {
  const _Classic({required this.song, this.bleed = false});
  final Song song;
  final bool bleed;

  @override
  Widget build(BuildContext context) {
    final art = CoverArt(
      song: song,
      radius: bleed ? BorderRadius.circular(6) : R.hero,
      heroTag: 'player-art',
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: bleed ? 4 : 26, vertical: 8),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: R.hero,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: bleed ? 0.25 : 0.42),
                  blurRadius: 24,
                  offset: const Offset(0, 14),
                ),
              ],
            ),
            child: art,
          ),
        ),
      ),
    );
  }
}

/// Turns at real record speed relative to playback (33⅓ rpm × speed), stops
/// in place on pause, and the tonearm lifts off.
class _Vinyl extends StatefulWidget {
  const _Vinyl({
    required this.song,
    required this.playing,
    required this.speed,
  });
  final Song song;
  final bool playing;
  final double speed;

  @override
  State<_Vinyl> createState() => _VinylState();
}

class _VinylState extends State<_Vinyl> with TickerProviderStateMixin {
  late final _spin = AnimationController(vsync: this, duration: _period);
  late final _arm = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 650),
    value: widget.playing ? 1 : 0,
  );

  Duration get _period => Duration(
    milliseconds: (60000 / 33.333 / widget.speed.clamp(0.25, 4)).round(),
  );

  @override
  void initState() {
    super.initState();
    if (widget.playing) _spin.repeat();
  }

  @override
  void didUpdateWidget(_Vinyl old) {
    super.didUpdateWidget(old);
    if (old.speed != widget.speed) {
      _spin.duration = _period;
      if (_spin.isAnimating) _spin.repeat();
    }
    if (widget.playing != old.playing) {
      if (widget.playing) {
        _arm.animateTo(1, curve: Curves.easeOutBack);
        _spin.repeat();
      } else {
        _arm.animateTo(0, curve: Curves.easeOut);
        _spin.stop();
      }
    }
  }

  @override
  void dispose() {
    _spin.dispose();
    _arm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: LayoutBuilder(
            builder: (context, c) {
              final side = c.maxWidth;
              final disc = side * 0.9;
              return Stack(
                children: [
                  // the shadow stays put while the record turns above it
                  Positioned(
                    left: 0,
                    top: (side - disc) / 2,
                    width: disc,
                    height: disc,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.45),
                            blurRadius: 22,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: (side - disc) / 2,
                    width: disc,
                    height: disc,
                    child: RotationTransition(
                      turns: _spin,
                      child: ClipOval(
                        child: CustomPaint(
                          painter: _GroovePainter(sheen: cs.primary),
                          child: Center(
                            child: SizedBox.square(
                              dimension: disc * 0.38,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  CoverArt(
                                    song: widget.song,
                                    circle: true,
                                    size: disc * 0.38,
                                    heroTag: 'player-art',
                                  ),
                                  Center(
                                    child: Container(
                                      width: disc * 0.035,
                                      height: disc * 0.035,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF111111),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // tonearm, pivoting from the top right
                  Positioned(
                    right: side * 0.02,
                    top: side * 0.02,
                    width: side * 0.3,
                    height: side * 0.75,
                    child: AnimatedBuilder(
                      animation: _arm,
                      builder: (context, _) => Transform.rotate(
                        alignment: const Alignment(0.55, -0.85),
                        angle: -0.42 + 0.42 * _arm.value,
                        child: CustomPaint(painter: _ArmPainter(cs.onSurface)),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _GroovePainter extends CustomPainter {
  _GroovePainter({required this.sheen});
  final Color sheen;

  @override
  void paint(Canvas canvas, Size size) {
    final c = size.center(Offset.zero);
    final r = size.width / 2;
    canvas.drawCircle(c, r, Paint()..color = const Color(0xFF121212));
    final groove = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.7;
    for (var g = r * 0.42; g < r * 0.97; g += r * 0.018) {
      groove.color = Colors.white.withValues(alpha: 0.035 + (g / r) * 0.03);
      canvas.drawCircle(c, g, groove);
    }
    // a sweep of light that turns with the disc
    canvas.drawCircle(
      c,
      r,
      Paint()
        ..shader = SweepGradient(
          colors: [
            Colors.transparent,
            sheen.withValues(alpha: 0.16),
            Colors.transparent,
            Colors.white.withValues(alpha: 0.08),
            Colors.transparent,
          ],
          stops: const [0, 0.12, 0.3, 0.62, 0.8],
        ).createShader(Rect.fromCircle(center: c, radius: r)),
    );
  }

  @override
  bool shouldRepaint(_GroovePainter old) => old.sheen != sheen;
}

class _ArmPainter extends CustomPainter {
  _ArmPainter(this.color);
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final pivot = Offset(size.width * 0.78, size.height * 0.08);
    final elbow = Offset(size.width * 0.62, size.height * 0.78);
    final head = Offset(size.width * 0.32, size.height * 0.95);
    final arm = Paint()
      ..color = color.withValues(alpha: 0.85)
      ..strokeWidth = size.width * 0.05
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(
      pivot,
      size.width * 0.13,
      Paint()..color = color.withValues(alpha: 0.25),
    );
    canvas.drawCircle(pivot, size.width * 0.07, Paint()..color = color);
    canvas.drawLine(pivot, elbow, arm);
    canvas.drawLine(elbow, head, arm);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: head,
          width: size.width * 0.2,
          height: size.width * 0.12,
        ),
        const Radius.circular(3),
      ),
      Paint()..color = color,
    );
  }

  @override
  bool shouldRepaint(_ArmPainter old) => old.color != color;
}

/// Two reels that turn with the music; the tape moves from one to the other
/// as the song plays (fed by the hero's own clock, no position stream needed).
class _Cassette extends StatefulWidget {
  const _Cassette({
    required this.song,
    required this.playing,
    required this.speed,
  });
  final Song song;
  final bool playing;
  final double speed;

  @override
  State<_Cassette> createState() => _CassetteState();
}

class _CassetteState extends State<_Cassette>
    with SingleTickerProviderStateMixin {
  late final _reels = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  @override
  void initState() {
    super.initState();
    if (widget.playing) _reels.repeat();
  }

  @override
  void didUpdateWidget(_Cassette old) {
    super.didUpdateWidget(old);
    _reels.duration = Duration(
      milliseconds: (2000 / widget.speed.clamp(0.25, 4)).round(),
    );
    if (widget.playing && !_reels.isAnimating) _reels.repeat();
    if (!widget.playing && _reels.isAnimating) _reels.stop();
  }

  @override
  void dispose() {
    _reels.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final cs = t.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1.55,
          child: LayoutBuilder(
            builder: (context, c) {
              final w = c.maxWidth;
              final reel = w * 0.2;
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: Color.lerp(
                    cs.surfaceContainerHighest,
                    cs.primary,
                    0.18,
                  ),
                  borderRadius: BorderRadius.circular(w * 0.05),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.4),
                      blurRadius: 22,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // label with the cover and title, like a hand-made tape
                    Positioned(
                      left: w * 0.06,
                      right: w * 0.06,
                      top: w * 0.05,
                      height: w * 0.26,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            CoverArt(
                              song: widget.song,
                              radius: BorderRadius.zero,
                              heroTag: 'player-art',
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withValues(alpha: 0.65),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              right: 10,
                              bottom: 6,
                              child: Text(
                                widget.song.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: t.textTheme.titleSmall?.copyWith(
                                  color: Colors.white,
                                  fontFamily: 'JetBrainsMono',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // the window with the reels
                    Positioned(
                      left: w * 0.2,
                      right: w * 0.2,
                      bottom: w * 0.07,
                      height: reel * 1.2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.55),
                          borderRadius: BorderRadius.circular(reel),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (var i = 0; i < 2; i++)
                              Padding(
                                padding: EdgeInsets.all(reel * 0.1),
                                child: RotationTransition(
                                  turns: _reels,
                                  child: CustomPaint(
                                    size: Size.square(reel),
                                    painter: _ReelPainter(cs.onSurface),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ReelPainter extends CustomPainter {
  _ReelPainter(this.color);
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final c = size.center(Offset.zero);
    final r = size.width / 2;
    canvas.drawCircle(c, r, Paint()..color = const Color(0xFF2A2420));
    canvas.drawCircle(
      c,
      r * 0.45,
      Paint()..color = color.withValues(alpha: 0.9),
    );
    final spoke = Paint()..color = const Color(0xFF2A2420);
    for (var i = 0; i < 6; i++) {
      final a = i * math.pi / 3;
      canvas.drawCircle(
        c + Offset(math.cos(a), math.sin(a)) * r * 0.28,
        r * 0.07,
        spoke,
      );
    }
  }

  @override
  bool shouldRepaint(_ReelPainter old) => old.color != color;
}

/// No art at all: the song's name, set big.
class _Minimal extends StatelessWidget {
  const _Minimal({required this.song});
  final Song song;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.bottomLeft,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Text(
              song.title,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: t.textTheme.displayMedium?.copyWith(
                color: t.colorScheme.onSurface,
                height: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
