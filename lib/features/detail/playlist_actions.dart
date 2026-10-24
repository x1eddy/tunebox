import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import '../../state/providers.dart';
import '../../ui/common.dart';

/// Rename / delete for a user playlist. Deleting asks nothing, but it can be
/// undone for a while, which is gentler than a confirmation dialog.
Future<void> showPlaylistMenu(
  BuildContext context,
  WidgetRef ref, {
  required String id,
  required String name,
  VoidCallback? onDeleted,
}) async {
  final choice = await showModalBottomSheet<String>(
    context: context,
    useRootNavigator: true,
    showDragHandle: true,
    builder: (sheet) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(sheet).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.edit_outlined),
            title: Text(L.of(sheet).profRename),
            onTap: () => Navigator.pop(sheet, 'rename'),
          ),
          ListTile(
            leading: const Icon(Icons.delete_outline_rounded),
            title: Text(L.of(sheet).plDelete),
            subtitle: Text(L.of(sheet).plDeleteSub),
            onTap: () => Navigator.pop(sheet, 'delete'),
          ),
        ],
      ),
    ),
  );
  if (choice == null || !context.mounted) return;
  final db = ref.read(dbProvider);
  final messenger = ScaffoldMessenger.of(context);
  final l = L.of(context);

  if (choice == 'rename') {
    final next = await promptForName(context, l.profRename, initial: name);
    if (next != null && next != name) await db.renamePlaylist(id, next);
    return;
  }

  final ids = await db.playlistSongIds(id);
  await db.deletePlaylist(id);
  ref.read(musicProvider).haptic();
  onDeleted?.call();
  messenger
    ..hideCurrentSnackBar()
    ..showTimed(
      SnackBar(
        duration: const Duration(seconds: 7),
        content: Text(l.plDeleted(name), maxLines: 1),
        action: SnackBarAction(
          label: l.qUndo,
          onPressed: () async {
            await db.createPlaylist(id, name);
            await db.addAllToPlaylist(id, ids);
          },
        ),
      ),
    );
}
