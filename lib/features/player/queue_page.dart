import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state/providers.dart';
import '../../ui/common.dart';

class QueuePage extends ConsumerWidget {
  const QueuePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final handler = ref.watch(audioHandlerProvider);
    final songs = ref.watch(queueProvider).value ?? handler.queueSongs;
    final current = ref.watch(currentSongProvider).value;
    final music = ref.read(musicProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Queue'),
        actions: [
          IconButton(
            onPressed: music.toggleShuffle,
            icon: const Icon(Icons.shuffle_rounded),
          ),
          IconButton(
            tooltip: 'Save as playlist',
            onPressed: songs.isEmpty
                ? null
                : () async {
                    final name = await promptForName(context, 'Save queue as');
                    if (name == null) return;
                    final db = ref.read(dbProvider);
                    final id = 'pl${DateTime.now().millisecondsSinceEpoch}';
                    await db.createPlaylist(id, name);
                    for (final s in songs) {
                      await db.addToPlaylist(id, s.id);
                    }
                  },
            icon: const Icon(Icons.save_outlined),
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: songs.isEmpty
          ? const EmptyState(
              icon: Icons.queue_music_rounded,
              title: 'The queue is empty',
              body: 'Play something and it fills up here.',
            )
          : ReorderableListView.builder(
              padding: const EdgeInsets.only(bottom: 24),
              itemCount: songs.length,
              onReorderItem: music.reorderQueue,
              itemBuilder: (_, i) => Dismissible(
                key: ValueKey('${songs[i].id}-$i'),
                direction: songs[i].id == current?.id
                    ? DismissDirection.none
                    : DismissDirection.endToStart,
                onDismissed: (_) => music.removeFromQueue(i),
                background: ColoredBox(
                  color: t.colorScheme.errorContainer,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.delete_outline_rounded,
                        color: t.colorScheme.onErrorContainer,
                      ),
                    ),
                  ),
                ),
                child: ColoredBox(
                  color: songs[i].id == current?.id
                      ? t.colorScheme.primary.withValues(alpha: 0.10)
                      : t.colorScheme.surface,
                  child: SongTile(
                    song: songs[i],
                    dense: true,
                    onTap: () => music.jumpTo(i),
                    trailing: ReorderableDragStartListener(
                      index: i,
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8, left: 8),
                        child: Icon(Icons.drag_handle_rounded, size: 22),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
