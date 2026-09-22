import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../data/services/import_service.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/common.dart';

/// "Install" your own music: pick folders or files, read their tags, keep them
/// watched so new files show up on their own.
class ImportPage extends ConsumerStatefulWidget {
  const ImportPage({super.key});

  @override
  ConsumerState<ImportPage> createState() => _ImportPageState();
}

class _ImportPageState extends ConsumerState<ImportPage> {
  ScanProgress? _progress;
  StreamSubscription<ScanProgress>? _sub;
  List<String> _suggested = const [];
  String? _message;

  @override
  void initState() {
    super.initState();
    ref
        .read(importServiceProvider)
        .suggestedFolders()
        .then((f) => mounted ? setState(() => _suggested = f) : null);
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  void _run(Stream<ScanProgress> stream) {
    _sub?.cancel();
    setState(() => _message = null);
    _sub = stream.listen(
      (p) {
        setState(() => _progress = p);
        // New music means the AI has something else to work with.
        if (p.done && p.added > 0) ref.read(musicProvider).refreshHome();
      },
      onError: (Object e) => setState(() => _message = '$e'),
      onDone: () => setState(() {}),
    );
  }

  Future<void> _pickFolder() async {
    final importer = ref.read(importServiceProvider);
    final granted = await importer.ensurePermission();
    if (!mounted) return;
    if (!granted) {
      setState(() => _message = 'Permission denied — cannot read your music.');
      return;
    }
    final dir = await FilePicker.getDirectoryPath();
    if (dir == null || !mounted) return;
    ref.read(settingsProvider.notifier).addWatchedFolder(dir);
    _run(importer.scanFolders([dir]));
  }

  Future<void> _pickFiles() async {
    final importer = ref.read(importServiceProvider);
    final granted = await importer.ensurePermission();
    if (!mounted) return;
    if (!granted) {
      setState(() => _message = 'Permission denied — cannot read your music.');
      return;
    }
    final files = await FilePicker.pickFiles(type: FileType.audio);
    if (!mounted) return;
    final paths = [
      for (final f in files)
        if (f.path != null) f.path!,
    ];
    if (paths.isEmpty) return;
    _run(importer.importPaths(paths));
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final settings = ref.watch(settingsProvider);
    final imported = ref.watch(importedProvider).value ?? const <Song>[];
    final progress = _progress;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add music'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Done'),
          ),
          const SizedBox(width: 6),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 90),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: _pickFolder,
                    icon: const Icon(Icons.create_new_folder_outlined),
                    label: const Text('Pick a folder'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: FilledButton.tonalIcon(
                    onPressed: _pickFiles,
                    icon: const Icon(Icons.audio_file_outlined),
                    label: const Text('Pick files'),
                  ),
                ),
              ],
            ),
          ),
          if (_message != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Text(
                _message!,
                style: t.textTheme.bodySmall?.copyWith(
                  color: t.colorScheme.error,
                ),
              ),
            ),

          if (progress != null)
            Container(
              margin: const EdgeInsets.fromLTRB(16, 14, 16, 4),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: R.card,
                color: t.colorScheme.surfaceContainerHigh,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (!progress.done)
                        const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      else
                        Icon(
                          Icons.check_circle_rounded,
                          size: 18,
                          color: t.colorScheme.primary,
                        ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          progress.done
                              ? 'Done · ${progress.added} new songs added'
                              : 'Scanning · ${progress.scanned} of '
                                    '${progress.total} files',
                          style: t.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: R.pill,
                    child: LinearProgressIndicator(
                      value: progress.fraction,
                      minHeight: 6,
                    ),
                  ),
                  if (progress.file.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Text(
                      progress.file,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: t.textTheme.bodySmall?.copyWith(
                        color: t.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),

          const SectionHeader(
            title: 'Watched folders',
            subtitle: 'Rescanned when the app starts',
          ),
          if (settings.watchedFolders.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'None yet. Pick a folder and it gets watched automatically.',
                style: t.textTheme.bodySmall?.copyWith(
                  color: t.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          for (final folder in settings.watchedFolders)
            ListTile(
              leading: const Icon(Icons.folder_outlined),
              title: Text(
                folder,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: t.textTheme.bodyMedium,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () => ref
                    .read(settingsProvider.notifier)
                    .removeWatchedFolder(folder),
              ),
              onTap: () =>
                  _run(ref.read(importServiceProvider).scanFolders([folder])),
            ),

          if (_suggested.isNotEmpty) ...[
            const SectionHeader(
              title: 'Found on this device',
              subtitle: 'Tap to scan and keep watching',
              padding: EdgeInsets.fromLTRB(16, 18, 8, 8),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final folder in _suggested)
                    ActionChip(
                      avatar: const Icon(Icons.folder_open_rounded, size: 16),
                      label: Text(folder.split('/').last),
                      onPressed: () {
                        ref
                            .read(settingsProvider.notifier)
                            .addWatchedFolder(folder);
                        _run(
                          ref
                              .read(importServiceProvider)
                              .scanFolders([folder]),
                        );
                      },
                    ),
                ],
              ),
            ),
          ],

          SectionHeader(
            title: 'Your files',
            subtitle: '${imported.length} imported so far',
          ),
          for (final s in imported.take(40))
            SongTile(song: s, showAlbum: true, queue: imported, origin: 'imported'),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Files stay where they are — TuneBox only indexes them. Delete a '
              'file and it quietly leaves your library on the next scan.',
              style: t.textTheme.bodySmall?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: settings.watchedFolders.isEmpty
            ? null
            : () => _run(
                ref
                    .read(importServiceProvider)
                    .scanFolders(settings.watchedFolders),
              ),
        icon: const Icon(Icons.sync_rounded),
        label: const Text('Rescan'),
      ),
    );
  }
}
