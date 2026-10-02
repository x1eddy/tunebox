import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/settings.dart';

/// Shared motion vocabulary. Material's "emphasized" easing is what makes a
/// music app feel like it glides rather than snaps.
class Motion {
  static const fast = Duration(milliseconds: 180);
  static const medium = Duration(milliseconds: 280);
  static const slow = Duration(milliseconds: 420);

  static const emphasized = Cubic(0.2, 0.0, 0.0, 1.0);
  static const decelerate = Cubic(0.05, 0.7, 0.1, 1.0);
}

/// Shrinks while held and springs back with a little overshoot — the iOS
/// press. With Reduce motion on it is just a tap.
class Pressable extends ConsumerStatefulWidget {
  const Pressable({
    super.key,
    required this.child,
    this.onTap,
    this.onLongPress,
    this.scale = 0.96,
    this.borderRadius,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final double scale;
  final BorderRadius? borderRadius;

  @override
  ConsumerState<Pressable> createState() => _PressableState();
}

class _PressableState extends ConsumerState<Pressable> {
  bool _down = false;

  void _set(bool value) {
    if (_down != value && mounted) setState(() => _down = value);
  }

  @override
  Widget build(BuildContext context) {
    final reduce = ref.watch(settingsProvider.select((s) => s.reduceMotion));
    return GestureDetector(
      onTapDown: reduce ? null : (_) => _set(true),
      onTapUp: reduce ? null : (_) => _set(false),
      onTapCancel: reduce ? null : () => _set(false),
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      behavior: HitTestBehavior.opaque,
      child: reduce
          ? widget.child
          : AnimatedScale(
              scale: _down ? widget.scale : 1,
              // quick on the way down, a soft overshoot on the way back up
              duration: _down
                  ? const Duration(milliseconds: 110)
                  : const Duration(milliseconds: 380),
              curve: _down ? Curves.easeOut : Curves.easeOutBack,
              child: widget.child,
            ),
    );
  }
}

/// Grey blocks in the shape of the content that is coming, with a slow pulse.
class Skeleton extends StatefulWidget {
  const Skeleton({
    super.key,
    required this.width,
    required this.height,
    this.radius = 12,
  });

  final double width;
  final double height;
  final double radius;

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1100),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return FadeTransition(
      opacity: Tween(
        begin: 0.45,
        end: 0.85,
      ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut)),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: t.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(widget.radius),
        ),
      ),
    );
  }
}

/// The placeholder Home shows while the AI is thinking.
class ShelfSkeleton extends StatelessWidget {
  const ShelfSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Skeleton(width: 168, height: 22, radius: 6),
          ),
          SizedBox(
            height: 208,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              separatorBuilder: (_, _) => const SizedBox(width: 12),
              itemBuilder: (_, _) => const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeleton(width: 152, height: 152, radius: 14),
                  SizedBox(height: 8),
                  Skeleton(width: 120, height: 12, radius: 4),
                  SizedBox(height: 6),
                  Skeleton(width: 80, height: 10, radius: 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
