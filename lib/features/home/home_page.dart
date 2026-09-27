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
import '../../l10n/app_localizations.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  String _greeting(L l) {
    final h = DateTime.now().hour;
    if (h < 5) return l.greetingNight;
    if (h < 12) return l.greetingMorning;
    if (h < 18) return l.greetingAfternoon;
    return l.greetingEvening;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
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
                    _greeting(l),
                    style: t.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.6,
                    ),
                  ),
                  Text(
                    switch (shelves) {
                      AsyncLoading() => l.homeBuilding,
                      AsyncError() => l.homeOffline,
                      _ => switch (shelves.value?.length ?? 0) {
                        0 => l.homeNothingYet,
                        final n => l.homeShelfCount(n),
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
                  tooltip: l.homeRebuild,
                ),
                IconButton(
                  onPressed: () => pushDetail(context, 'import'),
                  icon: const Icon(Icons.library_add_outlined),
                  tooltip: l.homeAddMusic,
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
                      l.homeCouldNotReach('$error'),
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

/// The engine names shelves in English for its own bookkeeping; the screen
/// says them in whatever language the app is running in.
(String, String?) shelfText(L l, AiShelf shelf) => switch (shelf.id) {
  'repeat' => (l.shelfRepeat, l.shelfRepeatSub),
  'forgotten' => (l.shelfForgotten, l.shelfForgottenSub),
  'new' => (l.shelfNew, l.shelfNewSub),
  'because' => (
    l.shelfBecause(shelf.title.replaceFirst('Because you played ', '')),
    l.shelfBecauseSub,
  ),
  'deep' => (l.shelfDeep, l.shelfDeepSub),
  'mix' => (l.shelfMix, l.shelfMixSub),
  'added' => (l.shelfAdded, l.shelfAddedSub),
  'starter' => (l.shelfStarter, l.shelfStarterSub),
  _ => (shelf.title, shelf.subtitle),
};

class _MoodRow extends ConsumerWidget {
  const _MoodRow();

  static const moods = [
    ('focus', Icons.center_focus_weak_rounded, 'focus instrumental music'),
    ('workout', Icons.bolt_rounded, 'workout hype songs'),
    ('chill', Icons.nightlight_round, 'chill late night songs'),
    ('commute', Icons.directions_subway_rounded, 'driving playlist songs'),
    ('party', Icons.celebration_rounded, 'party bangers'),
  ];

  static String moodName(L l, String key) => switch (key) {
    'focus' => l.moodFocus,
    'workout' => l.moodWorkout,
    'chill' => l.moodChill,
    'commute' => l.moodCommute,
    _ => l.moodParty,
  };

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
          label: Text(moodName(L.of(context), moods[i].$1)),
          onPressed: () => _playMood(
            context,
            ref,
            moods[i].$3,
            moodName(L.of(context), moods[i].$1),
          ),
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
    final l = L.of(context);
    final messenger = ScaffoldMessenger.of(context);
    messenger.showSnackBar(SnackBar(content: Text(l.moodBuilding(label))));
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
      messenger.showSnackBar(SnackBar(content: Text(l.moodFailed('$e'))));
    }
  }
}

class _FirstRunCard extends ConsumerWidget {
  const _FirstRunCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
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
                l.homeEmptyTitle,
                style: t.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: t.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            l.homeEmptyBody,
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
                label: Text(l.homeAddMyMusic),
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
    final l = L.of(context);
    final songs = [for (final p in shelf.picks) p.song];
    if (songs.isEmpty) return const SizedBox.shrink();
    final (title, subtitle) = shelfText(l, shelf);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: title,
          subtitle: subtitle,
          emoji: shelf.emoji,
          trailing: IconButton(
            tooltip: l.actionPlayAll,
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
