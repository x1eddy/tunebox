import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ai/ai_engine.dart';
import '../app/theme.dart';
import '../data/db/database.dart';
import '../data/services/download_service.dart';
import '../state/providers.dart';
import '../state/settings.dart';
import 'artwork.dart';
import 'equalizer.dart';
import 'motion.dart';

String formatDuration(Duration d) {
  final m = d.inMinutes.remainder(60).toString();
  final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
  if (d.inHours > 0) return '${d.inHours}:${m.padLeft(2, '0')}:$s';
  return '$m:$s';
}

String songDuration(Song song) =>
    song.durationMs == 0 ? '--:--' : formatDuration(Duration(milliseconds: song.durationMs));

/// "Daft Punk · 2001" — the year is left off when we don't know it yet.
String songByline(Song song) => [
  if (song.artist.isNotEmpty) song.artist,
  if (song.year != null) '${song.year}',
].join(' · ');

IconData sourceIcon(SongSource s) => switch (s) {
  SongSource.youtube => Icons.cloud_outlined,
  SongSource.downloaded => Icons.download_done_rounded,
  SongSource.imported => Icons.sd_storage_outlined,
};

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.emoji,
    this.trailing,
    this.padding = const EdgeInsets.fromLTRB(16, 22, 8, 10),
  });

  final String title;
  final String? subtitle;
  final String? emoji;
  final Widget? trailing;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  emoji == null ? title : '$title $emoji',
                  style: t.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                ),
                if (subtitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      subtitle!,
                      style: t.textTheme.bodySmall?.copyWith(
                        color: t.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          ?trailing,
        ],
      ),
    );
  }
}

class HorizontalStrip extends StatelessWidget {
  const HorizontalStrip({
    super.key,
    required this.height,
    required this.children,
  });

  final double height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: height,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: children.length,
      clipBehavior: Clip.none,
      separatorBuilder: (_, _) => const SizedBox(width: 12),
      itemBuilder: (_, i) => children[i],
    ),
  );
}

/// One row for a song. Used by search, library, playlists and the queue.
class SongTile extends ConsumerWidget {
  const SongTile({
    super.key,
    required this.song,
    this.queue,
    this.origin = 'library',
    this.trailing,
    this.showAlbum = false,
    this.dense = false,
    this.leadingIndex,
    this.onTap,
  });

  final Song song;
  final List<Song>? queue;
  final String origin;
  final Widget? trailing;
  final bool showAlbum;
  final bool dense;
  final int? leadingIndex;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final playing = ref.watch(currentSongProvider).value?.id == song.id;
    final isPlaying =
        playing && (ref.watch(playbackStateProvider).value?.playing ?? false);
    final task = ref.watch(downloadTasksProvider).value?.firstWhere(
      (d) => d.songId == song.id,
      orElse: () => const DownloadTask(songId: '', title: ''),
    );
    final downloading = task != null && task.songId == song.id;

    final sub = [
      if (song.artist.isNotEmpty) song.artist,
      if (showAlbum && song.album.isNotEmpty) song.album,
      songDuration(song),
      if (song.year != null) '${song.year}',
    ].join(' · ');

    return InkWell(
      onTap: onTap ??
          () => ref
              .read(musicProvider)
              .playSong(song, queue: queue, origin: origin),
      onLongPress: () => showSongSheet(context, song),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: dense ? 5 : 7),
        child: Row(
          children: [
            if (leadingIndex != null)
              SizedBox(
                width: 26,
                child: Text(
                  '$leadingIndex',
                  textAlign: TextAlign.center,
                  style: t.textTheme.bodyMedium?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            CoverArt(song: song, size: dense ? 44 : 52, radius: R.tile),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      if (playing)
                        Padding(
                          padding: const EdgeInsets.only(right: 7, top: 2),
                          child: PlayingBars(playing: isPlaying, size: 13),
                        ),
                      Flexible(
                        child: Text(
                          song.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: t.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: playing ? t.colorScheme.primary : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(
                        sourceIcon(song.source),
                        size: 12,
                        color: t.colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          sub,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: t.textTheme.bodySmall?.copyWith(
                            color: t.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (downloading)
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    value: task.stage == DownloadStage.running
                        ? (task.progress == 0 ? null : task.progress)
                        : null,
                  ),
                ),
              ),
            if (song.liked)
              Icon(
                Icons.favorite_rounded,
                size: 16,
                color: t.colorScheme.primary,
              ),
            trailing ??
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () => showSongSheet(context, song),
                  icon: const Icon(Icons.more_vert_rounded, size: 20),
                ),
          ],
        ),
      ),
    );
  }
}

