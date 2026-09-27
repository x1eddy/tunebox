import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/router.dart';
import '../../dev/tour.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../ui/common.dart';
import '../../l10n/app_localizations.dart';

/// Live YouTube search, plus whatever is already in the library.
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final _controller = TextEditingController();
  Timer? _debounce;
  String _query = '';
  bool _loading = false;
  String? _error;
  List<Song> _results = const [];
  final _recent = <String>[];

  @override
  void initState() {
    super.initState();
    // Screenshot harness only: start with a query already typed.
    const seeded = String.fromEnvironment('TOUR_QUERY');
    if (kTour && seeded.isNotEmpty) {
      _controller.text = seeded;
      WidgetsBinding.instance.addPostFrameCallback((_) => _run(seeded));
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 420), () => _run(value));
  }

  Future<void> _run(String value) async {
    final query = value.trim();
    setState(() {
      _query = query;
      _error = null;
    });
    if (query.isEmpty) {
      setState(() => _results = const []);
      return;
    }
    setState(() => _loading = true);
    try {
      final db = ref.read(dbProvider);
      final found = await ref.read(ytProvider).search(query, max: 30);
      for (final c in found) {
        await db.cacheSong(c);
      }
      final songs = (await db.songsByIds([for (final c in found) c.id.value]))
          .where((s) => !s.blocked)
          .toList();
      final local = (ref.read(libraryProvider).value ?? const <Song>[])
          .where((s) =>
              s.title.toLowerCase().contains(query.toLowerCase()) ||
              s.artist.toLowerCase().contains(query.toLowerCase()))
          .where((s) => !songs.any((y) => y.id == s.id));
      if (!mounted) return;
      setState(() {
        _results = [...local, ...songs];
        _loading = false;
        if (!_recent.contains(query)) _recent.insert(0, query);
        if (_recent.length > 8) _recent.removeLast();
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            titleSpacing: 12,
            toolbarHeight: 66,
            title: SearchBar(
              controller: _controller,
              hintText: 'Songs, artists, albums…',
              elevation: const WidgetStatePropertyAll(0),
              backgroundColor: WidgetStatePropertyAll(
                t.colorScheme.surfaceContainerHigh,
              ),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 14),
              ),
              leading: Icon(
                Icons.search_rounded,
                color: t.colorScheme.onSurfaceVariant,
              ),
              trailing: [
                if (_loading)
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
                else if (_query.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () {
                      _controller.clear();
                      _run('');
                    },
                  ),
              ],
              onChanged: _onChanged,
              onSubmitted: _run,
            ),
          ),
          if (_error != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Search failed: $_error',
                  style: t.textTheme.bodySmall?.copyWith(
                    color: t.colorScheme.error,
                  ),
                ),
              ),
            ),
          if (_query.isEmpty)
            SliverToBoxAdapter(child: _Suggestions(recent: _recent, onTap: (q) {
              _controller.text = q;
              _run(q);
            }))
          else if (_results.isEmpty && !_loading)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyState(
                icon: Icons.search_off_rounded,
                title: 'Nothing found',
                body: 'Try a different spelling, or paste a YouTube link.',
              ),
            )
          else ...[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 6, 16, 2),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        l.searchResults(_results.length),
                        style: t.textTheme.labelMedium?.copyWith(
                          color: t.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () => ref
                          .read(musicProvider)
                          .playAll(_results, origin: 'search'),
                      icon: const Icon(Icons.play_arrow_rounded, size: 18),
                      label: const Text('Play all'),
                    ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemCount: _results.length,
              itemBuilder: (_, i) => SongTile(
                song: _results[i],
                showAlbum: true,
                queue: _results,
                origin: 'search',
              ),
            ),
          ],
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}

class _Suggestions extends ConsumerWidget {
  const _Suggestions({required this.recent, required this.onTap});
  final List<String> recent;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final profile = ref.watch(tasteProfileProvider).value;
    final seeds = <String>[
      for (final a in profile?.artists.take(4) ?? const <(String, double)>[])
        a.$1,
      for (final g in profile?.tags.take(5) ?? const <(String, double)>[]) g.$1,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (recent.isNotEmpty) ...[
          SectionHeader(
            title: L.of(context).searchRecent,
            padding: EdgeInsets.fromLTRB(16, 8, 8, 4),
          ),
          for (final q in recent)
            ListTile(
              leading: const Icon(Icons.history_rounded),
              title: Text(q),
              trailing: const Icon(Icons.north_west_rounded, size: 18),
              onTap: () => onTap(q),
            ),
        ],
        SectionHeader(
          title: seeds.isEmpty ? 'Try something' : 'From what the AI learned',
          subtitle: seeds.isEmpty
              ? 'Search for anything on YouTube'
              : 'Tap a seed to dig around it',
          padding: const EdgeInsets.fromLTRB(16, 18, 8, 10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final q in (seeds.isEmpty
                  ? const [
                      'new music this week',
                      'lo-fi beats',
                      'rock classics',
                      'top 50 songs',
                      'electronic 2026',
                      'jazz for studying',
                    ]
                  : seeds))
                ActionChip(
                  label: Text(q),
                  onPressed: () => onTap(q),
                  avatar: Icon(
                    seeds.isEmpty
                        ? Icons.search_rounded
                        : Icons.auto_awesome_rounded,
                    size: 15,
                    color: t.colorScheme.primary,
                  ),
                ),
            ],
          ),
        ),
        if (profile != null && profile.artists.isNotEmpty) ...[
          const SectionHeader(title: 'Artists you play'),
          for (final a in profile.artists.take(6))
            ListTile(
              leading: CircleAvatar(
                backgroundColor: t.colorScheme.secondaryContainer,
                child: Text(
                  a.$1.isEmpty ? '?' : a.$1[0].toUpperCase(),
                  style: TextStyle(color: t.colorScheme.onSecondaryContainer),
                ),
              ),
              title: Text(a.$1),
              subtitle: Text('${(a.$2 * 100).round()}% affinity'),
              onTap: () => pushDetail(
                context,
                'artist/${Uri.encodeComponent(a.$1)}',
              ),
            ),
        ],
        const SizedBox(height: 20),
      ],
    );
  }
}
