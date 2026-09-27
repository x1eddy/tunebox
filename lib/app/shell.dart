import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/db/database.dart';
import '../data/services/download_service.dart';
import '../state/providers.dart';
import '../ui/artwork.dart';
import '../ui/equalizer.dart';
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
        ..showSnackBar(SnackBar(content: Text(message)));
    });

    return Scaffold(
      // Tabs cross-fade instead of cutting, which is most of what makes an app
      // feel expensive.
      body: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 260),
        transitionBuilder: (child, animation, secondaryAnimation) =>
            FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              fillColor: Colors.transparent,
              child: child,
            ),
        child: KeyedSubtree(key: ValueKey(shell.currentIndex), child: shell),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _DownloadBar(),
          const MiniPlayer(),
          // Nav labels have a fixed slot; past ~1.3x "Your taste" is clipped,
          // so the bar caps what the accessibility text scale does to it.
          MediaQuery.withClampedTextScaling(
            maxScaleFactor: 1.3,
            child: NavigationBar(
              selectedIndex: shell.currentIndex,
              onDestinationSelected: (i) =>
                  shell.goBranch(i, initialLocation: i == shell.currentIndex),
              destinations: [
                NavigationDestination(
                  icon: const Icon(Icons.home_outlined),
                  selectedIcon: const Icon(Icons.home_rounded),
                  label: l.navHome,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.search_rounded),
                  selectedIcon: const Icon(Icons.travel_explore_rounded),
                  label: l.navExplore,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.library_music_outlined),
                  selectedIcon: const Icon(Icons.library_music_rounded),
                  label: l.navLibrary,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.auto_awesome_outlined),
                  selectedIcon: const Icon(Icons.auto_awesome_rounded),
                  label: l.navTaste,
                ),
              ],
            ),
          ),
        ],
      ),
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
                      ? 'Download failed: ${first.title}'
                      : '${first.auto ? "AI is downloading" : "Downloading"} '
                            '${first.title}'
                            '${active.length > 1 ? " +${active.length - 1}" : ""}',
                  maxLines: 1,
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
    final song = ref.watch(nowPlayingProvider);
    if (song == null) return const SizedBox.shrink();

    final state = ref.watch(playbackStateProvider).value;
    final playing = state?.playing ?? false;
    final music = ref.read(musicProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
      child: Material(
        color: t.colorScheme.surfaceContainerHigh,
        borderRadius: R.card,
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          onVerticalDragEnd: (d) {
            if ((d.primaryVelocity ?? 0) < -120) context.push('/player');
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
                        onPressed: music.toggle,
                        icon: Icon(
                          playing
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded,
                          size: 30,
                        ),
                      ),
                      IconButton(
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