/// Big artwork card used in the Home shelves.
class CoverCard extends ConsumerWidget {
  const CoverCard({
    super.key,
    required this.pick,
    this.queue,
    this.origin = 'home_shelf',
    this.width = 152,
    this.showReason = false,
  });

  final Pick pick;
  final List<Song>? queue;
  final String origin;
  final double width;
  final bool showReason;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final song = pick.song;
    return SizedBox(
      width: width,
      child: Pressable(
        onTap: () => ref
            .read(musicProvider)
            .playSong(song, queue: queue, origin: origin),
        onLongPress: () => showSongSheet(context, song),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(aspectRatio: 1, child: CoverArt(song: song)),
                Positioned(
                  right: 6,
                  bottom: 6,
                  child: _PlayBubble(
                    onTap: () => ref
                        .read(musicProvider)
                        .playSong(song, queue: queue, origin: origin),
                  ),
                ),
                if (song.source != SongSource.youtube)
                  Positioned(
                    left: 8,
                    top: 8,
                    child: _Badge(icon: sourceIcon(song.source)),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              song.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: t.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              songByline(song),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: t.textTheme.bodySmall?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
            if (showReason && pick.reason != null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  pick.reason!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: t.textTheme.labelSmall?.copyWith(
                    color: t.colorScheme.primary,
                    height: 1.25,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _PlayBubble extends StatelessWidget {
  const _PlayBubble({required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Material(
      color: t.colorScheme.surface.withValues(alpha: 0.88),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Icon(
            Icons.play_arrow_rounded,
            size: 20,
            color: t.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: t.colorScheme.surface.withValues(alpha: 0.82),
        borderRadius: R.pill,
      ),
      child: Icon(icon, size: 13, color: t.colorScheme.primary),
    );
  }
}

/// Wide card — artwork left, title and the AI's reason right.
class WideCard extends ConsumerWidget {
  const WideCard({
    super.key,
    required this.pick,
    this.queue,
    this.origin = 'home_shelf',
  });

  final Pick pick;
  final List<Song>? queue;
  final String origin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final song = pick.song;
    return SizedBox(
      width: 268,
      child: Material(
        color: t.colorScheme.surfaceContainerHigh,
        borderRadius: R.card,
        clipBehavior: Clip.antiAlias,
        child: Pressable(
          scale: 0.975,
          onTap: () => ref
              .read(musicProvider)
              .playSong(song, queue: queue, origin: origin),
          onLongPress: () => showSongSheet(context, song),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                CoverArt(song: song, size: 72, radius: R.tile),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        song.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: t.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        song.artist,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: t.textTheme.bodySmall?.copyWith(
                          color: t.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(
                            Icons.auto_awesome_rounded,
                            size: 12,
                            color: t.colorScheme.primary,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              pick.reason ?? 'Back in rotation',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: t.textTheme.labelSmall?.copyWith(
                                color: t.colorScheme.primary,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Blocks a song and says so, with a way back.
void dislikeWithUndo(BuildContext context, WidgetRef ref, Song song) {
  final music = ref.read(musicProvider);
  final messenger = ScaffoldMessenger.of(context);
  music.dislike(song);
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          'Blocked "${song.title}" — the AI will avoid it',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () => music.unblock(song),
        ),
      ),
    );
}

/// Long-press / overflow menu for a song.
void showSongSheet(BuildContext context, Song song) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (sheetContext) => Consumer(
      builder: (context, ref, _) {
        final t = Theme.of(context);
        final music = ref.read(musicProvider);
        final live = ref.watch(libraryProvider).value?.firstWhere(
          (s) => s.id == song.id,
          orElse: () => song,
        );
        final current = live ?? song;

        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: CoverArt(song: current, size: 52, radius: R.tile),
                  title: Text(current.title),
                  subtitle: Text(
                    [
                      current.artist,
                      if (current.album.isNotEmpty) current.album,
                    ].join(' · '),
                  ),
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Icon(
                    current.liked
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    color: current.liked ? t.colorScheme.primary : null,
                  ),
                  title: Text(current.liked ? 'Remove from liked' : 'Like'),
                  subtitle: const Text('Teaches the AI straight away'),
                  onTap: () {
                    music.like(current);
                    Navigator.pop(sheetContext);
                  },
                ),
                ListTile(
                  leading: Icon(
                    current.blocked
                        ? Icons.thumb_down_rounded
                        : Icons.thumb_down_off_alt_rounded,
                    color: current.blocked ? t.colorScheme.error : null,
                  ),
                  title: Text(
                    current.blocked ? 'Blocked — tap to allow again' : 'Not for me',
                  ),
                  subtitle: Text(
                    current.blocked
                        ? 'It can show up in recommendations again'
                        : 'Never recommend this again',
                  ),
                  onTap: () {
                    Navigator.pop(sheetContext);
                    if (current.blocked) {
                      music.unblock(current);
                    } else {
                      dislikeWithUndo(context, ref, current);
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.queue_music_rounded),
                  title: const Text('Play next'),
                  onTap: () {
                    ref.read(audioHandlerProvider).addToQueue(current, next: true);
                    Navigator.pop(sheetContext);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.playlist_add_rounded),
                  title: const Text('Add to playlist'),
                  onTap: () {
                    Navigator.pop(sheetContext);
                    showAddToPlaylist(context, current);
                  },
                ),
                if (current.source == SongSource.downloaded)
                  ListTile(
                    leading: Icon(
                      Icons.download_done_rounded,
                      color: t.colorScheme.primary,
                    ),
                    title: const Text('Downloaded'),
                    subtitle: const Text('Tap to remove the file'),
                    onTap: () {
                      music.removeDownload(current);
                      Navigator.pop(sheetContext);
                    },
                  )
                else if (current.source == SongSource.youtube)
                  ListTile(
                    leading: const Icon(Icons.download_rounded),
                    title: const Text('Download'),
                    subtitle: const Text('Keep it for offline'),
                    onTap: () {
                      music.download(current);
                      Navigator.pop(sheetContext);
                    },
                  ),
                ListTile(
                  leading: const Icon(Icons.radio_rounded),
                  title: const Text('Start radio'),
                  subtitle: const Text('A queue built around this song'),
                  onTap: () async {
                    Navigator.pop(sheetContext);
                    await startRadio(ref, current);
                  },
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Future<void> startRadio(WidgetRef ref, Song seed) async {
  final ai = ref.read(aiProvider);
  final db = ref.read(dbProvider);
  final yt = ref.read(ytProvider);
  final settings = ref.read(settingsProvider);
  final companions = seed.id.startsWith('local:')
      // YouTube Music answers a song query with songs; asking for "radio"
      // only drags in hour-long mixes.
      ? await yt.search('${seed.artist} ${seed.title}', max: 20)
      : await yt.related(seed.id, max: 20);
  for (final c in companions) {
    await db.cacheSong(c);
  }
  final songs = await db.songsByIds([
    for (final c in companions) c.id.value,
  ]);
  final w = await ai.weights();
  final rules = {
    for (final r in await db.artistRuleList()) r.artist.toLowerCase(): r.rule,
  };
  songs.sort(
    (a, b) => ai
        .scoreSong(b, w, settings, rules)
        .compareTo(ai.scoreSong(a, w, settings, rules)),
  );
  await ref.read(musicProvider).playAll([seed, ...songs], origin: 'radio');
}

void showAddToPlaylist(BuildContext context, Song song) {
  showModalBottomSheet<void>(
    context: context,
    builder: (sheetContext) => Consumer(
      builder: (context, ref, _) {
        final playlists = ref.watch(playlistsProvider).value ?? const [];
        final db = ref.read(dbProvider);
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
                child: SectionHeader(
                  title: 'Add to playlist',
                  padding: EdgeInsets.zero,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.add_rounded),
                title: const Text('New playlist'),
                onTap: () async {
                  Navigator.pop(sheetContext);
                  final name = await promptForName(context, 'New playlist');
                  if (name == null) return;
                  final id = 'pl${DateTime.now().millisecondsSinceEpoch}';
                  await db.createPlaylist(id, name);
                  await db.addToPlaylist(id, song.id);
                },
              ),
              for (final p in playlists)
                ListTile(
                  leading: const Icon(Icons.queue_music_rounded),
                  title: Text(p.name),
                  onTap: () {
                    db.addToPlaylist(p.id, song.id);
                    Navigator.pop(sheetContext);
                  },
                ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    ),
  );
}

Future<String?> promptForName(BuildContext context, String title) {
  final controller = TextEditingController();
  return _promptForName(context, title, controller)
      .whenComplete(controller.dispose);
}

Future<String?> _promptForName(
  BuildContext context,
  String title,
  TextEditingController controller,
) {
  return showDialog<String>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: const InputDecoration(hintText: 'Name'),
        onSubmitted: (v) => Navigator.pop(context, v.trim()),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, controller.text.trim()),
          child: const Text('Create'),
        ),
      ],
    ),
  ).then((value) => (value == null || value.isEmpty) ? null : value);
}

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.body,
    this.action,
  });

  final IconData icon;
  final String title;
  final String body;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 46, color: t.colorScheme.onSurfaceVariant),
            const SizedBox(height: 12),
            Text(title, style: t.textTheme.titleMedium),
            const SizedBox(height: 6),
            Text(
              body,
              textAlign: TextAlign.center,
              style: t.textTheme.bodySmall?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
            if (action != null) ...[const SizedBox(height: 18), action!],
          ],
        ),
      ),
    );
  }
}
