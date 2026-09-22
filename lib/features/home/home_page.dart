import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/router.dart';
import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../ui/motion.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  String get _greeting {
    final h = DateTime.now().hour;
    if (h < 5) return 'Still up?';
    if (h < 12) return 'Good morning';
    if (h < 18) return 'Good afternoon';
    return 'Good evening';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final shelves = ref.watch(homeShelvesProvider);
    final library = ref.watch(libraryProvider).value ?? const <Song>[];
    ref.watch(startupProvider);

    // The very first import turns an empty library into a real one; rebuild
    // the shelves once when that happens (and never on later writes, which
    // would loop forever while the AI caches search results).
    ref.listen(libraryProvider, (previous, next) {
      final before = previous?.value?.length ?? 0;
      final after = next.value?.length ?? 0;
      if (before == 0 && after > 0) ref.read(musicProvider).refreshHome();
    });

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => ref.read(musicProvider).refreshHome(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              titleSpacing: 16,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _greeting,
                    style: t.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.6,
                    ),
                  ),
                  Text(
                    switch (shelves) {
                      AsyncLoading() => 'The AI is building your shelves…',
                      AsyncError() => 'Offline — showing what is on the phone',
                      _ => switch (shelves.value?.length ?? 0) {
                        0 => 'Nothing to show yet',
                        1 => '1 shelf, refreshed just now',
                        final n => '$n shelves, refreshed just now',
                      },
                    },
                    style: t.textTheme.bodySmall?.copyWith(
                      color: t.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () => ref.read(musicProvider).refreshHome(),
                  icon: const Icon(Icons.refresh_rounded),
                  tooltip: 'Rebuild shelves',
                ),
                IconButton(
                  onPressed: () => pushDetail(context, 'import'),
                  icon: const Icon(Icons.library_add_outlined),
                  tooltip: 'Add music from this device',
                ),
                IconButton(
                  onPressed: () => pushDetail(context, 'settings'),
                  icon: const Icon(Icons.settings_outlined),
                ),
                const SizedBox(width: 4),
              ],
            ),
            const SliverToBoxAdapter(child: _MoodRow()),
            if (library.isNotEmpty)
              SliverToBoxAdapter(child: _QuickPicks(library: library)),
            if (library.isEmpty)
              const SliverToBoxAdapter(child: _FirstRunCard()),
            ...switch (shelves) {
              AsyncData(:final value) => [
                for (final shelf in value)
                  SliverToBoxAdapter(child: _ShelfView(shelf: shelf)),
              ],
              AsyncError(:final error) => [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      'Could not reach YouTube: $error',
                      style: t.textTheme.bodySmall?.copyWith(
                        color: t.colorScheme.error,
                      ),
                    ),
                  ),
                ),
              ],
              _ => const [
                SliverToBoxAdapter(child: ShelfSkeleton()),
                SliverToBoxAdapter(child: ShelfSkeleton()),
              ],
            },
            const SliverToBoxAdapter(child: SizedBox(height: 28)),
          ],
        ),
      ),
    );
  }
}

class _MoodRow extends ConsumerWidget {
  const _MoodRow();

  static const moods = [
    ('Focus', Icons.center_focus_weak_rounded, 'focus instrumental music'),
    ('Workout', Icons.bolt_rounded, 'workout hype songs'),
    ('Chill', Icons.nightlight_round, 'chill late night songs'),
    ('Commute', Icons.directions_subway_rounded, 'driving playlist songs'),
    ('Party', Icons.celebration_rounded, 'party bangers'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: moods.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (_, i) => ActionChip(
          avatar: Icon(moods[i].$2, size: 17, color: t.colorScheme.primary),
          label: Text(moods[i].$1),
          onPressed: () => _playMood(context, ref, moods[i].$3, moods[i].$1),
        ),
      ),
    );
  }

  Future<void> _playMood(
    BuildContext context,
    WidgetRef ref,
    String query,
    String label,
  ) async {
    final messenger = ScaffoldMessenger.of(context);
    messenger.showSnackBar(SnackBar(content: Text('Building a $label mix…')));
    try {
      final db = ref.read(dbProvider);
      final found = await ref.read(ytProvider).search(query, max: 25);
      for (final c in found) {
        await db.cacheSong(c);
      }
      final songs = await db.songsByIds([for (final c in found) c.id.value]);
      if (songs.isEmpty) return;
      await ref.read(musicProvider).playAll(songs, origin: 'mood');
    } catch (e) {
      messenger.showSnackBar(SnackBar(content: Text('No luck: $e')));
    }
  }
}

