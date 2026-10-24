import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../ui/artwork.dart';
import '../../l10n/app_localizations.dart';
import '../../ui/common.dart';

class ArtistPage extends ConsumerWidget {
  const ArtistPage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);
    final songsAsync = ref.watch(artistSongsProvider(name));
    final rules = ref.watch(artistRulesProvider).value ?? const <ArtistRule>[];
    final rule = rules
        .where((r) => r.artist.toLowerCase() == name.toLowerCase())
        .firstOrNull
        ?.rule;
    final songs = songsAsync.value ?? const <Song>[];
    final cover = songs.isEmpty ? null : songs.first;
    final plays = songs.fold<int>(0, (a, s) => a + s.playCount);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 270,
            actions: [
              PopupMenuButton<int>(
                onSelected: (value) {
                  final music = ref.read(musicProvider);
                  if (value == 0) {
                    music.clearArtistRule(name);
                  } else {
                    music.setArtistRule(name, value);
                  }
                },
                itemBuilder: (_) => [
                  PopupMenuItem(value: 1, child: Text(l.aArtistAlwaysMore)),
                  PopupMenuItem(value: -1, child: Text(l.tasteNeverAgain)),
                  PopupMenuItem(value: 0, child: Text(l.aArtistClearRule)),
                ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  CoverBackdrop(
                    song: cover,
                    colors: [
                      Colors.transparent,
                      t.colorScheme.surface.withValues(alpha: 0.86),
                      t.colorScheme.surface,
                    ],
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (cover != null)
                            CoverArt(song: cover, size: 84, circle: true),
                          const SizedBox(height: 10),
                          Text(
                            name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: t.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.8,
                            ),
                          ),
                          Text(
                            '${l.libSongCount(songs.length)} · ${l.reasonPlays(plays)}'
                            '${rule == 1
                                ? " · ${l.aArtistBoosted}"
                                : rule == -1
                                ? " · ${l.aArtistBlocked}"
                                : ""}',
                            style: t.textTheme.bodySmall?.copyWith(
                              color: t.colorScheme.onSurfaceVariant,
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
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 6),
              child: Row(
                children: [
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: songs.isEmpty
                          ? null
                          : () => ref
                                .read(musicProvider)
                                .playAll(songs, origin: 'artist'),
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: Text(l.actionPlay),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: songs.isEmpty
                          ? null
                          : () => startRadio(ref, songs.first),
                      icon: const Icon(Icons.radio_rounded),
                      label: Text(l.aArtistRadio),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (songsAsync.isLoading)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          SliverToBoxAdapter(child: SectionHeader(title: l.libSongs)),
          SliverList.builder(
            itemCount: songs.length,
            itemBuilder: (_, i) => SongTile(
              song: songs[i],
              queue: songs,
              origin: 'artist',
              leadingIndex: i + 1,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 28)),
        ],
      ),
    );
  }
}
