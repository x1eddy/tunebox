import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../ui/equalizer.dart';
import '../../ui/motion.dart';
import 'queue_page.dart';

class PlayerPage extends ConsumerWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final song = ref.watch(nowPlayingProvider);
    if (song == null) {
      return const Scaffold(
        body: EmptyState(
          icon: Icons.music_note_outlined,
          title: 'Nothing playing',
          body: 'Pick a song and it shows up here.',
        ),
      );
    }

    final state = ref.watch(playbackStateProvider).value;
    final playing = state?.playing ?? false;
    final position = ref.watch(positionProvider).value ?? Duration.zero;
    final total = Duration(milliseconds: song.durationMs);
    final music = ref.read(musicProvider);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CoverBackdrop(song: song),
          SafeArea(
            child: DragToDismiss(
              child: Column(
                children: [
                  _TopBar(song: song),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 8,
                      ),
                      child: Center(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: R.hero,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.42),
                                  blurRadius: 18,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: CoverArt(
                              song: song,
                              radius: R.hero,
                              heroTag: 'player-art',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26, 6, 18, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                song.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: t.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.6,
                                  height: 1.15,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Row(
                                children: [
                                  Icon(
                                    sourceIcon(song.source),
                                    size: 13,
                                    color: t.colorScheme.onSurfaceVariant,
                                  ),
                                  const SizedBox(width: 6),
                                  Flexible(
                                    child: Text(
                                      songByline(song),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: t.textTheme.bodyMedium?.copyWith(
                                        color: t.colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          tooltip: song.blocked
                              ? 'Blocked — tap to allow again'
                              : 'Not for me',
                          onPressed: () => song.blocked
                              ? music.unblock(song)
                              : dislikeWithUndo(context, ref, song),
                          iconSize: 22,
                          color: song.blocked ? t.colorScheme.error : null,
                          icon: Icon(
                            song.blocked
                                ? Icons.thumb_down_rounded
                                : Icons.thumb_down_off_alt_rounded,
                          ),
                        ),
                        IconButton(
                          onPressed: () => music.like(song),
                          iconSize: 26,
                          color: song.liked ? t.colorScheme.primary : null,
                          icon: Icon(
                            song.liked
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_rounded,
                          ),
                        ),
                        IconButton(
                          onPressed: () => showSongSheet(context, song),
                          iconSize: 24,
                          icon: const Icon(Icons.more_vert_rounded),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26, 12, 26, 0),
                    child: Visualizer(playing: playing, height: 30),
                  ),
                  _Seek(position: position, total: total, onSeek: music.seek),
                  _Controls(
                    playing: playing,
                    repeat: state?.repeatMode ?? AudioServiceRepeatMode.all,
                    shuffled:
                        state?.shuffleMode == AudioServiceShuffleMode.all,
                  ),
                  _BottomBar(song: song),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Drag the player down and it follows your finger, shrinking a little, then
/// either springs back or closes — the gesture every music app has.
class DragToDismiss extends StatefulWidget {
  const DragToDismiss({super.key, required this.child});
  final Widget child;

  @override
  State<DragToDismiss> createState() => _DragToDismissState();
}

class _DragToDismissState extends State<DragToDismiss>
    with SingleTickerProviderStateMixin {
  late final AnimationController _spring = AnimationController(
    vsync: this,
    duration: Motion.medium,
  );
  double _offset = 0;
  double _springFrom = 0;

  @override
  void initState() {
    super.initState();
    _spring.addListener(() {
      setState(() => _offset = _springFrom * (1 - _spring.value));
    });
  }

  @override
  void dispose() {
    _spring.dispose();
    super.dispose();
  }

  void _end(DragEndDetails details) {
    final velocity = details.primaryVelocity ?? 0;
    if (_offset > 140 || velocity > 700) {
      Navigator.of(context).maybePop();
      return;
    }
    _springFrom = _offset;
    _spring
      ..reset()
      ..animateTo(1, curve: Motion.emphasized);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final progress = (_offset / (height * 0.5)).clamp(0.0, 1.0);
    return GestureDetector(
      onVerticalDragUpdate: (d) {
        _spring.stop();
        setState(() => _offset = (_offset + d.delta.dy).clamp(0.0, height));
      },
      onVerticalDragEnd: _end,
      child: Transform.translate(
        offset: Offset(0, _offset),
        child: Transform.scale(
          scale: 1 - progress * 0.06,
          child: Opacity(opacity: 1 - progress * 0.35, child: widget.child),
        ),
      ),
    );
  }
}

class _TopBar extends ConsumerWidget {
  const _TopBar({required this.song});
  final Song song;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final queue = ref.watch(audioHandlerProvider).queueSongs;
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 4, 6, 0),
      child: Row(
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 30),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'PLAYING FROM',
                  style: t.textTheme.labelSmall?.copyWith(
                    letterSpacing: 1.4,
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
                Text(
                  '${queue.length} songs in the queue',
                  style: t.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const QueuePage()),
            ),
            icon: const Icon(Icons.queue_music_rounded),
          ),
        ],
      ),
    );
  }
}

class _Seek extends StatefulWidget {
  const _Seek({
    required this.position,
    required this.total,
    required this.onSeek,
  });

  final Duration position;
  final Duration total;
  final ValueChanged<Duration> onSeek;

  @override
  State<_Seek> createState() => _SeekState();
}

class _SeekState extends State<_Seek> {
  double? _dragging;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final totalMs = widget.total.inMilliseconds;
    final value = _dragging ??
        (totalMs == 0
            ? 0.0
            : (widget.position.inMilliseconds / totalMs).clamp(0.0, 1.0));
    final shown = _dragging == null
        ? widget.position
        : Duration(milliseconds: (totalMs * _dragging!).round());

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Column(
        children: [
          Slider(
            value: value,
            onChanged: totalMs == 0
                ? null
                : (v) => setState(() => _dragging = v),
            onChangeEnd: (v) {
              widget.onSeek(Duration(milliseconds: (totalMs * v).round()));
              setState(() => _dragging = null);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatDuration(shown),
                  style: t.textTheme.labelSmall?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
                Text(
                  totalMs == 0
                      ? '--:--'
                      : '-${formatDuration(widget.total - shown)}',
                  style: t.textTheme.labelSmall?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Controls extends ConsumerWidget {
  const _Controls({
    required this.playing,
    required this.repeat,
    required this.shuffled,
  });

  final bool playing;
  final AudioServiceRepeatMode repeat;
  final bool shuffled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final music = ref.read(musicProvider);
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 6, 18, 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: music.toggleShuffle,
            iconSize: 24,
            color: shuffled ? t.colorScheme.primary : null,
            icon: const Icon(Icons.shuffle_rounded),
          ),
          IconButton(
            onPressed: music.previous,
            iconSize: 38,
            icon: const Icon(Icons.skip_previous_rounded),
          ),
          SizedBox(
            width: 74,
            height: 74,
            child: Material(
              color: t.colorScheme.primary,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: music.toggle,
                child: Icon(
                  playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
                  size: 40,
                  color: t.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: music.next,
            iconSize: 38,
            icon: const Icon(Icons.skip_next_rounded),
          ),
          IconButton(
            onPressed: music.cycleRepeat,
            iconSize: 24,
            color: repeat == AudioServiceRepeatMode.none
                ? null
                : t.colorScheme.primary,
            icon: Icon(
              repeat == AudioServiceRepeatMode.one
                  ? Icons.repeat_one_rounded
                  : Icons.repeat_rounded,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends ConsumerWidget {
  const _BottomBar({required this.song});
  final Song song;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloaded = song.source == SongSource.downloaded;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton.icon(
            onPressed: downloaded
                ? null
                : () => ref.read(musicProvider).download(song),
            icon: Icon(
              downloaded
                  ? Icons.download_done_rounded
                  : Icons.download_outlined,
              size: 19,
            ),
            label: Text(downloaded ? 'Saved' : 'Download'),
          ),
          TextButton.icon(
            onPressed: () => _showTuning(context, ref),
            icon: const Icon(Icons.tune_rounded, size: 19),
            label: const Text('Audio'),
          ),
          TextButton.icon(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const QueuePage()),
            ),
            icon: const Icon(Icons.playlist_play_rounded, size: 20),
            label: const Text('Queue'),
          ),
        ],
      ),
    );
  }
}

void _showTuning(BuildContext context, WidgetRef ref) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (_) => const _TuningSheet(),
  );
}

class _TuningSheet extends ConsumerStatefulWidget {
  const _TuningSheet();

  @override
  ConsumerState<_TuningSheet> createState() => _TuningSheetState();
}

class _TuningSheetState extends ConsumerState<_TuningSheet> {
  double _speed = 1;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final settings = ref.watch(settingsProvider);
    final handler = ref.read(audioHandlerProvider);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Playback', style: t.textTheme.titleLarge),
            const SizedBox(height: 14),
            Text('Speed  ${_speed.toStringAsFixed(2)}×'),
            Slider(
              value: _speed,
              min: 0.5,
              max: 2,
              divisions: 30,
              onChanged: (v) {
                setState(() => _speed = v);
                handler.setSpeed(v);
              },
            ),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              value: settings.skipSilence,
              onChanged: (v) {
                ref
                    .read(settingsProvider.notifier)
                    .update((s) => s.copyWith(skipSilence: v));
                handler.setSkipSilence(v);
              },
              title: const Text('Skip silence'),
              subtitle: const Text('Android only'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