class _FirstRunCard extends ConsumerWidget {
  const _FirstRunCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 14, 16, 4),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: R.hero,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            t.colorScheme.primaryContainer,
            t.colorScheme.tertiaryContainer,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.auto_awesome_rounded,
                color: t.colorScheme.onPrimaryContainer,
              ),
              const SizedBox(width: 8),
              Text(
                'Your library is empty',
                style: t.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: t.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Search for something, or add the music already on this device. '
            'The AI starts learning from your very first play.',
            style: t.textTheme.bodyMedium?.copyWith(
              color: t.colorScheme.onPrimaryContainer,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              FilledButton.icon(
                onPressed: () => pushDetail(context, 'import'),
                icon: const Icon(Icons.library_add_outlined),
                label: const Text('Add my music'),
              ),
              const SizedBox(width: 10),
              OutlinedButton.icon(
                onPressed: () => goToTab(context, '/explore'),
                icon: const Icon(Icons.search_rounded),
                label: const Text('Search'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Recently played, straight back into your hands.
class _QuickPicks extends ConsumerWidget {
  const _QuickPicks({required this.library});
  final List<Song> library;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final played = library.where((s) => s.lastPlayed != null).toList()
      ..sort((a, b) => b.lastPlayed!.compareTo(a.lastPlayed!));
    final songs = (played.isEmpty ? library : played).take(8).toList();
    if (songs.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: played.isEmpty ? 'In your library' : 'Quick picks',
          subtitle: played.isEmpty
              ? 'What you have added so far'
              : 'Straight back into what you were on',
        ),
        SizedBox(
          // One row per song, up to four — a fixed four left a hole in the
          // page when the library was nearly empty.
          height: (songs.length < 4 ? songs.length : 4) * 62,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            physics: const PageScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: songs.length < 4 ? songs.length : 4,
              childAspectRatio: 1 / 4.6,
              mainAxisSpacing: 12,
            ),
            itemCount: songs.length,
            itemBuilder: (_, i) {
              final s = songs[i];
              return InkWell(
                borderRadius: R.tile,
                onTap: () => ref
                    .read(musicProvider)
                    .playSong(s, queue: songs, origin: 'quick_picks'),
                onLongPress: () => showSongSheet(context, s),
                child: Row(
                  children: [
                    CoverArt(song: s, size: 50, radius: R.tile),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            s.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: t.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            s.artist,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: t.textTheme.bodySmall?.copyWith(
                              color: t.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _ShelfView extends ConsumerWidget {
  const _ShelfView({required this.shelf});
  final AiShelf shelf;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final songs = [for (final p in shelf.picks) p.song];
    if (songs.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: shelf.title,
          subtitle: shelf.subtitle,
          emoji: shelf.emoji,
          trailing: IconButton(
            tooltip: 'Play this shelf',
            onPressed: () => ref
                .read(musicProvider)
                .playAll(songs, origin: 'shelf:${shelf.id}'),
            icon: const Icon(Icons.play_circle_outline_rounded),
          ),
        ),
        switch (shelf.style) {
          ShelfStyle.wideCards => HorizontalStrip(
            height: 92,
            children: [
              for (final pick in shelf.picks)
                WideCard(
                  pick: pick,
                  queue: songs,
                  origin: 'shelf:${shelf.id}',
                ),
            ],
          ),
          _ => HorizontalStrip(
            height: shelf.id == 'new' ? 250 : 214,
            children: [
              for (final pick in shelf.picks)
                CoverCard(
                  pick: pick,
                  queue: songs,
                  origin: 'shelf:${shelf.id}',
                  showReason: shelf.id == 'new',
                ),
            ],
          ),
        },
      ],
    );
  }
}
