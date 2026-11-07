import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import '../../playback/sound_math.dart';
import '../../state/sleep_timer.dart';
import '../../state/sound.dart';
import '../../state/sound_wiring.dart';
import '../../ui/common.dart';
import '../../ui/kit/grouped.dart';
import 'eq_curve.dart';

String presetLabel(L l, String name) => switch (name) {
  'Flat' => l.eqFlat,
  'Bass' => l.eqBass,
  'Vocal' => l.eqVocal,
  'Night' => l.eqNight,
  'Headphones' => l.eqHeadphones,
  'Car' => l.eqCar,
  'Treble' => l.eqTreble,
  _ => name,
};

String outputLabel(L l, AudioOutput o) => switch (o) {
  AudioOutput.speaker => l.sndSpeaker,
  AudioOutput.wired => l.sndWired,
  AudioOutput.bluetooth => l.sndBluetooth,
};

/// Everything about how TuneBox sounds, in one place.
class SoundPage extends ConsumerStatefulWidget {
  const SoundPage({super.key});

  @override
  ConsumerState<SoundPage> createState() => _SoundPageState();
}

class _SoundPageState extends ConsumerState<SoundPage> {
  /// The output being edited; starts on the one in use.
  AudioOutput? _editing;

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    final s = ref.watch(soundProvider);
    final set = ref.read(soundProvider.notifier);
    final inUse = ref.watch(currentOutputProvider).value ?? AudioOutput.speaker;
    final editing = _editing ?? inUse;
    final preset = s.presetFor(editing);
    final gains = s.gainsFor(preset);
    final eqHere = Platform.isAndroid;

    void setPreset(String name) => set.update(
      (s) => s.copyWith(eqByOutput: {...s.eqByOutput, editing.name: name}),
    );

