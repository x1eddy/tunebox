import 'package:flutter/material.dart';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/router.dart';
import '../../app/theme.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/common.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final s = ref.watch(settingsProvider);
    final set = ref.read(settingsProvider.notifier);
    final bytes = ref.watch(downloadedBytesProvider).value ?? 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          // ------------------------------------------------------ colour
          const SectionHeader(
            title: 'Colour',
            subtitle: 'The whole app follows this',
            padding: EdgeInsets.fromLTRB(16, 10, 8, 6),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SegmentedButton<AccentMode>(
              showSelectedIcon: false,
              segments: const [
                ButtonSegment(
                  value: AccentMode.artwork,
                  icon: Icon(Icons.image_outlined, size: 18),
                  label: Text('Cover art'),
                ),
                ButtonSegment(
                  value: AccentMode.fixed,
                  icon: Icon(Icons.palette_outlined, size: 18),
                  label: Text('My colour'),
                ),
              ],
              selected: {s.accentMode},
              onSelectionChanged: (v) =>
                  set.update((x) => x.copyWith(accentMode: v.first)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 4),
            child: Text(
              s.accentMode == AccentMode.artwork
                  ? 'Every song retints the app from its cover.'
                  : 'One colour, everywhere, all the time.',
              style: t.textTheme.bodySmall?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          _SwatchGrid(
            selected: s.accentColor,
            enabled: s.accentMode == AccentMode.fixed,
            onPick: (c) => set.update(
              (x) => x.copyWith(accentColor: c, accentMode: AccentMode.fixed),
            ),
            onCustom: () async {
              var picked = s.accentColor;
              final ok = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Pick any colour'),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: s.accentColor,
                      enableAlpha: false,
                      labelTypes: const [ColorLabelType.hex],
                      onColorChanged: (c) => picked = c,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text('Use it'),
                    ),
                  ],
                ),
              );
              if (ok ?? false) {
                set.update(
                  (x) => x.copyWith(
                    accentColor: picked,
                    accentMode: AccentMode.fixed,
                  ),
                );
              }
            },
          ),

          const Divider(height: 28),
          const SectionHeader(
            title: 'Appearance',
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.brightness_6_outlined),
            title: const Text('Theme'),
            subtitle: Text(switch (s.themeMode) {
              ThemeMode.dark => 'Dark',
              ThemeMode.light => 'Light',
              ThemeMode.system => 'Follow system',
            }),
            trailing: SegmentedButton<ThemeMode>(
              showSelectedIcon: false,
              style: const ButtonStyle(visualDensity: VisualDensity.compact),
              segments: const [
                ButtonSegment(
                  value: ThemeMode.light,
                  icon: Icon(Icons.light_mode_rounded, size: 18),
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  icon: Icon(Icons.dark_mode_rounded, size: 18),
                ),
                ButtonSegment(
                  value: ThemeMode.system,
                  icon: Icon(Icons.phone_android_rounded, size: 18),
                ),
              ],
              selected: {s.themeMode},
              onSelectionChanged: (v) =>
                  set.update((x) => x.copyWith(themeMode: v.first)),
            ),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.contrast_rounded),
            value: s.pureBlack,
            onChanged: (v) => set.update((x) => x.copyWith(pureBlack: v)),
            title: const Text('Pure black dark mode'),
            subtitle: const Text('Saves battery on OLED phones'),
          ),

          const Divider(height: 28),
          const SectionHeader(
            title: 'Audio & downloads',
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.high_quality_outlined),
            title: const Text('Download quality'),
            subtitle: Text(s.qualityLabel),
            onTap: () => showModalBottomSheet<void>(
              context: context,
              builder: (sheet) => SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final q in [0, 192, 128, 64])
                      ListTile(
                        leading: Icon(
                          s.audioQualityKbps == q
                              ? Icons.radio_button_checked_rounded
                              : Icons.radio_button_unchecked_rounded,
                        ),
                        title: Text(
                          s.copyWith(audioQualityKbps: q).qualityLabel,
                        ),
                        onTap: () {
                          set.update((x) => x.copyWith(audioQualityKbps: q));
                          Navigator.pop(sheet);
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.wifi_rounded),
            value: s.wifiOnlyDownloads,
            onChanged: (v) =>
                set.update((x) => x.copyWith(wifiOnlyDownloads: v)),
            title: const Text('Download on Wi-Fi only'),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.favorite_rounded),
            value: s.downloadLikes,
            onChanged: (v) => set.update((x) => x.copyWith(downloadLikes: v)),
            title: const Text('Download everything I like'),
            subtitle: const Text('The heart button also saves the file'),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.auto_awesome_rounded),
            value: s.aiAutoDownload,
            onChanged: (v) => set.update((x) => x.copyWith(aiAutoDownload: v)),
            title: const Text('Let the AI install music it picks'),
            subtitle: Text(
              'Up to ${s.aiDailyDownloads}/day · '
              '${s.aiStorageBudgetMb ~/ 1024} GB budget · tune it in Your taste',
            ),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.fast_forward_rounded),
            value: s.skipSilence,
            onChanged: (v) => set.update((x) => x.copyWith(skipSilence: v)),
            title: const Text('Skip silence'),
            subtitle: const Text('Android only'),
          ),
          ListTile(
            leading: const Icon(Icons.sd_storage_outlined),
            title: const Text('Storage used by downloads'),
            subtitle: Text(prettyBytes(bytes)),
          ),

          const Divider(height: 28),
          const SectionHeader(
            title: 'Library',
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.library_add_outlined),
            title: const Text('Add music from this device'),
            subtitle: Text('${s.watchedFolders.length} folders watched'),
            onTap: () => pushDetail(context, 'import'),
          ),
          ListTile(
            leading: const Icon(Icons.sync_alt_rounded),
            title: const Text('Send my taste to another device'),
            subtitle: const Text(
              'Writes a transfer file: likes, plays and everything the AI '
              'learned',
            ),
            onTap: () => _exportTaste(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.download_for_offline_outlined),
            title: const Text('Load taste from another device'),
            subtitle: const Text('Merges it with what this device knows'),
            onTap: () => _importTaste(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.cleaning_services_outlined),
            title: const Text('Clean up missing files'),
            subtitle: const Text('Drop songs whose file is gone'),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              final n = await ref.read(importServiceProvider).pruneMissing();
              messenger.showSnackBar(
                SnackBar(content: Text('Removed $n missing files.')),
              );
            },
          ),

          const Divider(height: 28),
          const SectionHeader(
            title: 'About',
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text('TuneBox $kAppVersion'),
            subtitle: Text(
              'Music from YouTube and your own files. The AI runs entirely on '
              'this device — nothing leaves the phone.',
              style: t.textTheme.bodySmall?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _exportTaste(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  try {
    final file = await ref.read(backupServiceProvider).export();
    final size = (file.lengthSync() / 1024).toStringAsFixed(0);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('Saved ${size}KB to ${file.path}'),
          duration: const Duration(seconds: 8),
        ),
      );
  } catch (e) {
    messenger.showSnackBar(SnackBar(content: Text('Export failed: $e')));
  }
}

