import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/settings.dart';
import 'motion.dart';

/// The play/pause symbol. It morphs between the two instead of swapping, and
/// grows a thin ring while the stream is loading — so a tap never looks like
/// it did nothing.
class PlayPauseGlyph extends ConsumerStatefulWidget {
  const PlayPauseGlyph({
    super.key,
    required this.playing,
    this.buffering = false,
    this.size = 30,
    this.color,
  });

  final bool playing;
  final bool buffering;
  final double size;
  final Color? color;

  @override
  ConsumerState<PlayPauseGlyph> createState() => _PlayPauseGlyphState();
}

class _PlayPauseGlyphState extends ConsumerState<PlayPauseGlyph>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Motion.medium,
    value: widget.playing ? 1 : 0,
  );

  @override
  void didUpdateWidget(PlayPauseGlyph old) {
    super.didUpdateWidget(old);
    if (old.playing == widget.playing) return;
    final reduce = ref.read(settingsProvider).reduceMotion;
    if (reduce) {
      _controller.value = widget.playing ? 1 : 0;
    } else if (widget.playing) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color ?? IconTheme.of(context).color;
    final ring = widget.size + 14;
    return SizedBox(
      width: ring,
      height: ring,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: CurvedAnimation(
              parent: _controller,
              curve: Motion.emphasized,
            ),
            size: widget.size,
            color: color,
          ),
          AnimatedOpacity(
            opacity: widget.buffering ? 1 : 0,
            duration: Motion.fast,
            child: SizedBox(
              width: ring - 4,
              height: ring - 4,
              child: widget.buffering
                  ? CircularProgressIndicator(strokeWidth: 2.5, color: color)
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
