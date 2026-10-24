import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/router.dart';
import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../state/settings.dart';
import '../detail/playlist_actions.dart';
import '../../ui/common.dart';
import '../../ui/motion.dart';
import '../../l10n/app_localizations.dart';

enum _Sort { recent, alpha, plays, year }

class LibraryPage extends ConsumerStatefulWidget {
  const LibraryPage({super.key});

  @override
  ConsumerState<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends ConsumerState<LibraryPage> {
  late _Sort _sort = _Sort.values.firstWhere(
    (s) => s.name == ref.read(prefsProvider).getString('librarySort'),
    orElse: () => _Sort.recent,
  );
  bool _grid = true;

  void _setSort(_Sort sort) {
    setState(() => _sort = sort);
    ref.read(prefsProvider).setString('librarySort', sort.name);
  }

  final _sortCache = <String, List<Song>>{};
  final _sortSignatures = <String, String>{};

  /// Sorting four lists on every rebuild showed up as 40-160ms frames when
  /// switching tabs, and this page rebuilds on every database tick. The result
  /// only changes when the list or the chosen order does.
  List<Song> _sorted(List<Song> songs, String key) {
    final signature =
        '$_sort|${songs.length}|'
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
        out.sort(
          (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
        );
      case _Sort.plays:
        out.sort((a, b) => b.playCount.compareTo(a.playCount));
      case _Sort.year:
        out.sort((a, b) => (b.year ?? 0).compareTo(a.year ?? 0));
    }
    return out;
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final libraryAsync = ref.watch(libraryProvider);
    final library = libraryAsync.value ?? const <Song>[];
    // First launch of the screen: say "loading", not "nothing here yet".
    final loading = libraryAsync.isLoading && !libraryAsync.hasValue;
    final liked = ref.watch(likedProvider).value ?? const <Song>[];
    final downloaded = ref.watch(downloadedProvider).value ?? const <Song>[];
    final imported = ref.watch(importedProvider).value ?? const <Song>[];

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l.navLibrary),
          actions: [
            IconButton(
              tooltip: l.homeAddMusic,
              onPressed: () => pushDetail(context, 'import'),
              icon: const Icon(Icons.library_add_outlined),
            ),
            IconButton(
              tooltip: _grid ? l.aLibListView : l.aLibGridView,
              onPressed: () => setState(() => _grid = !_grid),
              icon: Icon(
                _grid ? Icons.view_list_rounded : Icons.grid_view_rounded,
              ),
            ),
            const SizedBox(width: 4),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerHeight: 0,
            tabs: [
              Tab(text: l.libPlaylists),
              Tab(text: l.libSongs),
              Tab(text: l.libArtists),
              Tab(text: l.libLiked),
              Tab(text: l.libDownloads),
              Tab(text: l.libImported),
            ],
          ),
        ),
        body: Column(
          children: [
            // Sorting means nothing for playlists (tab 0) and artists (tab 2).
            Builder(
              builder: (context) {
                final tabs = DefaultTabController.of(context);
                return AnimatedBuilder(
                  animation: tabs.animation!,
                  builder: (context, _) {
                    final index = tabs.animation!.value.round();
                    return AnimatedSize(
                      duration: Motion.fast,
                      curve: Motion.emphasized,
                      alignment: Alignment.topCenter,
                      child: index == 0 || index == 2
                          ? const SizedBox(width: double.infinity)
                          : _SortRow(sort: _sort, onSort: _setSort),
                    );
                  },
                );
              },
            ),
            Expanded(
              child: loading
                  ? const SingleChildScrollView(child: SongListSkeleton())
                  : TabBarView(
                      children: [
                        _PlaylistsTab(grid: _grid),
                        _SongsTab(
                          songs: _sorted(library, 'library'),
                          origin: 'library',
                        ),
                        _ArtistsTab(library: library),
                        _SongsTab(
                          songs: _sorted(liked, 'liked'),
                          origin: 'liked',
                        ),
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
          tooltip: l.importTitle,
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

  static Map<_Sort, String> _labels(L l) => {
    _Sort.recent: l.libSortRecent,
    _Sort.alpha: l.aLibSortAlpha,
    _Sort.plays: l.libSortPlays,
    _Sort.year: l.aLibSortYear,
  };

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final labels = _labels(L.of(context));
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
    final l = L.of(context);
    if (songs.isEmpty) {
      return EmptyState(
        icon: Icons.music_note_outlined,
        title: l.aLibNothingYet,
        body: origin == 'imported' ? l.aLibImportedEmptyBody : l.aLibEmptyBody,
        action: FilledButton.icon(
          onPressed: () => pushDetail(context, 'import'),
          icon: const Icon(Icons.library_add_outlined),
          label: Text(l.importTitle),
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
                    label: Text(l.actionPlay),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: FilledButton.tonalIcon(
                    onPressed: () {
                      final shuffled = [...songs]..shuffle();
                      ref.read(musicProvider).playAll(shuffled, origin: origin);
                    },
                    icon: const Icon(Icons.shuffle_rounded),
                    label: Text(l.actionShuffle),
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
    final l = L.of(context);
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
                  l.aLibBannerSummary(
                    l.libSongCount(songs.length),
                    prettyBytes(bytes),
                  ),
                  style: t.textTheme.titleSmall?.copyWith(
                    color: t.colorScheme.onSecondaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  auto == 0 ? l.aLibOfflineNote : l.aLibAiPicked('$auto'),
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
    final l = L.of(context);
    final t = Theme.of(context);
    final playlists = ref.watch(playlistsProvider).value ?? const <Playlist>[];
    final liked = ref.watch(likedProvider).value ?? const <Song>[];
    final downloaded = ref.watch(downloadedProvider).value ?? const <Song>[];
    final imported = ref.watch(importedProvider).value ?? const <Song>[];

    final smart = [
      ('liked', l.libLikedSongs, l.libSongCount(liked.length), liked),
      (
        'downloads',
        l.libDownloads,
        l.libOfflineCount(downloaded.length),
        downloaded,
      ),
      ('imported', l.libMyFiles, l.libFileCount(imported.length), imported),
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
          subtitle: l.aPlaylistLabel,
          icon: Icons.queue_music_rounded,
          onTap: () => pushDetail(context, 'playlist/${p.id}'),
          onLongPress: () =>
              showPlaylistMenu(context, ref, id: p.id, name: p.name),
        ),
      _CollectionTile(
        title: l.libNewPlaylist,
        subtitle: l.libMakeOne,
        icon: Icons.add_rounded,
        onTap: () async {
          final name = await promptForName(context, l.libNewPlaylist);
          if (name == null) return;
          await ref
              .read(dbProvider)
              .createPlaylist(
                'pl${DateTime.now().millisecondsSinceEpoch}',
                name,
              );
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
    final l = L.of(context);
    final t = Theme.of(context);
    final counts = <String, List<Song>>{};
    for (final s in library) {
      if (s.artist.trim().isEmpty) continue;
      counts.putIfAbsent(s.artist, () => []).add(s);
    }
    final artists = counts.entries.toList()
      ..sort((a, b) => b.value.length.compareTo(a.value.length));

    if (artists.isEmpty) {
      return EmptyState(
        icon: Icons.person_outline_rounded,
        title: l.aLibNoArtists,
        body: l.aLibNoArtistsBody,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 90),
      itemCount: artists.length,
      itemBuilder: (_, i) {
        final entry = artists[i];
        return ListTile(
          onTap: () =>
              pushDetail(context, 'artist/${Uri.encodeComponent(entry.key)}'),
          leading: CoverArt(song: entry.value.first, size: 50, circle: true),
          title: Text(entry.key),
          subtitle: Text(
            '${l.libSongCount(entry.value.length)} · '
            '${l.reasonPlays(entry.value.fold<int>(0, (a, s) => a + s.playCount))}',
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