Future<void> _importTaste(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  final backup = ref.read(backupServiceProvider);
  try {
    // Prefer the file sitting in this device's transfer folder; only ask the
    // user to hunt for one if it is not there.
    var file = await backup.transferFile();
    if (!file.existsSync()) {
      final picked = await FilePicker.pickFiles(type: FileType.any);
      final path = picked.firstOrNull?.path;
      if (path == null) return;
      file = File(path);
    }
    messenger.showSnackBar(
      const SnackBar(content: Text('Merging taste…')),
    );
    final summary = await backup.importFromFile(file);
    ref.read(musicProvider).refreshHome();
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('Imported: $summary'),
          duration: const Duration(seconds: 8),
        ),
      );
  } catch (e) {
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('Import failed: $e')));
  }
}

class _SwatchGrid extends StatelessWidget {
  const _SwatchGrid({
    required this.selected,
    required this.enabled,
    required this.onPick,
    required this.onCustom,
  });

  final Color selected;
  final bool enabled;
  final ValueChanged<Color> onPick;
  final VoidCallback onCustom;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 10),
      child: Opacity(
        opacity: enabled ? 1 : 0.55,
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for (final entry in kAccentPresets.entries)
              _Swatch(
                color: entry.value,
                label: entry.key,
                selected: enabled && entry.value.toARGB32() == selected.toARGB32(),
                onTap: () => onPick(entry.value),
              ),
            InkWell(
              borderRadius: R.pill,
              onTap: onCustom,
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: t.colorScheme.outline),
                ),
                child: Icon(
                  Icons.colorize_rounded,
                  size: 20,
                  color: t.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch({
    required this.color,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final Color color;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Tooltip(
      message: label,
      child: InkWell(
        borderRadius: R.pill,
        onTap: onTap,
        child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: selected
                ? Border.all(color: t.colorScheme.onSurface, width: 3)
                : null,
          ),
          child: selected
              ? const Icon(Icons.check_rounded, color: Colors.white, size: 20)
              : null,
        ),
      ),
    );
  }
}
