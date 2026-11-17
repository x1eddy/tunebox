import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/router.dart';
import '../../data/db/database.dart';
import '../../data/services/innertube.dart' show AlbumItem;
import '../../l10n/app_localizations.dart';
import '../../state/albums.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../ui/motion.dart';

String albumKindLabel(L l, String kind) => switch (kind) {
  'Single' => l.albumKindSingle,
  'EP' => l.albumKindEp,
  _ => l.albumKindAlbum,
};

/// Opens an album: "MPREb_…" from YouTube Music, "local~…" from this device.
void openAlbum(BuildContext context, String id) =>
    pushDetail(context, 'album/${Uri.encodeComponent(id)}');

/// A square cover with title and "artist · year" under it, for shelves and
/// grids.
class AlbumCard extends StatelessWidget {
  const AlbumCard({
    super.key,
    required this.id,
    required this.title,
    required this.subtitle,
    this.imageUrl,
    this.song,
    this.size = 140,
  });

  AlbumCard.fromItem(AlbumItem a, {super.key, this.size = 140})
    : id = a.browseId,
      title = a.title,
      subtitle = [
        a.artist,
        if (a.year != null) '${a.year}',
      ].where((s) => s.isNotEmpty).join(' · '),
      imageUrl = a.thumbnailUrl,
      song = null;

  AlbumCard.fromView(AlbumView a, {super.key, this.size = 140})
    : id = a.id,
      title = a.title,
      subtitle = [
        a.artist,
        if (a.year != null) '${a.year}',
      ].where((s) => s.isNotEmpty).join(' · '),
      imageUrl = a.artUrl,
      song = a.songs.firstOrNull;

  final String id;
  final String title;
  final String subtitle;
  final String? imageUrl;
  final Song? song;
  final double size;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SizedBox(
      width: size,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => openAlbum(context, id),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoverArt(
              song: song,
              imageUrl: imageUrl,
              size: size,
              seedText: title,
            ),
            const SizedBox(height: 6),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: t.textTheme.titleSmall,
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
      ),
    );
  }
}

class AlbumPage extends ConsumerWidget {
  const AlbumPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);
    final async = ref.watch(albumProvider(id));
    final album = async.value;

    if (album == null) {
      return Scaffold(
        appBar: AppBar(),
        body: async.hasError
            ? EmptyState(
                icon: Icons.album_outlined,
                title: l.albumLoadFailed,
                body: '',
                action: FilledButton(
                  onPressed: () => ref.invalidate(albumProvider(id)),
                  child: Text(l.actionRetry),
                ),
              )
            : const SingleChildScrollView(child: SongListSkeleton()),
      );
    }

    final songs = album.songs;
    final meta = [
      albumKindLabel(l, album.kind),
      if (album.year != null) '${album.year}',
      album.info.isNotEmpty ? album.info : l.libSongCount(songs.length),
    ].join(' · ');

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(pinned: true, title: Text(album.title)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 8),
              child: Column(
                children: [
                  LayoutBuilder(
                    builder: (_, c) => CoverArt(
                      song: songs.firstOrNull,
                      imageUrl: album.artUrl,
                      size: c.maxWidth.clamp(120.0, 260.0),
                      seedText: album.title,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    album.title,
                    textAlign: TextAlign.center,
                    style: t.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.6,
                    ),
                  ),
                  if (album.artist.isNotEmpty)
                    TextButton(
                      onPressed: () => pushDetail(
                        context,
                        'artist/${Uri.encodeComponent(album.artist)}',
                      ),
                      child: Text(album.artist),
                    ),
                  Text(
                    meta,
                    textAlign: TextAlign.center,
                    style: t.textTheme.bodySmall?.copyWith(
                      color: t.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: songs.isEmpty
                              ? null
                              : () => ref
                                    .read(musicProvider)
                                    .playAll(songs, origin: 'album'),
                          icon: const Icon(Icons.play_arrow_rounded),
                          label: Text(l.actionPlay),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: songs.isEmpty
                              ? null
                              : () => ref
                                    .read(musicProvider)
                                    .playAll(
                                      [...songs]..shuffle(),
                                      origin: 'album',
                                    ),
                          icon: const Icon(Icons.shuffle_rounded),
                          label: Text(l.actionShuffle),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: songs.length,
            itemBuilder: (_, i) => SongTile(
              song: songs[i],
              queue: songs,
              origin: 'album',
              leadingIndex: i + 1,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 28)),
        ],
      ),
    );
  }
}
