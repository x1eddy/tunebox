import '../ui/common.dart';
import '../ui/tab_scroll.dart';
import 'package:animations/animations.dart';
import 'package:audio_service/audio_service.dart' show AudioProcessingState;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show LogicalKeyboardKey;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/db/database.dart';
import '../data/services/download_service.dart';
import '../state/providers.dart';
import '../ui/artwork.dart';
import '../ui/equalizer.dart';
import '../ui/play_glyph.dart';
import 'theme.dart';
import '../l10n/app_localizations.dart';

class AppShell extends ConsumerWidget {
  const AppShell({super.key, required this.shell});
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    // Surface playback failures instead of leaving a silent player.
    ref.listen(playerErrorProvider, (_, next) {
      final message = next.value;
      if (message == null) return;
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showTimed(SnackBar(content: Text(message)));
    });

    final destinations = [
      (Icons.home_outlined, Icons.home_rounded, l.navHome),
      (Icons.search_rounded, Icons.travel_explore_rounded, l.navExplore),
      (Icons.library_music_outlined, Icons.library_music_rounded, l.navLibrary),
      (Icons.auto_awesome_outlined, Icons.auto_awesome_rounded, l.navTaste),
      (Icons.settings_outlined, Icons.settings_rounded, l.setTitle),
    ];
    void select(int i) {
      final same = i == shell.currentIndex;
      shell.goBranch(i, initialLocation: same);
      // Arriving on a tab always starts at its top.
      scrollTabToTop(i, animate: same);
    }

    // A desktop window is not a tall phone: past ~900dp the tabs move to a
    // side rail and the content stops stretching across a 1600px monitor.
    final wide = MediaQuery.sizeOf(context).width >= 900;

    // Tabs cross-fade instead of cutting, which is most of what makes an app
    // feel expensive.
    final content = PageTransitionSwitcher(
      duration: const Duration(milliseconds: 260),
      transitionBuilder: (child, animation, secondaryAnimation) =>
          FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            fillColor: Colors.transparent,
            child: child,
          ),
      child: KeyedSubtree(key: ValueKey(shell.currentIndex), child: shell),
    );

    final scaffold = Scaffold(
      body: wide
          ? Row(
              children: [
                MediaQuery.withClampedTextScaling(
                  maxScaleFactor: 1.3,
                  child: NavigationRail(
                    selectedIndex: shell.currentIndex,
                    onDestinationSelected: select,
                    labelType: NavigationRailLabelType.all,
                    backgroundColor: Theme.of(
                      context,
                    ).navigationBarTheme.backgroundColor,
                    destinations: [
                      for (final d in destinations)
                        NavigationRailDestination(
                          icon: Icon(d.$1),
                          selectedIcon: Icon(d.$2),
                          label: Text(d.$3),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1100),
                      child: content,
                    ),
                  ),
                ),
              ],
            )
          : content,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _DownloadBar(),
          const MiniPlayer(),
          if (!wide)
            // Nav labels have a fixed slot; past ~1.3x "Your taste" is
            // clipped, so the bar caps what the text scale does to it.
            MediaQuery.withClampedTextScaling(
              maxScaleFactor: 1.3,
              child: NavigationBar(
                selectedIndex: shell.currentIndex,
                onDestinationSelected: select,
                destinations: [
                  for (final d in destinations)
                    NavigationDestination(
                      icon: Icon(d.$1),
                      selectedIcon: Icon(d.$2),
                      label: d.$3,
                    ),
                ],
              ),
            ),
        ],
      ),
    );

    // Space plays and pauses, arrows skip — unless a text field has focus.
    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.mediaPlayPause): () =>
            ref.read(musicProvider).toggle(),
        const SingleActivator(LogicalKeyboardKey.mediaTrackNext): () =>
            ref.read(musicProvider).next(),
        const SingleActivator(LogicalKeyboardKey.mediaTrackPrevious): () =>
            ref.read(musicProvider).previous(),
        if (wide) ...{
          const SingleActivator(LogicalKeyboardKey.keyN, control: true): () =>
              ref.read(musicProvider).next(),
          const SingleActivator(LogicalKeyboardKey.keyP, control: true): () =>
              ref.read(musicProvider).previous(),
          const SingleActivator(LogicalKeyboardKey.keyK, control: true): () =>
              select(1),
          const SingleActivator(LogicalKeyboardKey.slash): () {
            if (FocusManager.instance.primaryFocus?.context
                    ?.findAncestorWidgetOfExactType<EditableText>() ==
                null) {
              select(1);
            }
          },
        },
      },
      child: Focus(autofocus: true, child: scaffold),
    );
  }
}

