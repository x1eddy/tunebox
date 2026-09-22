import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';

/// One screen for real playlists and for the built-in ones
/// (liked / downloads / imported).
class PlaylistPage extends ConsumerWidget {
  const PlaylistPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);

    final (title, subtitle, songs) = switch (id) {
      'liked' => (
        'Liked songs',
        'Everything you hit the heart on',
        ref.watch(likedProvider).value ?? const <Song>[],
      ),
      'downloads' => (
        'Downloads',
        'Plays with no connection',
        ref.watch(downloadedProvider).value ?? const <Song>[],
      ),
      'imported' => (
        'My own files',
        'Music you added from this device',
        ref.watch(importedProvider).value ?? const <Song>[],
      ),
      _ => (
        ref
                .watch(playlistsProvider)
                .value
                ?.where((p) => p.id == id)
                .firstOrNull
                ?.name ??
            'Playlist',
        'Playlist',
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
              IconButton(
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
                                  '${songs.length} songs · '
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
                      label: const Text('Play'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: FilledButton.tonalIcon(
                      onPressed: songs.isEmpty
                          ? null
                          : () => _downloadAll(ref, songs),
                      icon: const Icon(Icons.download_outlined),
                      label: const Text('Download'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (songs.isEmpty)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyState(
                icon: Icons.queue_music_rounded,
                title: 'Empty for now',
                body: 'Add songs from the ⋮ menu on any track.',
              ),
            )
          else
            SliverList.builder(
              itemCount: songs.length,
              itemBuilder: (_, i) => SongTile(
                song: songs[i],
                queue: songs,
                origin: 'playlist:$id',
                leadingIndex: i + 1,
              ),
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 28)),
        ],
      ),
    );
  }

  void _downloadAll(WidgetRef ref, List<Song> songs) {
    final music = ref.read(musicProvider);
    for (final song in songs.where((s) => s.source == SongSource.youtube)) {
      music.download(song);
    }
  }
}
