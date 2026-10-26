import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/theme.dart';
import '../../data/services/update_service.dart';
import '../../state/owner.dart';
import '../../state/profiles.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/common.dart';

/// Tools for the person who built the app. Owner builds only; reached by
/// tapping the version in Settings seven times, so it is plain English.
class OwnerPage extends ConsumerWidget {
  const OwnerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final messenger = ScaffoldMessenger.of(context);
    void say(String m) => messenger.showTimed(SnackBar(content: Text(m)));

    Future<void> run(String what, Future<String> Function() body) async {
      try {
        say(await body());
      } catch (e) {
        logEvent('owner tool "$what" failed — $e');
        say('$what failed: $e');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Owner tools'),
        actions: [
          IconButton(
            tooltip: 'Copy diagnostics',
            icon: const Icon(Icons.copy_all_rounded),
            onPressed: () async {
              await Clipboard.setData(
                ClipboardData(text: _diagnostics(ref)),
              );
              say('Diagnostics copied');
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: SelectableText(
                  _diagnostics(ref),
                  style: t.textTheme.bodySmall?.copyWith(
                    fontFamily: 'monospace',
                  ),
                ),
              ),
            ),
          ),
          const SectionHeader(
            title: 'Actions',
            padding: EdgeInsets.fromLTRB(16, 8, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.download_for_offline_outlined),
            title: const Text('Sync downloads now'),
            subtitle: const Text('Download liked songs that are still missing'),
            onTap: () => run('Sync', () async {
              final n = await ref.read(musicProvider).syncDownloads();
              return n == 0 ? 'Nothing was missing' : 'Queued $n song(s)';
            }),
          ),
          ListTile(
            leading: const Icon(Icons.block_flipped),
            title: const Text('Clear the download skip list'),
            subtitle: const Text(
              'Songs YouTube refused for good get another try',
            ),
            onTap: () => run('Clear skip list', () async {
              final prefs = ref.read(prefsProvider);
              final n = prefs.getStringList(profileKey('dlSkip'))?.length ?? 0;
              await prefs.remove(profileKey('dlSkip'));
              return 'Cleared $n song(s)';
            }),
          ),
          ListTile(
            leading: const Icon(Icons.image_not_supported_outlined),
            title: const Text('Clear the image cache'),
            onTap: () => run('Clear images', () async {
              final cache = PaintingBinding.instance.imageCache;
              final n = cache.currentSize;
              cache.clear();
              cache.clearLiveImages();
              return 'Dropped $n image(s)';
            }),
          ),
          ListTile(
            leading: const Icon(Icons.system_update_alt_rounded),
            title: const Text('Check for an update'),
            subtitle: const Text('Looks only, does not download'),
            onTap: () => run('Update check', () async {
              final Update? found = await ref
                  .read(updateServiceProvider)
                  .checkAndFetch(mayDownload: false);
              return found == null
                  ? 'Up to date ($kAppVersion)'
                  : 'Version ${found.version} is available';
            }),
          ),
          ListTile(
            leading: const Icon(Icons.psychology_alt_outlined),
            title: const Text('Copy the taste data as JSON'),
            subtitle: const Text('Everything the AI has learned on this profile'),
            onTap: () => run('Taste dump', () async {
              final bytes = await ref.read(backupServiceProvider).exportBytes();
              await Clipboard.setData(ClipboardData(text: utf8.decode(bytes)));
              return 'Copied ${bytes.length} bytes';
            }),
          ),
          const Divider(height: 28),
          ValueListenableBuilder<int>(
            valueListenable: OwnerLog.changes,
            builder: (context, _, _) {
              final lines = OwnerLog.lines;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionHeader(
                    title: 'Log (${lines.length})',
                    padding: const EdgeInsets.fromLTRB(16, 0, 8, 6),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: lines.isEmpty
                              ? null
                              : () async {
                                  await Clipboard.setData(
                                    ClipboardData(text: lines.join('\n')),
                                  );
                                  say('Log copied');
                                },
                          child: const Text('Copy'),
                        ),
                        TextButton(
                          onPressed: lines.isEmpty ? null : OwnerLog.clear,
                          child: const Text('Clear'),
                        ),
                      ],
                    ),
                  ),
                  if (lines.isEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Nothing has gone wrong since the app started.',
                        style: t.textTheme.bodyMedium?.copyWith(
                          color: t.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SelectableText(
                        lines.reversed.join('\n'),
                        style: t.textTheme.bodySmall?.copyWith(
                          fontFamily: 'monospace',
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  static String _diagnostics(WidgetRef ref) {
    final profiles = ref.read(profilesProvider);
    final prefs = ref.read(prefsProvider);
    final songs = ref.read(libraryProvider).value?.length;
    final bytes = ref.read(downloadedBytesProvider).value;
    final skipped = prefs.getStringList(profileKey('dlSkip'))?.length ?? 0;
    final cache = PaintingBinding.instance.imageCache;
    return [
      'TuneBox $kAppVersion',
      '${Platform.operatingSystem} ${Platform.operatingSystemVersion}',
      'Profile: ${profiles.active.name} (${profiles.active.id}), '
          '${profiles.profiles.length} on this device',
      'Library: ${songs ?? '?'} songs',
      'Downloads: ${bytes == null ? '?' : '${(bytes / 1048576).toStringAsFixed(1)} MB'}'
          ', $skipped skipped',
      'Image cache: ${cache.currentSize} images, '
          '${(cache.currentSizeBytes / 1048576).toStringAsFixed(1)} MB',
    ].join('\n');
  }
}
