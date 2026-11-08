import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/router.dart';
import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/appearance.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../ui/kit/aura_card.dart';
import '../profiles/profile_sheet.dart';
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
                const ProfileButton(),
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
                const SizedBox(width: 4),
              ],
            ),
            const SliverToBoxAdapter(child: _DescribeBar()),
            const SliverToBoxAdapter(child: _MoodRow()),
            if (library.isNotEmpty)
              SliverToBoxAdapter(child: _QuickPicks(library: library)),
            if (library.isEmpty)
              const SliverToBoxAdapter(child: _FirstRunCard()),
            // While a refresh runs (a like, a block, pull-to-refresh) the
            // previous shelves stay on screen instead of collapsing into
            // skeletons and throwing the scroll position away.
            ...switch (shelves.value) {
              final value? => [
                for (final shelf in arrangeShelves(
                  value,
                  ref.watch(appearanceProvider),
                ))
                  SliverToBoxAdapter(child: _ShelfView(shelf: shelf)),
              ],
              _ when shelves.hasError => [
                SliverToBoxAdapter(
                  child: _HomeError(
                    onRetry: () => ref.read(musicProvider).refreshHome(),
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
  'yearago' => (l.shelfYearAgo, l.shelfOnThisDaySub),
  'monthago' => (l.shelfMonthAgo, l.shelfOnThisDaySub),
  _ => (shelf.title, shelf.subtitle),
};

/// Every kind of shelf Home can show, in the engine's own order.
const kShelfKinds = [
  'repeat',
  'forgotten',
  'yearago',
  'monthago',
  'new',
  'because',
  'deep',
  'mix',
  'added',
];

String shelfName(L l, String kind) => switch (kind) {
  'repeat' => l.shelfRepeat,
  'forgotten' => l.shelfForgotten,
  'yearago' => l.shelfYearAgo,
  'monthago' => l.shelfMonthAgo,
  'new' => l.shelfNew,
  'because' => l.shelfBecauseSub,
  'deep' => l.shelfDeep,
  'mix' => l.shelfMix,
  'added' => l.shelfAdded,
  _ => kind,
};

/// Applies the Home layout from the Appearance studio: hidden shelves go,
/// the rest follow the chosen order (unknown ones keep their place at the
/// end). The starter shelf for empty libraries is never hidden.
List<AiShelf> arrangeShelves(List<AiShelf> shelves, Appearance look) {
  final visible = [
    for (final s in shelves)
      if (s.id == 'starter' || !look.hiddenShelves.contains(s.id)) s,
  ];
  if (look.shelfOrder.isEmpty) return visible;
  int rank(AiShelf s) {
    final i = look.shelfOrder.indexOf(s.id);
    return i < 0 ? look.shelfOrder.length + visible.indexOf(s) : i;
  }
  return visible..sort((a, b) => rank(a).compareTo(rank(b)));
}

/// One glyph per kind of shelf, so the row headers read at a glance.
IconData shelfIcon(String id) => switch (id) {
  'repeat' => Icons.repeat_rounded,
  'forgotten' => Icons.history_rounded,
  'new' => Icons.auto_awesome_rounded,
  'because' => Icons.hub_outlined,
  'deep' => Icons.explore_outlined,
  'mix' => Icons.shuffle_rounded,
  'added' => Icons.download_done_rounded,
  'starter' => Icons.flag_outlined,
  'yearago' || 'monthago' => Icons.event_repeat_rounded,
  _ => Icons.music_note_rounded,
};

/// Looks like a search box; opens "Describe a mix".
class _DescribeBar extends StatelessWidget {
  const _DescribeBar();

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 10),
      child: Material(
        color: t.colorScheme.surfaceContainerHigh,
        borderRadius: R.pill,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => pushDetail(context, 'mix'),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Row(
              children: [
                Icon(Icons.auto_awesome_rounded, color: t.colorScheme.primary),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    L.of(context).mixEntry,
                    style: t.textTheme.bodyLarge?.copyWith(
                      color: t.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                  color: t.colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MoodRow extends ConsumerStatefulWidget {
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
  ConsumerState<_MoodRow> createState() => _MoodRowState();
}

class _MoodRowState extends ConsumerState<_MoodRow> {
  static const moods = _MoodRow.moods;

  /// The mood being built. Further taps wait for it: hammering a chip
  /// started a new search and replaced the queue on every tap.
  String? _building;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: moods.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (_, i) => ActionChip(
          avatar: _building == moods[i].$1
              ? SizedBox.square(
                  dimension: 15,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: t.colorScheme.primary,
                  ),
                )
              : Icon(moods[i].$2, size: 17, color: t.colorScheme.primary),
          label: Text(_MoodRow.moodName(L.of(context), moods[i].$1)),
          onPressed: _building != null
              ? null
              : () => _playMood(
                  moods[i].$1,
                  moods[i].$3,
                  _MoodRow.moodName(L.of(context), moods[i].$1),
                ),
        ),
      ),
    );
  }

  Future<void> _playMood(String key, String query, String label) async {
    if (_building != null) return;
    setState(() => _building = key);
    final l = L.of(context);
    final messenger = ScaffoldMessenger.of(context);
    messenger
      ..hideCurrentSnackBar()
      ..showTimed(SnackBar(content: Text(l.moodBuilding(label))));
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
      messenger.showTimed(SnackBar(content: Text(l.moodFailed('$e'))));
    } finally {
      messenger.hideCurrentSnackBar();
      if (mounted) setState(() => _building = null);
    }
  }
}

class _FirstRunCard extends ConsumerWidget {
  const _FirstRunCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);
    return AuraCard(
      margin: const EdgeInsets.fromLTRB(16, 14, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.auto_awesome_rounded,
                color: t.colorScheme.onSurface,
              ),
              const SizedBox(width: 8),
              Text(
                l.homeEmptyTitle,
                style: t.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: t.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            l.homeEmptyBody,
            style: t.textTheme.bodyMedium?.copyWith(
              color: t.colorScheme.onSurface,
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
                label: Text(l.aHomeSearch),
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
    final l = L.of(context);
    final t = Theme.of(context);
    final played = library.where((s) => s.lastPlayed != null).toList()
      ..sort((a, b) => b.lastPlayed!.compareTo(a.lastPlayed!));
    final songs = (played.isEmpty ? library : played).take(8).toList();
    if (songs.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: played.isEmpty ? l.aHomeInYourLibrary : l.homeQuickPicks,
          subtitle: played.isEmpty
              ? l.aHomeInYourLibrarySub
              : l.homeQuickPicksSub,
        ),
        // Two columns that fit the screen. The sideways-paging strip it
        // replaced cut every title off at the edge and looked stretched.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: LayoutBuilder(
            builder: (context, c) {
              final cols = c.maxWidth >= 640 ? 3 : 2;
              final width = (c.maxWidth - (cols - 1) * 8) / cols;
              return Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final s in songs.take(cols * 3))
                    SizedBox(
                      width: width,
                      child: Material(
                        color: t.colorScheme.surfaceContainerHigh,
                        borderRadius: R.tile,
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () => ref
                              .read(musicProvider)
                              .playSong(s, queue: songs, origin: 'quick_picks'),
                          onLongPress: () => showSongSheet(context, s),
                          child: Row(
                            children: [
                              CoverArt(
                                song: s,
                                size: 52,
                                radius: BorderRadius.zero,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  s.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: t.textTheme.labelLarge?.copyWith(
                                    height: 1.2,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
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
          icon: shelfIcon(shelf.id),
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
                WideCard(pick: pick, queue: songs, origin: 'shelf:${shelf.id}'),
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

/// What Home says when YouTube cannot be reached: a calm sentence and a way to
/// try again, not an exception message.
class _HomeError extends StatelessWidget {
  const _HomeError({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
      child: Column(
        children: [
          Icon(
            Icons.cloud_off_rounded,
            size: 44,
            color: t.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 12),
          Text(
            l.homeCantReach,
            style: t.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            l.homeOfflineHint,
            textAlign: TextAlign.center,
            style: t.textTheme.bodyMedium?.copyWith(
              color: t.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton.tonalIcon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh_rounded),
            label: Text(l.actionRetry),
          ),
        ],
      ),
    );
  }
}
