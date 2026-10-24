import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../l10n/app_localizations.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../ui/equalizer.dart';
import '../../ui/motion.dart';
import '../../ui/play_glyph.dart';
import 'queue_page.dart';

class PlayerPage extends ConsumerWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final song = ref.watch(nowPlayingProvider);
    if (song == null) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 30),
            onPressed: () => context.pop(),
          ),
        ),
        body: const EmptyState(
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
            child: Center(
              // a phone-shaped column; on a monitor it would be a wall of art
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 560),
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
                                      color: Colors.black.withValues(
                                        alpha: 0.42,
                                      ),
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
                              child: AnimatedSwitcher(
                                duration: Motion.medium,
                                layoutBuilder: (current, previous) => Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [...previous, ?current],
                                ),
                                child: Column(
                                  key: ValueKey(song.id),
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
                                            style: t.textTheme.bodyMedium
                                                ?.copyWith(
                                                  color: t
                                                      .colorScheme
                                                      .onSurfaceVariant,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
                              tooltip: song.liked ? 'Unlike' : 'Like',
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
                              tooltip: 'More',
                              onPressed: () => showSongSheet(context, song),
                              iconSize: 24,
                              icon: const Icon(Icons.more_vert_rounded),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(26, 12, 26, 0),
                        child: Visualizer(
                          playing: playing,
                          height: 30,
                          reduceMotion: ref
                              .watch(settingsProvider)
                              .reduceMotion,
                        ),
                      ),
                      _Seek(
                        position: position,
                        total: total,
                        onSeek: music.seek,
                      ),
                      _Controls(
                        playing: playing,
                        buffering:
                            state?.processingState ==
                                AudioProcessingState.loading ||
                            state?.processingState ==
                                AudioProcessingState.buffering,
                        repeat: state?.repeatMode ?? AudioServiceRepeatMode.all,
                        shuffled:
                            state?.shuffleMode == AudioServiceShuffleMode.all,
                      ),
                      _BottomBar(song: song),
                    ],
                  ),
                ),
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
                  '${_originLabel(ref.watch(audioHandlerProvider).origin, ref)}'
                  ' · ${L.of(context).libSongCount(queue.length)}',
                  style: t.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute<void>(builder: (_) => const QueuePage())),
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

  /// Where the user let go. The stream takes a moment to report the new
  /// position; until it does the thumb stays put instead of jumping back to the
  /// old one and then forward again.
  double? _landed;
  DateTime? _landedAt;

  static const _tabular = [FontFeature.tabularFigures()];

  double _fraction(int totalMs) => totalMs == 0
      ? 0.0
      : (widget.position.inMilliseconds / totalMs).clamp(0.0, 1.0);

  @override
  void didUpdateWidget(_Seek old) {
    super.didUpdateWidget(old);
    final landed = _landed;
    if (landed == null) return;
    final totalMs = widget.total.inMilliseconds;
    final arrived = (_fraction(totalMs) - landed).abs() < 0.02;
    final stale =
        DateTime.now().difference(_landedAt!) >
        const Duration(milliseconds: 1500);
    if (arrived || stale) _landed = null;
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final totalMs = widget.total.inMilliseconds;
    final value = _dragging ?? _landed ?? _fraction(totalMs);
    final shown = (_dragging ?? _landed) == null
        ? widget.position
        : Duration(milliseconds: (totalMs * (_dragging ?? _landed)!).round());
    final label = t.textTheme.labelSmall?.copyWith(
      color: t.colorScheme.onSurfaceVariant,
      fontFeatures: _tabular,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Column(
        children: [
          SliderTheme(
            data: SliderTheme.of(
              context,
            ).copyWith(showValueIndicator: ShowValueIndicator.onDrag),
            child: Semantics(
              label: 'Seek',
              value:
                  '${formatDuration(shown)} of ${formatDuration(widget.total)}',
              child: Slider(
                value: value,
                label: formatDuration(shown),
                onChangeStart: (_) => HapticFeedback.selectionClick(),
                onChanged: totalMs == 0
                    ? null
                    : (v) => setState(() => _dragging = v),
                onChangeEnd: (v) {
                  widget.onSeek(Duration(milliseconds: (totalMs * v).round()));
                  setState(() {
                    _landed = v;
                    _landedAt = DateTime.now();
                    _dragging = null;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatDuration(shown), style: label),
                Text(
                  totalMs == 0
                      ? '--:--'
                      : '-${formatDuration(widget.total - shown)}',
                  style: label,
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
    required this.buffering,
    required this.repeat,
    required this.shuffled,
  });

  final bool playing;
  final bool buffering;
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
            tooltip: shuffled ? 'Shuffle: on' : 'Shuffle: off',
            onPressed: music.toggleShuffle,
            iconSize: 24,
            color: shuffled ? t.colorScheme.primary : null,
            icon: const Icon(Icons.shuffle_rounded),
          ),
          IconButton(
            tooltip: 'Previous',
            onPressed: music.previous,
            iconSize: 38,
            icon: const Icon(Icons.skip_previous_rounded),
          ),
          Semantics(
            button: true,
            label: playing ? 'Pause' : 'Play',
            excludeSemantics: true,
            onTap: music.toggle,
            child: SizedBox(
              width: 74,
              height: 74,
              child: Material(
                color: t.colorScheme.primary,
                shape: const CircleBorder(),
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: music.toggle,

                  child: Center(
                    child: PlayPauseGlyph(
                      playing: playing,
                      buffering: buffering,
                      size: 38,
                      color: t.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            tooltip: 'Next',
            onPressed: music.next,
            iconSize: 38,
            icon: const Icon(Icons.skip_next_rounded),
          ),
          IconButton(
            tooltip: switch (repeat) {
              AudioServiceRepeatMode.one => 'Repeat: this song',
              AudioServiceRepeatMode.none => 'Repeat: off',
              _ => 'Repeat: whole queue',
            },
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
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute<void>(builder: (_) => const QueuePage())),
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
    useRootNavigator: true,
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
  late double _speed = ref.read(audioHandlerProvider).player.speed;

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

/// A human name for where the queue came from.
String _originLabel(String origin, WidgetRef ref) {
  if (origin.startsWith('playlist:')) {
    final id = origin.substring(9);
    return switch (id) {
      'liked' => 'Liked songs',
      'downloads' => 'Downloads',
      'imported' => 'My own files',
      _ =>
        ref
                .read(playlistsProvider)
                .value
                ?.where((p) => p.id == id)
                .firstOrNull
                ?.name ??
            'Playlist',
    };
  }
  return switch (origin) {
    'search' => 'Search results',
    'library' => 'Your library',
    'liked' => 'Liked songs',
    'downloads' => 'Downloads',
    'imported' => 'My own files',
    'radio' => 'Radio',
    'training' => 'Training round',
    _ => 'Your queue',
  };
}
