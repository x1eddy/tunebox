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
import '../state/appearance.dart';
import '../state/providers.dart';
import '../state/settings.dart';
import '../ui/kit/nav_bar.dart';
import '../ui/kit/spinning_cover.dart';
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

    final look = ref.watch(appearanceProvider);
    final reduceMotion = ref.watch(
      settingsProvider.select((s) => s.reduceMotion),
    );
    // Every branch, in router order; the Appearance studio decides which
    // appear and where.
    final all = [
      (Icons.home_outlined, Icons.home_rounded, l.navHome),
      (Icons.search_rounded, Icons.travel_explore_rounded, l.navExplore),
      (Icons.library_music_outlined, Icons.library_music_rounded, l.navLibrary),
      (Icons.auto_awesome_outlined, Icons.auto_awesome_rounded, l.navTaste),
      (Icons.tune_outlined, Icons.tune_rounded, l.setTitle),
    ];
    final order = look.tabs;
    final destinations = [for (final b in order) all[b]];
    // [i] is a position in the bar; the router wants the branch.
    void select(int i) {
      final branch = order[i];
      final same = branch == shell.currentIndex;
      shell.goBranch(branch, initialLocation: same);
      // Arriving on a tab always starts at its top.
      scrollTabToTop(branch, animate: same);
    }
    void selectBranch(int branch) {
      final i = order.indexOf(branch);
      if (i >= 0) {
        select(i);
      } else {
        shell.goBranch(branch);
      }
    }
    final selected = order.indexOf(shell.currentIndex);

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
                    selectedIndex: selected < 0 ? null : selected,
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
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _DownloadBar(),
              const MiniPlayer(),
              if (!wide)
                // Nav labels have a fixed slot; past ~1.3x "Your taste" is
                // clipped, so the bar caps what the text scale does to it.
                MediaQuery.withClampedTextScaling(
                  maxScaleFactor: 1.3,
                  child: FloatingNavBar(
                    items: [
                      for (final d in destinations) NavItem(d.$1, d.$2, d.$3),
                    ],
                    selected: selected,
                    onSelect: select,
                    glass: look.glassNav,
                    labels: look.navLabels,
                    reduceMotion: reduceMotion,
                  ),
                ),
            ],
          ),
        ),
      ),
    );

    // Space plays and pauses, arrows seek, Shift+arrows skip, L likes — but
    // never while you are typing.
    bool typing() =>
        FocusManager.instance.primaryFocus?.context
            ?.findAncestorWidgetOfExactType<EditableText>() !=
        null;
    void unlessTyping(VoidCallback f) {
      if (!typing()) f();
    }

    void seekBy(int seconds) {
      final handler = ref.read(audioHandlerProvider);
      final p = handler.player.position + Duration(seconds: seconds);
      handler.seek(p.isNegative ? Duration.zero : p);
    }

    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.space): () =>
            unlessTyping(ref.read(musicProvider).toggle),
        const SingleActivator(LogicalKeyboardKey.arrowRight): () =>
            unlessTyping(() => seekBy(10)),
        const SingleActivator(LogicalKeyboardKey.arrowLeft): () =>
            unlessTyping(() => seekBy(-10)),
        const SingleActivator(LogicalKeyboardKey.arrowRight, shift: true): () =>
            unlessTyping(ref.read(musicProvider).next),
        const SingleActivator(LogicalKeyboardKey.arrowLeft, shift: true): () =>
            unlessTyping(ref.read(musicProvider).previous),
        const SingleActivator(LogicalKeyboardKey.keyL): () => unlessTyping(() {
          final song = ref.read(nowPlayingProvider);
          if (song != null) ref.read(musicProvider).like(song);
        }),
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
              selectBranch(1),
          const SingleActivator(LogicalKeyboardKey.slash): () {
            if (FocusManager.instance.primaryFocus?.context
                    ?.findAncestorWidgetOfExactType<EditableText>() ==
                null) {
              selectBranch(1);
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
      padding: const EdgeInsets.only(bottom: 6),
      child: Material(
        color: t.colorScheme.secondaryContainer,
        borderRadius: R.pill,
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

/// The record in the island: turns while playing, the ring is the song.
class _MiniCover extends ConsumerWidget {
  const _MiniCover({required this.song, required this.playing});
  final Song song;
  final bool playing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(positionProvider).value ?? Duration.zero;
    final total = song.durationMs;
    final reduceMotion = ref.watch(
      settingsProvider.select((s) => s.reduceMotion),
    );
    return SpinningCover(
      song: song,
      playing: playing,
      progress: total == 0 ? 0 : position.inMilliseconds / total,
      size: 50,
      reduceMotion: reduceMotion,
      heroTag: 'player-art',
    );
  }
}

/// Floats above the navigation bar, tinted by the cover. Tap or swipe up for
/// the full player; swipe sideways to change song, down to dismiss.
class MiniPlayer extends ConsumerWidget {
  const MiniPlayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final cs = t.colorScheme;
    final l = L.of(context);
    final song = ref.watch(nowPlayingProvider);
    if (song == null) return const SizedBox.shrink();

    final state = ref.watch(playbackStateProvider).value;
    final playing = state?.playing ?? false;
    final buffering =
        state?.processingState == AudioProcessingState.loading ||
        state?.processingState == AudioProcessingState.buffering;
    final music = ref.read(musicProvider);
    final radius = BorderRadius.circular(32);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: radius,
          gradient: LinearGradient(
            colors: [
              Color.lerp(cs.primaryContainer, cs.surfaceContainerHigh, 0.35)!,
              cs.surfaceContainerHigh,
            ],
          ),
          border: Border.all(color: cs.onSurface.withValues(alpha: 0.07)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: t.brightness == Brightness.dark ? 0.4 : 0.1,
              ),
              blurRadius: 20,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Material(
          type: MaterialType.transparency,
          borderRadius: radius,
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
            // swipe the island like a page: left = next, right = previous
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                child: Row(
                  children: [
                    RepaintBoundary(
                      child: _MiniCover(song: song, playing: playing),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            song.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: t.textTheme.titleSmall,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: PlayingBars(playing: playing, size: 10),
                              ),
                              Expanded(
                                child: Text(
                                  song.artist,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: t.textTheme.bodySmall?.copyWith(
                                    color: cs.onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ],
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
                      color: song.liked ? cs.primary : null,
                    ),
                    IconButton.filled(
                      tooltip: playing ? l.cPause : l.actionPlay,
                      onPressed: music.toggle,
                      style: IconButton.styleFrom(
                        backgroundColor: cs.primary,
                        foregroundColor: cs.onPrimary,
                        fixedSize: const Size.square(44),
                      ),
                      icon: PlayPauseGlyph(
                        playing: playing,
                        buffering: buffering,
                        size: 24,
                        color: cs.onPrimary,
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
            ),
          ),
        ),
      ),
    );
  }
}