/// A thin strip that only appears while something is downloading.
class _DownloadBar extends ConsumerWidget {
  const _DownloadBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(downloadTasksProvider).value ?? const [];
    final active = tasks.where((t) => t.stage != DownloadStage.done).toList();
    if (active.isEmpty) return const SizedBox.shrink();
    final t = Theme.of(context);
    final l = L.of(context);
    final first = active.first;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
      child: Material(
        color: t.colorScheme.secondaryContainer,
        borderRadius: R.tile,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              SizedBox(
                width: 14,
                height: 14,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  value: first.progress == 0 ? null : first.progress,
                  color: t.colorScheme.onSecondaryContainer,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  first.stage == DownloadStage.failed
                      ? '${l.cDownloadFailed(first.title)}'
                            '${first.error == null ? "" : " — ${first.error}"}'
                      : '${first.auto ? l.cAiDownloading(first.title) : l.cDownloading(first.title)}'
                            '${active.length > 1 ? " +${active.length - 1}" : ""}',
                  maxLines: first.stage == DownloadStage.failed ? 3 : 1,
                  overflow: TextOverflow.ellipsis,
                  style: t.textTheme.labelMedium?.copyWith(
                    color: t.colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MiniProgress extends ConsumerWidget {
  const _MiniProgress({required this.song});
  final Song song;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final position = ref.watch(positionProvider).value ?? Duration.zero;
    final total = song.durationMs;
    return LinearProgressIndicator(
      value: total == 0 ? 0 : (position.inMilliseconds / total).clamp(0.0, 1.0),
      minHeight: 2,
      backgroundColor: t.colorScheme.onSurface.withValues(alpha: 0.10),
    );
  }
}

/// Pinned above the navigation bar. Tap or swipe up for the full player.
class MiniPlayer extends ConsumerWidget {
  const MiniPlayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final l = L.of(context);
    final song = ref.watch(nowPlayingProvider);
    if (song == null) return const SizedBox.shrink();

    final state = ref.watch(playbackStateProvider).value;
    final playing = state?.playing ?? false;
    final buffering =
        state?.processingState == AudioProcessingState.loading ||
        state?.processingState == AudioProcessingState.buffering;
    final music = ref.read(musicProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
      child: Material(
        color: t.colorScheme.surfaceContainerHigh,
        borderRadius: R.card,
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          onVerticalDragEnd: (d) {
            final v = d.primaryVelocity ?? 0;
            if (v < -120) {
              context.push('/player');
            } else if (v > 600) {
              music.dismissPlayer();
            }
          },
          // swipe the card like a page: left = next, right = previous
          onHorizontalDragEnd: (d) {
            final v = d.primaryVelocity ?? 0;
            if (v < -400) {
              music.next();
            } else if (v > 400) {
              music.previous();
            }
          },
          child: InkWell(
            onTap: () => context.push('/player'),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      CoverArt(
                        song: song,
                        size: 46,
                        radius: R.tile,
                        heroTag: 'player-art',
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: PlayingBars(
                                    playing: playing,
                                    size: 12,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    song.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: t.textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              song.artist,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: t.textTheme.bodySmall?.copyWith(
                                color: t.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        tooltip: song.liked ? l.cUnlike : l.cLike,
                        onPressed: () => music.like(song),
                        icon: Icon(
                          song.liked
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          size: 22,
                        ),
                        color: song.liked ? t.colorScheme.primary : null,
                      ),
                      IconButton(
                        tooltip: playing ? l.cPause : l.actionPlay,
                        onPressed: music.toggle,
                        icon: PlayPauseGlyph(
                          playing: playing,
                          buffering: buffering,
                          size: 28,
                        ),
                      ),
                      IconButton(
                        tooltip: l.cNext,
                        onPressed: music.next,
                        icon: const Icon(Icons.skip_next_rounded, size: 26),
                      ),
                    ],
                  ),
                ),
                // Isolated so the position ticker repaints two pixels of bar
                // instead of rebuilding the whole row several times a second.
                RepaintBoundary(child: _MiniProgress(song: song)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
