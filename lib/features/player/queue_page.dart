import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../l10n/app_localizations.dart';
import '../../ui/common.dart';

class QueuePage extends ConsumerStatefulWidget {
  const QueuePage({super.key});

  @override
  ConsumerState<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends ConsumerState<QueuePage> {
  final _scroll = ScrollController();
  var _scrolledToCurrent = false;

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  /// Opens with the playing song in view rather than at the top of a long list.
  void _showCurrent(int index) {
    if (_scrolledToCurrent || index <= 3) return;
    _scrolledToCurrent = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scroll.hasClients) return;
      // rows are ~64dp tall; leave a couple above for context
      final target = ((index - 2) * 64.0).clamp(
        0.0,
        _scroll.position.maxScrollExtent,
      );
      _scroll.jumpTo(target);
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final handler = ref.watch(audioHandlerProvider);
    final songs = ref.watch(queueProvider).value ?? handler.queueSongs;
    final current = ref.watch(currentSongProvider).value;
    final music = ref.read(musicProvider);
    final currentIndex = songs.indexWhere((s) => s.id == current?.id);
    _showCurrent(currentIndex);

    // Same song twice in a queue must still get distinct, stable keys.
    final seen = <String, int>{};
    final keys = [
      for (final s in songs) '${s.id}#${seen.update(s.id, (n) => n + 1, ifAbsent: () => 0)}',
    ];

    void remove(int i) {
      final song = songs[i];
      music.removeFromQueue(i);
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
              onPressed: () => music.insertIntoQueue(i, song),
            ),
          ),
        );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(L.of(context).qTitle(songs.length)),
        actions: [
          IconButton(
            tooltip: L.of(context).actionShuffle,
            onPressed: music.toggleShuffle,
            icon: const Icon(Icons.shuffle_rounded),
          ),
          PopupMenuButton<String>(
            tooltip: 'More',
            onSelected: (v) async {
              final messenger = ScaffoldMessenger.of(context);
              final l = L.of(context);
              if (v == 'clear') {
                final before = music.clearQueue();
                messenger
                  ..hideCurrentSnackBar()
                  ..showTimed(
                    SnackBar(
                      duration: const Duration(seconds: 6),
                      content: Text(l.qCleared),
                      action: SnackBarAction(
                        label: l.qUndo,
                        onPressed: () => music.restoreQueue(before),
                      ),
                    ),
                  );
              } else if (v == 'save') {
                final name = await promptForName(context, 'Save queue as');
                if (name == null || !context.mounted) return;
                final db = ref.read(dbProvider);
                final id = 'pl${DateTime.now().millisecondsSinceEpoch}';
                await db.createPlaylist(id, name);
                await db.addAllToPlaylist(id, [for (final s in songs) s.id]);
                messenger.showTimed(
                  SnackBar(
                    content: Text(
                      l.qSaved(l.libSongCount(songs.length), name),
                    ),
                  ),
                );
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                value: 'save',
                enabled: songs.isNotEmpty,
                child: ListTile(
                  leading: const Icon(Icons.playlist_add_rounded),
                  title: Text(L.of(context).qSavePlaylist),
                ),
              ),
              PopupMenuItem(
                value: 'clear',
                enabled: songs.length > 1,
                child: ListTile(
                  leading: const Icon(Icons.clear_all_rounded),
                  title: Text(L.of(context).qClear),
                  subtitle: Text(L.of(context).qClearSub),
                ),
              ),
            ],
          ),
        ],
      ),
      body: songs.isEmpty
          ? EmptyState(
              icon: Icons.queue_music_rounded,
              title: L.of(context).qEmptyTitle,
              body: L.of(context).qEmptyBody,
            )
          : ReorderableListView.builder(
              scrollController: _scroll,
              buildDefaultDragHandles: false,
              padding: const EdgeInsets.only(bottom: 24),
              itemCount: songs.length,
              onReorderStart: (_) => music.haptic(),
              onReorderItem: (a, b) {
                music.haptic();
                music.reorderQueue(a, b);
              },
              itemBuilder: (_, i) => _QueueRow(
                key: ValueKey(keys[i]),
                song: songs[i],
                index: i,
                isCurrent: songs[i].id == current?.id,
                onRemove: () => remove(i),
                onTap: () => music.jumpTo(i),
                color: t.colorScheme,
              ),
            ),
    );
  }
}

class _QueueRow extends StatelessWidget {
  const _QueueRow({
    super.key,
    required this.song,
    required this.index,
    required this.isCurrent,
    required this.onRemove,
    required this.onTap,
    required this.color,
  });

  final Song song;
  final int index;
  final bool isCurrent;
  final VoidCallback onRemove;
  final VoidCallback onTap;
  final ColorScheme color;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey('dismiss-${key.toString()}'),
      direction:
          isCurrent ? DismissDirection.none : DismissDirection.endToStart,
      onDismissed: (_) => onRemove(),
      background: ColoredBox(
        color: color.errorContainer,
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.delete_outline_rounded,
              color: color.onErrorContainer,
            ),
          ),
        ),
      ),
      child: ColoredBox(
        color: isCurrent
            ? color.primary.withValues(alpha: 0.10)
            : color.surface,
        child: SongTile(
          song: song,
          dense: true,
          onTap: onTap,
          trailing: ReorderableDragStartListener(
            index: index,
            child: Tooltip(
              message: L.of(context).qDrag,
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Icon(Icons.drag_handle_rounded, size: 22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
