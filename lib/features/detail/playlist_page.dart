import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../l10n/app_localizations.dart';
import '../../ui/common.dart';
import 'playlist_actions.dart';

/// One screen for real playlists and for the built-in ones
/// (liked / downloads / imported).
class PlaylistPage extends ConsumerWidget {
  const PlaylistPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);

    final (title, subtitle, songs) = switch (id) {
      'liked' => (
        l.libLikedSongs,
        l.aPlLikedSub,
        ref.watch(likedProvider).value ?? const <Song>[],
      ),
      'downloads' => (
        l.libDownloads,
        l.aPlDownloadsSub,
        ref.watch(downloadedProvider).value ?? const <Song>[],
      ),
      'imported' => (
        l.libMyFiles,
        l.aPlImportedSub,
        ref.watch(importedProvider).value ?? const <Song>[],
      ),
      _ => (
        ref
                .watch(playlistsProvider)
                .value
                ?.where((p) => p.id == id)
                .firstOrNull
                ?.name ??
            l.aPlaylistLabel,
        l.aPlaylistLabel,
        ref.watch(playlistSongsProvider(id)).value ?? const <Song>[],
      ),
    };

    final total = songs.fold(
      Duration.zero,
      (a, s) => a + Duration(milliseconds: s.durationMs),
    );
    final cover = songs.isEmpty ? null : songs.first;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            actions: [
              if (!const {'liked', 'downloads', 'imported'}.contains(id))
                IconButton(
                  tooltip: l.plRenameOrDelete,
                  onPressed: () => showPlaylistMenu(
                    context,
                    ref,
                    id: id,
                    name: title,
                    onDeleted: () => Navigator.of(context).maybePop(),
                  ),
                  icon: const Icon(Icons.more_vert_rounded),
                ),
              IconButton(
                tooltip: l.actionShuffle,
                onPressed: () => ref
                    .read(musicProvider)
                    .playAll([...songs]..shuffle(), origin: 'playlist:$id'),
                icon: const Icon(Icons.shuffle_rounded),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  CoverBackdrop(song: cover),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 48, 20, 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 128,
                            height: 128,
                            child: cover == null
                                ? DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: t.colorScheme.surfaceContainerHigh,
                                      borderRadius: R.card,
                                    ),
                                    child: Icon(
                                      Icons.queue_music_rounded,
                                      size: 46,
                                      color: t.colorScheme.primary,
                                    ),
                                  )
                                : CoverArt(song: cover, size: 128),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  subtitle.toUpperCase(),
                                  style: t.textTheme.labelSmall?.copyWith(
                                    letterSpacing: 1.3,
                                    color: t.colorScheme.primary,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: t.textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.7,
                                    height: 1.1,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${l.libSongCount(songs.length)} · '
                                  '${formatDuration(total)}',
                                  style: t.textTheme.bodySmall?.copyWith(
                                    color: t.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
              child: Row(
                children: [
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: songs.isEmpty
                          ? null
                          : () => ref
                                .read(musicProvider)
                                .playAll(songs, origin: 'playlist:$id'),
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: Text(l.actionPlay),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: FilledButton.tonalIcon(
                      onPressed:
                          songs.every((s) => s.source != SongSource.youtube)
                          ? null
                          : () => _downloadAll(context, ref, songs),
                      icon: Icon(
                        songs.isNotEmpty &&
                                songs.every(
                                  (s) => s.source != SongSource.youtube,
                                )
                            ? Icons.download_done_rounded
                            : Icons.download_outlined,
                      ),
                      label: Text(
                        songs.isNotEmpty &&
                                songs.every(
                                  (s) => s.source != SongSource.youtube,
                                )
                            ? l.sheetDownloaded
                            : l.sheetDownload,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (songs.isEmpty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyState(
                icon: Icons.queue_music_rounded,
                title: l.aPlEmptyTitle,
                body: l.aPlEmptyBody,
              ),
            )
          else
            SliverList.builder(
              itemCount: songs.length,
              itemBuilder: (_, i) {
                final tile = SongTile(
                  song: songs[i],
                  queue: songs,
                  origin: 'playlist:$id',
                  leadingIndex: i + 1,
                );
                // built-in lists are views over the library, not editable
                if (const {'liked', 'downloads', 'imported'}.contains(id)) {
                  return tile;
                }
                final song = songs[i];
                return Dismissible(
                  key: ValueKey('${id}_${song.id}'),
                  direction: DismissDirection.endToStart,
                  onDismissed: (_) {
                    final db = ref.read(dbProvider);
                    db.removeFromPlaylist(id, song.id);
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showTimed(
                        SnackBar(
                          duration: const Duration(seconds: 5),
                          content: Text(
                            L.of(context).qRemoved(song.title),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          action: SnackBarAction(
                            label: L.of(context).qUndo,
                            onPressed: () => db.addAllToPlaylist(id, [song.id]),
                          ),
                        ),
                      );
                  },
                  background: ColoredBox(
                    color: t.colorScheme.errorContainer,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.playlist_remove_rounded,
                          color: t.colorScheme.onErrorContainer,
                        ),
                      ),
                    ),
                  ),
                  child: tile,
                );
              },
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 28)),
        ],
      ),
    );
  }

  void _downloadAll(BuildContext context, WidgetRef ref, List<Song> songs) {
    final music = ref.read(musicProvider);
    final todo = songs.where((s) => s.source == SongSource.youtube).toList();
    for (final song in todo) {
      music.download(song);
    }
    ScaffoldMessenger.of(context).showTimed(
      SnackBar(
        content: Text(
          L.of(context).aPlDownloading(L.of(context).libSongCount(todo.length)),
        ),
      ),
    );
  }
}
