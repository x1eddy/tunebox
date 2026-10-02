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

  /// Search results by normalised query, as song ids. Kept for the life of
  /// the app, so repeating a search — or backing out of a result and coming
  /// back — costs nothing. Ids rather than songs, so likes and blocks made in
  /// the meantime still show.
  static final _cache = <String, ({List<String> ids, DateTime at})>{};
  static Object? _cacheOwner;
  static const _cacheTtl = Duration(minutes: 20);

  int _gen = 0;
  List<Song> _lastResults = const [];

  static String _norm(String q) =>
      q.trim().toLowerCase().replaceAll(RegExp(r'\s+'), ' ');

  @override
  void initState() {
    super.initState();
    // Open the connection to YouTube while the user is still typing.
    unawaited(ref.read(ytProvider).warmUp());
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

  bool _matches(Song s, List<String> tokens) {
    final hay = '${s.title} ${s.artist} ${s.album}'.toLowerCase();
    return tokens.every(hay.contains);
  }

  void _onChanged(String value) {
    _debounce?.cancel();
    final q = _norm(value);
    if (q.isEmpty) {
      _run('');
      return;
    }
    // Answer at once with what is already known — the library, and whatever
    // the previous (shorter) query found that still fits — then let the
    // network refine it. Typing never waits on YouTube to show something.
    final tokens = q.split(' ');
    final library = ref.read(libraryProvider).value ?? const <Song>[];
    final local = library.where((s) => !s.blocked && _matches(s, tokens));
    final carried = _lastResults.where(
      (s) => !s.blocked && _matches(s, tokens) && !local.any((l) => l.id == s.id),
    );
    setState(() {
      _query = q;
      _error = null;
      _results = [...local, ...carried];
      _loading = true;
    });
    final cached = _cache[q];
    final fresh = cached != null && DateTime.now().difference(cached.at) < _cacheTtl;
    _debounce = Timer(
      fresh ? Duration.zero : Duration(milliseconds: q.length < 3 ? 260 : 120),
      () => _run(value),
    );
  }

  Future<void> _run(String value) async {
    final query = value.trim();
    final key = _norm(value);
    final gen = ++_gen;
    setState(() {
      _query = query;
      _error = null;
    });
    if (query.isEmpty) {
      setState(() {
        _results = const [];
        _loading = false;
      });
      return;
    }
    setState(() => _loading = true);
    try {
      final db = ref.read(dbProvider);
      // A different profile means a different database: start clean.
      if (_cacheOwner != db) {
        _cache.clear();
        _cacheOwner = db;
      }

      List<Song> songs;
      final hit = _cache[key];
      if (hit != null && DateTime.now().difference(hit.at) < _cacheTtl) {
        songs = (await db.songsByIds(hit.ids)).where((s) => !s.blocked).toList();
      } else {
        final found = await ref.read(ytProvider).search(query, max: 30);
        await db.cacheSongs(found);
        final ids = [for (final c in found) c.id.value];
        _cache[key] = (ids: ids, at: DateTime.now());
        songs = (await db.songsByIds(ids)).where((s) => !s.blocked).toList();
      }
      // The user has typed on since: this answer is cached for later, but is
      // not what they are looking at any more.
      if (!mounted || gen != _gen) return;

      final tokens = key.split(' ');
      final local = (ref.read(libraryProvider).value ?? const <Song>[])
          .where((s) => !s.blocked && _matches(s, tokens))
          .where((s) => !songs.any((y) => y.id == s.id));
      setState(() {
        _results = [...local, ...songs];
        _lastResults = _results;
        _loading = false;
        if (!_recent.contains(query)) _recent.insert(0, query);
        if (_recent.length > 8) _recent.removeLast();
      });
    } catch (e) {
      if (!mounted || gen != _gen) return;
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
    final artists = [
      for (final a in profile?.artists.take(4) ?? const <(String, double)>[])
        a.$1,
    ];
    // A tag that just repeats an artist ("michael jackson", "jackson") is the
    // same chip twice.
    final seeds = <String>[
      ...artists,
      for (final g in profile?.tags.take(8) ?? const <(String, double)>[])
        if (!artists.any((a) {
          final x = a.toLowerCase(), y = g.$1.toLowerCase();
          return x == y || x.contains(y) || y.contains(x);
        }))
          g.$1,
    ].take(8).toList();

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