    return Scaffold(
      appBar: AppBar(title: Text(l.sndTitle)),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: groupSections(context, [
          // -------------------------------------------------- between songs
          SectionHeader(
            title: l.sndBetween,
            icon: Icons.compare_arrows_rounded,
          ),
          ListTile(
            title: Text(l.sndCrossfade),
            trailing: Text(
              s.crossfadeSec == 0 ? l.sndGapless : l.sndSeconds(s.crossfadeSec),
              style: t.textTheme.labelLarge?.copyWith(
                color: t.colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Slider(
              value: s.crossfadeSec.toDouble(),
              max: 12,
              divisions: 12,
              label: s.crossfadeSec == 0
                  ? l.sndGapless
                  : l.sndSeconds(s.crossfadeSec),
              onChanged: (v) =>
                  set.update((s) => s.copyWith(crossfadeSec: v.round())),
            ),
          ),
          SwitchListTile(
            value: s.smartCrossfade,
            onChanged: s.crossfadeSec == 0
                ? null
                : (v) => set.update((s) => s.copyWith(smartCrossfade: v)),
            title: Text(l.sndSmart),
            subtitle: Text(l.sndSmartSub),
          ),

          // ------------------------------------------------------- loudness
          SectionHeader(title: l.sndLoudness, icon: Icons.graphic_eq_rounded),
          SwitchListTile(
            value: s.normalize,
            onChanged: (v) => set.update((s) => s.copyWith(normalize: v)),
            title: Text(l.sndNormalize),
            subtitle: Text(l.sndNormalizeSub),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: SegmentedButton<LoudnessTarget>(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: LoudnessTarget.quiet,
                  label: Text(l.sndQuiet),
                ),
                ButtonSegment(
                  value: LoudnessTarget.normal,
                  label: Text(l.sndNormal),
                ),
                ButtonSegment(
                  value: LoudnessTarget.loud,
                  label: Text(l.sndLoud),
                ),
              ],
              selected: {s.target},
              onSelectionChanged: s.normalize
                  ? (v) => set.update((s) => s.copyWith(target: v.first))
                  : null,
            ),
          ),

          // ------------------------------------------------------ equaliser
          SectionHeader(title: l.sndEq, icon: Icons.equalizer_rounded),
          if (!eqHere)
            ListTile(
              leading: const Icon(Icons.info_outline_rounded),
              title: Text(l.sndEqOnlyAndroid),
            )
          else ...[
            SwitchListTile(
              value: s.eqEnabled,
              onChanged: (v) => set.update((s) => s.copyWith(eqEnabled: v)),
              title: Text(l.sndEqOn),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 4),
              child: Text(
                l.sndEqFor,
                style: t.textTheme.labelLarge?.copyWith(
                  color: t.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Wrap(
                spacing: 8,
                children: [
                  for (final o in AudioOutput.values)
                    ChoiceChip(
                      selected: o == editing,
                      onSelected: (_) => setState(() => _editing = o),
                      avatar: Icon(switch (o) {
                        AudioOutput.speaker => Icons.speaker_phone_rounded,
                        AudioOutput.wired => Icons.headphones_rounded,
                        AudioOutput.bluetooth => Icons.bluetooth_audio_rounded,
                      }, size: 18),
                      label: Text(
                        o == inUse
                            ? '${outputLabel(l, o)} · ${l.sndInUse}'
                            : outputLabel(l, o),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
              child: EqCurve(
                gains: gains,
                enabled: s.eqEnabled,
                onChanged: (next) {
                  // Editing a built-in preset makes a "Custom" one for this
                  // output, so the built-ins are never overwritten.
                  final name = kEqPresets.containsKey(preset)
                      ? l.sndCustom
                      : preset;
                  set.update(
                    (s) => s.copyWith(
                      customPresets: {...s.customPresets, name: next},
                      eqByOutput: {...s.eqByOutput, editing.name: name},
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 52,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: [
                  for (final name in s.presetNames)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        selected: name == preset,
                        onSelected: s.eqEnabled ? (_) => setPreset(name) : null,
                        label: Text(presetLabel(l, name)),
                      ),
                    ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 8),
                TextButton.icon(
                  onPressed: s.eqEnabled
                      ? () async {
                          final name = await promptForName(
                            context,
                            l.sndPresetName,
                          );
                          if (name == null || name.trim().isEmpty) return;
                          set.update(
                            (s) => s.copyWith(
                              customPresets: {
                                ...s.customPresets,
                                name.trim(): gains,
                              },
                              eqByOutput: {
                                ...s.eqByOutput,
                                editing.name: name.trim(),
                              },
                            ),
                          );
                        }
                      : null,
                  icon: const Icon(Icons.bookmark_add_outlined, size: 18),
                  label: Text(l.sndSavePreset),
                ),
                if (!kEqPresets.containsKey(preset))
                  TextButton.icon(
                    onPressed: () => set.update((s) {
                      final custom = {...s.customPresets}..remove(preset);
                      final out = {
                        for (final e in s.eqByOutput.entries)
                          e.key: e.value == preset ? 'Flat' : e.value,
                      };
                      return s.copyWith(customPresets: custom, eqByOutput: out);
                    }),
                    icon: const Icon(Icons.delete_outline_rounded, size: 18),
                    label: Text(l.sndDeletePreset),
                  ),
              ],
            ),
            ListTile(
              title: Text(l.sndBoost),
              subtitle: Text(l.sndBoostSub),
              trailing: Text(
                '+${s.boostDb.toStringAsFixed(0)} dB',
                style: t.textTheme.labelLarge?.copyWith(
                  color: t.colorScheme.primary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Slider(
                value: s.boostDb,
                max: 10,
                divisions: 10,
                onChanged: (v) => set.update((s) => s.copyWith(boostDb: v)),
              ),
            ),
          ],

          // -------------------------------------------------- speed & pitch
          SectionHeader(title: l.sndSpeedPitch, icon: Icons.speed_rounded),
          _ValueSlider(
            label: l.sndSpeed,
            value: s.speed,
            onChanged: (v) => set.update((s) => s.copyWith(speed: v)),
          ),
          if (!Platform.isIOS)
            _ValueSlider(
              label: l.sndPitch,
              value: s.pitch,
              onChanged: (v) => set.update((s) => s.copyWith(pitch: v)),
            ),
          if (s.speed != 1 || s.pitch != 1)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 4),
                child: TextButton(
                  onPressed: () =>
                      set.update((s) => s.copyWith(speed: 1, pitch: 1)),
                  child: Text(l.sndReset),
                ),
              ),
            ),

          // ---------------------------------------------------- sleep timer
          SectionHeader(title: l.sleepTitle, icon: Icons.bedtime_outlined),
          const SleepTimerPanel(),
        ]),
      ),
    );
  }
}

class _ValueSlider extends StatelessWidget {
  const _ValueSlider({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
      child: Row(
        children: [
          SizedBox(width: 64, child: Text(label)),
          Expanded(
            child: Slider(
              value: value,
              min: 0.5,
              max: 2,
              divisions: 30,
              label: '${value.toStringAsFixed(2)}×',
              onChanged: onChanged,
            ),
          ),
          SizedBox(
            width: 52,
            child: Text(
              '${value.toStringAsFixed(2)}×',
              style: t.textTheme.labelLarge?.copyWith(
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// The timer choices and, while one runs, the countdown. Used on the Sound
/// page and in the player's quick sheet.
class SleepTimerPanel extends ConsumerWidget {
  const SleepTimerPanel({super.key});

  static String _clock(Duration d) {
    final m = d.inMinutes;
    final s = d.inSeconds % 60;
    return '$m:${s.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);
    final sleep = ref.watch(sleepTimerProvider);
    final timer = ref.read(sleepTimerProvider.notifier);

    final status = switch (sleep.mode) {
      SleepMode.minutes => l.sleepLeft(_clock(sleep.left ?? Duration.zero)),
      SleepMode.endOfSong => l.sleepAfterSong,
      SleepMode.endOfQueue => l.sleepAfterQueue,
      SleepMode.off => null,
    };

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (status != null) ...[
            Row(
              children: [
                Icon(Icons.bedtime_rounded, color: t.colorScheme.primary),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    status,
                    style: t.textTheme.titleMedium?.copyWith(
                      fontFeatures: const [FontFeature.tabularFigures()],
                    ),
                  ),
                ),
                TextButton(onPressed: timer.cancel, child: Text(l.sleepCancel)),
              ],
            ),
            if (sleep.mode == SleepMode.minutes &&
                (Platform.isAndroid || Platform.isIOS))
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  l.sleepShake,
                  style: t.textTheme.bodySmall?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
          ],
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final m in [15, 30, 45, 60, 90])
                ActionChip(
                  label: Text(l.sleepMinutes(m)),
                  onPressed: () => timer.startMinutes(m),
                ),
              ActionChip(
                avatar: const Icon(Icons.music_note_rounded, size: 18),
                label: Text(l.sleepEndSong),
                onPressed: timer.endOfSong,
              ),
              ActionChip(
                avatar: const Icon(Icons.queue_music_rounded, size: 18),
                label: Text(l.sleepEndQueue),
                onPressed: timer.endOfQueue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
