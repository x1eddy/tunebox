import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../data/services/update_service.dart';
import '../../app/router.dart';
import '../../app/theme.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/common.dart';
import '../../l10n/app_localizations.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);
    final s = ref.watch(settingsProvider);
    final set = ref.read(settingsProvider.notifier);
    final bytes = ref.watch(downloadedBytesProvider).value ?? 0;
    final update = ref.watch(pendingUpdateProvider).value;

    return Scaffold(
      appBar: AppBar(title: Text(l.setTitle)),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          // ------------------------------------------------------ colour
          SectionHeader(
            title: l.setColour,
            subtitle: l.setColourSub,
            padding: EdgeInsets.fromLTRB(16, 10, 8, 6),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SegmentedButton<AccentMode>(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: AccentMode.artwork,
                  icon: const Icon(Icons.image_outlined, size: 18),
                  label: Text(l.setCoverArt),
                ),
                ButtonSegment(
                  value: AccentMode.fixed,
                  icon: const Icon(Icons.palette_outlined, size: 18),
                  label: Text(l.setMyColour),
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
                  ? l.setCoverArtSub
                  : l.setMyColourSub,
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
          SectionHeader(
            title: l.setAppearance,
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.brightness_6_outlined),
            title: Text(l.setTheme),
            subtitle: Text(switch (s.themeMode) {
              ThemeMode.dark => l.setThemeDark,
              ThemeMode.light => l.setThemeLight,
              ThemeMode.system => l.setThemeSystem,
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
            title: Text(l.setPureBlack),
            subtitle: Text(l.setPureBlackSub),
          ),

          // ------------------------------------------------- language
          const Divider(height: 28),
          SectionHeader(
            title: l.setLanguage,
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.translate_rounded),
            title: Text(l.setLanguage),
            subtitle: Text(languageName(s.localeCode)),
            onTap: () => showModalBottomSheet<void>(
              context: context,
              showDragHandle: true,
              builder: (sheet) => SafeArea(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (final code in kLanguages.keys)
                      ListTile(
                        leading: Icon(
                          s.localeCode == code
                              ? Icons.radio_button_checked_rounded
                              : Icons.radio_button_unchecked_rounded,
                        ),
                        title: Text(languageName(code)),
                        onTap: () {
                          set.update((v) => v.copyWith(localeCode: code));
                          Navigator.pop(sheet);
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),

          // -------------------------------------------- accessibility
          const Divider(height: 28),
          SectionHeader(
            title: l.setAccessibility,
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.format_size_rounded),
            title: Text(l.setTextSize),
            subtitle: Text(
              s.textScale == 1.0
                  ? l.setTextSizeSub
                  : '${(s.textScale * 100).round()}%',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Slider(
              value: s.textScale,
              min: 0.85,
              max: 1.6,
              divisions: 15,
              label: '${(s.textScale * 100).round()}%',
              onChanged: (v) => set.update((x) => x.copyWith(textScale: v)),
            ),
          ),
          SwitchListTile(
            value: s.reduceMotion,
            onChanged: (v) => set.update((x) => x.copyWith(reduceMotion: v)),
            secondary: const Icon(Icons.motion_photos_off_outlined),
            title: Text(l.setReduceMotion),
            subtitle: Text(l.setReduceMotionSub),
          ),
          SwitchListTile(
            value: s.highContrast,
            onChanged: (v) => set.update((x) => x.copyWith(highContrast: v)),
            secondary: const Icon(Icons.contrast_rounded),
            title: Text(l.setHighContrast),
            subtitle: Text(l.setHighContrastSub),
          ),
          SwitchListTile(
            value: s.boldText,
            onChanged: (v) => set.update((x) => x.copyWith(boldText: v)),
            secondary: const Icon(Icons.format_bold_rounded),
            title: Text(l.setBoldText),
          ),

          // ------------------------------------------------- playback
          const Divider(height: 28),
          SectionHeader(
            title: l.setPlayback,
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          SwitchListTile(
            value: s.autoRadio,
            onChanged: (v) => set.update((x) => x.copyWith(autoRadio: v)),
            secondary: const Icon(Icons.all_inclusive_rounded),
            title: Text(l.setAutoRadio),
            subtitle: Text(l.setAutoRadioSub),
          ),
          SwitchListTile(
            value: s.smartShuffle,
            onChanged: (v) => set.update((x) => x.copyWith(smartShuffle: v)),
            secondary: const Icon(Icons.auto_awesome_motion_outlined),
            title: Text(l.setSmartShuffle),
            subtitle: Text(l.setSmartShuffleSub),
          ),
          SwitchListTile(
            value: s.resumePlayback,
            onChanged: (v) => set.update((x) => x.copyWith(resumePlayback: v)),
            secondary: const Icon(Icons.restore_rounded),
            title: Text(l.setResume),
            subtitle: Text(l.setResumeSub),
          ),
          SwitchListTile(
            value: s.dataSaverOffWifi,
            onChanged: (v) =>
                set.update((x) => x.copyWith(dataSaverOffWifi: v)),
            secondary: const Icon(Icons.data_saver_on_rounded),
            title: Text(l.setDataSaver),
            subtitle: Text(l.setDataSaverSub),
          ),
          SwitchListTile(
            value: s.showReasons,
            onChanged: (v) => set.update((x) => x.copyWith(showReasons: v)),
            secondary: const Icon(Icons.psychology_alt_outlined),
            title: Text(l.setShowReasons),
          ),
          SwitchListTile(
            value: s.haptics,
            onChanged: (v) => set.update((x) => x.copyWith(haptics: v)),
            secondary: const Icon(Icons.vibration_rounded),
            title: Text(l.setHaptics),
          ),

          const Divider(height: 28),
          SectionHeader(
            title: l.setStorage,
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.high_quality_outlined),
            title: Text(l.setQuality),
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
            title: Text(l.setWifiOnlyTitle),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.favorite_rounded),
            value: s.downloadLikes,
            onChanged: (v) => set.update((x) => x.copyWith(downloadLikes: v)),
            title: Text(l.setDownloadLikes),
            subtitle: Text(l.setDownloadLikesSub),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.auto_awesome_rounded),
            value: s.aiAutoDownload,
            onChanged: (v) => set.update((x) => x.copyWith(aiAutoDownload: v)),
            title: Text(l.setAiInstall),
            subtitle: Text(
              'Up to ${s.aiDailyDownloads}/day · '
              '${s.aiStorageBudgetMb ~/ 1024} GB budget · tune it in Your taste',
            ),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.fast_forward_rounded),
            value: s.skipSilence,
            onChanged: (v) => set.update((x) => x.copyWith(skipSilence: v)),
            title: Text(l.setSkipSilence),
            subtitle: Text(l.setSkipSilenceSub),
          ),
          ListTile(
            leading: const Icon(Icons.sd_storage_outlined),
            title: Text(l.setStorageUsed),
            subtitle: Text(prettyBytes(bytes)),
          ),

          const Divider(height: 28),
          SectionHeader(
            title: l.setLibrary,
            padding: EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          ListTile(
            leading: const Icon(Icons.library_add_outlined),
            title: Text(l.setImport),
            subtitle: Text('${s.watchedFolders.length} folders watched'),
            onTap: () => pushDetail(context, 'import'),
          ),
          ListTile(
            leading: const Icon(Icons.sync_alt_rounded),
            title: Text(l.setExport),
            subtitle: Text(l.setExportSub),
            onTap: () => _exportTaste(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.download_for_offline_outlined),
            title: Text(l.setImportTaste),
            subtitle: Text(l.setImportTasteSub),
            onTap: () => _importTaste(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.cleaning_services_outlined),
            title: Text(l.setCleanup),
            subtitle: Text(l.setCleanupSub),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              final n = await ref.read(importServiceProvider).pruneMissing();
              messenger.showSnackBar(
                SnackBar(content: Text('Removed $n missing files.')),
              );
            },
          ),

          // ------------------------------------------------------ updates
          const Divider(height: 28),
          SectionHeader(
            title: l.setUpdates,
            padding: const EdgeInsets.fromLTRB(16, 4, 8, 6),
          ),
          if (update != null)
            ListTile(
              leading: Icon(
                Icons.system_update_rounded,
                color: t.colorScheme.primary,
              ),
              title: Text(l.setUpdateReady(update.version)),
              subtitle: Text(
                UpdateService.canInstall
                    ? l.setUpdateReadySub
                    : l.setUpdateAvailableSub,
              ),
              onTap: () async {
                final messenger = ScaffoldMessenger.of(context);
                if (!UpdateService.canInstall) {
                  await Clipboard.setData(ClipboardData(text: update.url));
                  messenger.showSnackBar(
                    SnackBar(content: Text(l.setLinkCopied)),
                  );
                  return;
                }
                try {
                  await ref.read(updateServiceProvider).install(update);
                } catch (e) {
                  messenger.showSnackBar(SnackBar(content: Text('$e')));
                }
              },
            ),
          SwitchListTile(
            value: s.autoUpdate,
            onChanged: (v) => set.update((x) => x.copyWith(autoUpdate: v)),
            secondary: const Icon(Icons.update_rounded),
            title: Text(l.setAutoUpdate),
            subtitle: Text(l.setAutoUpdateSub),
          ),
          ListTile(
            leading: const Icon(Icons.search_rounded),
            title: Text(l.setCheckNow),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              messenger.showSnackBar(SnackBar(content: Text(l.setChecking)));
              final found = await ref
                  .read(updateServiceProvider)
                  .checkAndFetch(mayDownload: true);
              messenger.showSnackBar(
                SnackBar(
                  content: Text(
                    found == null
                        ? l.setUpToDate
                        : l.setUpdateReady(found.version),
                  ),
                ),
              );
            },
          ),

          const Divider(height: 28),
          SectionHeader(
            title: l.setAbout,
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
