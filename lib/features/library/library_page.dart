import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/router.dart';
import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';

enum _Sort { recent, alpha, plays, year }

class LibraryPage extends ConsumerStatefulWidget {
  const LibraryPage({super.key});

  @override
  ConsumerState<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends ConsumerState<LibraryPage> {
  _Sort _sort = _Sort.recent;
  bool _grid = true;
  final _sortCache = <String, List<Song>>{};
  final _sortSignatures = <String, String>{};

  /// Sorting four lists on every rebuild showed up as 40-160ms frames when
  /// switching tabs, and this page rebuilds on every database tick. The result
  /// only changes when the list or the chosen order does.
  List<Song> _sorted(List<Song> songs, String key) {
    final signature = '$_sort|${songs.length}|'
        '${songs.isEmpty ? '' : songs.first.id}|'
        '${songs.isEmpty ? '' : songs.last.id}';
    if (_sortSignatures[key] == signature) return _sortCache[key]!;
    final sorted = _sortNow(songs);
    _sortCache[key] = sorted;
    _sortSignatures[key] = signature;
    return sorted;
  }

  List<Song> _sortNow(List<Song> songs) {
    final out = [...songs];
    switch (_sort) {
      case _Sort.recent:
        out.sort((a, b) => b.addedAt.compareTo(a.addedAt));
      case _Sort.alpha:
        out.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
      case _Sort.plays:
        out.sort((a, b) => b.playCount.compareTo(a.playCount));
      case _Sort.year:
        out.sort((a, b) => (b.year ?? 0).compareTo(a.year ?? 0));
    }
    return out;
  }

  @override
  Widget build(BuildContext context) {
    final library = ref.watch(libraryProvider).value ?? const <Song>[];
    final liked = ref.watch(likedProvider).value ?? const <Song>[];
    final downloaded = ref.watch(downloadedProvider).value ?? const <Song>[];
    final imported = ref.watch(importedProvider).value ?? const <Song>[];

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Library'),
          actions: [
            IconButton(
              tooltip: 'Add music from this device',
              onPressed: () => pushDetail(context, 'import'),
              icon: const Icon(Icons.library_add_outlined),
            ),
            IconButton(
              tooltip: _grid ? 'List view' : 'Grid view',
              onPressed: () => setState(() => _grid = !_grid),
              icon: Icon(
                _grid ? Icons.view_list_rounded : Icons.grid_view_rounded,
              ),
            ),
            IconButton(
              onPressed: () => pushDetail(context, 'settings'),
              icon: const Icon(Icons.settings_outlined),
            ),
            const SizedBox(width: 4),
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerHeight: 0,
            tabs: [
              Tab(text: 'Playlists'),
              Tab(text: 'Songs'),
              Tab(text: 'Artists'),
              Tab(text: 'Liked'),
              Tab(text: 'Downloads'),
              Tab(text: 'Imported'),
            ],
          ),
        ),
        body: Column(
          children: [
            _SortRow(sort: _sort, onSort: (v) => setState(() => _sort = v)),
            Expanded(
              child: TabBarView(
                children: [
                  _PlaylistsTab(grid: _grid),
                  _SongsTab(songs: _sorted(library, 'library'), origin: 'library'),
                  _ArtistsTab(library: library),
                  _SongsTab(songs: _sorted(liked, 'liked'), origin: 'liked'),
                  _SongsTab(
                    songs: _sorted(downloaded, 'downloaded'),
                    origin: 'downloads',
                    banner: _DownloadBanner(songs: downloaded),
                  ),
                  _SongsTab(
                    songs: _sorted(imported, 'imported'),
                    origin: 'imported',
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => pushDetail(context, 'import'),
          tooltip: 'Add music',
          child: const Icon(Icons.add_rounded),
        ),
      ),
    );
  }
}

class _SortRow extends StatelessWidget {
  const _SortRow({required this.sort, required this.onSort});
  final _Sort sort;
  final ValueChanged<_Sort> onSort;

  static const labels = {
    _Sort.recent: 'Recently added',
    _Sort.alpha: 'A–Z',
    _Sort.plays: 'Most played',
    _Sort.year: 'Year',
  };

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SizedBox(
      height: 46,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        children: [
          PopupMenuButton<_Sort>(
            initialValue: sort,
            onSelected: onSort,
            itemBuilder: (_) => [
              for (final e in labels.entries)
                PopupMenuItem(value: e.key, child: Text(e.value)),
            ],
            child: Chip(
              label: Text(labels[sort]!),
              avatar: Icon(
                Icons.swap_vert_rounded,
                size: 17,
                color: t.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SongsTab extends ConsumerWidget {
  const _SongsTab({required this.songs, required this.origin, this.banner});
  final List<Song> songs;
  final String origin;
  final Widget? banner;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (songs.isEmpty) {
      return EmptyState(
        icon: Icons.music_note_outlined,
        title: 'Nothing here yet',
        body: origin == 'imported'
            ? 'Add the music that is already on this device.'
            : 'Play or download something and it lands here.',
        action: FilledButton.icon(
          onPressed: () => pushDetail(context, 'import'),
          icon: const Icon(Icons.library_add_outlined),
          label: const Text('Add music'),
        ),
      );
    }

    final headers = banner == null ? 1 : 2;
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 90),
      itemCount: songs.length + headers,
      itemBuilder: (_, i) {
        if (banner != null && i == 0) return banner!;
        if (i == headers - 1) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () =>
                        ref.read(musicProvider).playAll(songs, origin: origin),
                    icon: const Icon(Icons.play_arrow_rounded),
                    label: const Text('Play'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: FilledButton.tonalIcon(
                    onPressed: () {
                      final shuffled = [...songs]..shuffle();
                      ref
                          .read(musicProvider)
                          .playAll(shuffled, origin: origin);
                    },
                    icon: const Icon(Icons.shuffle_rounded),
                    label: const Text('Shuffle'),
                  ),
                ),
              ],
            ),
          );
        }
        return SongTile(
          song: songs[i - headers],
          showAlbum: true,
          queue: songs,
          origin: origin,
        );
      },
    );
  }
}

class _DownloadBanner extends ConsumerWidget {
  const _DownloadBanner({required this.songs});
  final List<Song> songs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final bytes = songs.fold<int>(0, (a, s) => a + s.fileSize);
    final auto = songs.where((s) => s.autoAdded).length;
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 4, 16, 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: t.colorScheme.secondaryContainer,
        borderRadius: R.card,
      ),
      child: Row(
        children: [
          Icon(
            Icons.download_done_rounded,
            color: t.colorScheme.onSecondaryContainer,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${songs.length} songs · ${prettyBytes(bytes)} on this device',
                  style: t.textTheme.titleSmall?.copyWith(
                    color: t.colorScheme.onSecondaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  auto == 0
                      ? 'These play with no connection at all'
                      : '$auto of them the AI picked for you',
                  style: t.textTheme.bodySmall?.copyWith(
                    color: t.colorScheme.onSecondaryContainer,
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

class _PlaylistsTab extends ConsumerWidget {
  const _PlaylistsTab({required this.grid});
  final bool grid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final playlists = ref.watch(playlistsProvider).value ?? const <Playlist>[];
    final liked = ref.watch(likedProvider).value ?? const <Song>[];
    final downloaded = ref.watch(downloadedProvider).value ?? const <Song>[];
    final imported = ref.watch(importedProvider).value ?? const <Song>[];

    final smart = [
      ('liked', 'Liked songs', '${liked.length} songs', liked),
      ('downloads', 'Downloads', '${downloaded.length} offline', downloaded),
      ('imported', 'My own files', '${imported.length} files', imported),
    ];

    final tiles = <_CollectionTile>[
      for (final (id, title, sub, songs) in smart)
        _CollectionTile(
          title: title,
          subtitle: sub,
          song: songs.isEmpty ? null : songs.first,
          icon: switch (id) {
            'liked' => Icons.favorite_rounded,
            'downloads' => Icons.download_done_rounded,
            _ => Icons.sd_storage_outlined,
          },
          onTap: () => pushDetail(context, 'playlist/$id'),
        ),
      for (final p in playlists)
        _CollectionTile(
          title: p.name,
          subtitle: 'Playlist',
          icon: Icons.queue_music_rounded,
          onTap: () => pushDetail(context, 'playlist/${p.id}'),
          onLongPress: () => ref.read(dbProvider).deletePlaylist(p.id),
        ),
      _CollectionTile(
        title: 'New playlist',
        subtitle: 'Make one',
        icon: Icons.add_rounded,
        onTap: () async {
          final name = await promptForName(context, 'New playlist');
          if (name == null) return;
          await ref
              .read(dbProvider)
              .createPlaylist('pl${DateTime.now().millisecondsSinceEpoch}', name);
        },
      ),
    ];

    if (!grid) {
      return ListView(
        padding: const EdgeInsets.only(bottom: 90),
        children: [
          for (final tile in tiles)
            ListTile(
              leading: Icon(tile.icon, color: t.colorScheme.primary),
              title: Text(tile.title),
              subtitle: Text(tile.subtitle),
              onTap: tile.onTap,
            ),
        ],
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 90),
      // Phone: two columns. Desktop: as many 190px tiles as fit.
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 14,
        mainAxisSpacing: 16,
        childAspectRatio: 0.78,
      ),
      itemCount: tiles.length,
      itemBuilder: (_, i) => tiles[i],
    );
  }
}

class _CollectionTile extends StatelessWidget {
  const _CollectionTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
    this.song,
    this.onLongPress,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final Song? song;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return InkWell(
      borderRadius: R.card,
      onTap: onTap,
      onLongPress: onLongPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: song != null
                ? Stack(
                    fit: StackFit.expand,
                    children: [
                      CoverArt(song: song),
                      Positioned(
                        left: 8,
                        top: 8,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: t.colorScheme.surface.withValues(alpha: .82),
                            borderRadius: R.pill,
                          ),
                          child: Icon(
                            icon,
                            size: 15,
                            color: t.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(
                    decoration: BoxDecoration(
                      color: t.colorScheme.surfaceContainerHigh,
                      borderRadius: R.card,
                    ),
                    child: Icon(icon, size: 34, color: t.colorScheme.primary),
                  ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: t.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: t.textTheme.bodySmall?.copyWith(
              color: t.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _ArtistsTab extends StatelessWidget {
  const _ArtistsTab({required this.library});
  final List<Song> library;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final counts = <String, List<Song>>{};
    for (final s in library) {
      if (s.artist.trim().isEmpty) continue;
      counts.putIfAbsent(s.artist, () => []).add(s);
    }
    final artists = counts.entries.toList()
      ..sort((a, b) => b.value.length.compareTo(a.value.length));

    if (artists.isEmpty) {
      return const EmptyState(
        icon: Icons.person_outline_rounded,
        title: 'No artists yet',
        body: 'Play a few songs and they collect here.',
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 90),
      itemCount: artists.length,
      itemBuilder: (_, i) {
        final entry = artists[i];
        return ListTile(
          onTap: () => pushDetail(
            context,
            'artist/${Uri.encodeComponent(entry.key)}',
          ),
          leading: CoverArt(
            song: entry.value.first,
            size: 50,
            circle: true,
          ),
          title: Text(entry.key),
          subtitle: Text(
            '${entry.value.length} songs · '
            '${entry.value.fold<int>(0, (a, s) => a + s.playCount)} plays',
            style: t.textTheme.bodySmall?.copyWith(
              color: t.colorScheme.onSurfaceVariant,
            ),
          ),
          trailing: const Icon(Icons.chevron_right_rounded),
        );
      },
    );
  }
}
