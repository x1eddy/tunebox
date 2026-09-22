import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/common.dart';
import 'rate_trainer.dart';

/// What the AI learned, and every control for changing its mind.
class TastePage extends ConsumerWidget {
  const TastePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final settings = ref.watch(settingsProvider);
    final set = ref.read(settingsProvider.notifier);
    final music = ref.read(musicProvider);
    final profileAsync = ref.watch(tasteProfileProvider);
    final profile = profileAsync.value;
    final rules = ref.watch(artistRulesProvider).value ?? const <ArtistRule>[];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Your taste'),
            actions: [
              TextButton.icon(
                onPressed: () async {
                  final messenger = ScaffoldMessenger.of(context);
                  messenger.showSnackBar(
                    const SnackBar(content: Text('Retraining on your history…')),
                  );
                  await music.retrain();
                  messenger.showSnackBar(
                    const SnackBar(content: Text('The AI rebuilt its model.')),
                  );
                },
                icon: const Icon(Icons.refresh_rounded, size: 18),
                label: const Text('Retrain'),
              ),
              const SizedBox(width: 8),
            ],
          ),
          SliverList.list(
            children: [
              _ProfileCard(profile: profile),
              SwitchListTile(
                value: settings.learning,
                onChanged: (v) => set.update((s) => s.copyWith(learning: v)),
                title: const Text('Keep learning while I listen'),
                subtitle: const Text('Turn off to freeze the current profile'),
                secondary: const Icon(Icons.school_outlined),
              ),

              // ---------------------------------------------- downloads
              const SectionHeader(
                title: 'Downloads the AI handles',
                subtitle: 'Music lands on the phone without you asking',
              ),
              SwitchListTile(
                value: settings.downloadLikes,
                onChanged: (v) =>
                    set.update((s) => s.copyWith(downloadLikes: v)),
                title: const Text('Download everything I like'),
                subtitle: const Text(
                  'Hit the heart and the file is saved for offline',
                ),
                secondary: const Icon(Icons.favorite_rounded),
              ),
              SwitchListTile(
                value: settings.aiAutoDownload,
                onChanged: (v) =>
                    set.update((s) => s.copyWith(aiAutoDownload: v)),
                title: const Text('Let the AI install music it picks'),
                subtitle: Text(
                  settings.aiAutoDownload
                      ? 'Up to ${settings.aiDailyDownloads} songs a day, '
                            '${settings.aiStorageBudgetMb ~/ 1024} GB budget'
                      : 'It will fetch tracks it is confident about',
                ),
                secondary: const Icon(Icons.auto_awesome_rounded),
              ),
              if (settings.aiAutoDownload) ...[
                _Stepper(
                  icon: Icons.numbers_rounded,
                  label: 'Songs per day',
                  value: '${settings.aiDailyDownloads}',
                  onMinus: settings.aiDailyDownloads <= 1
                      ? null
                      : () => set.update(
                          (s) => s.copyWith(
                            aiDailyDownloads: s.aiDailyDownloads - 1,
                          ),
                        ),
                  onPlus: settings.aiDailyDownloads >= 30
                      ? null
                      : () => set.update(
                          (s) => s.copyWith(
                            aiDailyDownloads: s.aiDailyDownloads + 1,
                          ),
                        ),
                ),
                _Stepper(
                  icon: Icons.sd_storage_outlined,
                  label: 'Storage it may use',
                  value: '${settings.aiStorageBudgetMb ~/ 1024} GB',
                  onMinus: settings.aiStorageBudgetMb <= 1024
                      ? null
                      : () => set.update(
                          (s) => s.copyWith(
                            aiStorageBudgetMb: s.aiStorageBudgetMb - 1024,
                          ),
                        ),
                  onPlus: settings.aiStorageBudgetMb >= 16384
                      ? null
                      : () => set.update(
                          (s) => s.copyWith(
                            aiStorageBudgetMb: s.aiStorageBudgetMb + 1024,
                          ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 10),
                  child: FilledButton.tonalIcon(
                    onPressed: () async {
                      final messenger = ScaffoldMessenger.of(context);
                      final n = await music.runAutoDownloads();
                      messenger.showSnackBar(
                        SnackBar(
                          content: Text(
                            n == 0
                                ? 'Nothing new worth downloading right now.'
                                : 'Queued $n songs the AI picked.',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.download_rounded),
                    label: const Text('Fetch some now'),
                  ),
                ),
              ],

              // ------------------------------------------------- profile
              const SectionHeader(
                title: 'What it thinks you like',
                subtitle: 'Learned from plays, skips, likes and repeats',
              ),
              if (profile == null || profile.tags.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Not enough listening yet. Play a handful of songs, or '
                    'run a training round below.',
                  ),
                )
              else
                _TagBars(tags: profile.tags),
              if (profile != null && profile.artists.isNotEmpty) ...[
                const SectionHeader(
                  title: 'Artists it leans on',
                  padding: EdgeInsets.fromLTRB(16, 18, 8, 10),
                ),
                _ArtistWrap(artists: profile.artists),
              ],
              if (profile != null && profile.plays > 0) ...[
                const SectionHeader(
                  title: 'When you listen',
                  subtitle: 'Plays per hour — the current hour gets weighted',
                  padding: EdgeInsets.fromLTRB(16, 22, 8, 6),
                ),
                _HourChart(byHour: profile.byHour),
              ],
              if (profile != null && profile.decades.isNotEmpty) ...[
                const SectionHeader(
                  title: 'Decades',
                  padding: EdgeInsets.fromLTRB(16, 18, 8, 6),
                ),
                _DecadeChart(decades: profile.decades),
              ],

              // --------------------------------------------------- dials
              const SectionHeader(
                title: 'Tune the recommendations',
                subtitle: 'Takes effect on the next Home refresh',
              ),
              _Dial(
                icon: Icons.explore_rounded,
                left: 'Familiar',
                right: 'Discovery',
                value: settings.discovery,
                caption: switch (settings.discovery) {
                  < 0.25 => 'Mostly songs you already know',
                  < 0.55 => 'A few new songs per shelf',
                  < 0.8 => 'Half of Home will be new to you',
                  _ => 'Show me things I have never heard',
                },
                onChanged: (v) => set.update((s) => s.copyWith(discovery: v)),
              ),
              _Dial(
                icon: Icons.bolt_rounded,
                left: 'Calm',
                right: 'High energy',
                value: settings.energy,
                caption: 'Nudges picks louder and faster',
                onChanged: (v) => set.update((s) => s.copyWith(energy: v)),
              ),
              _Dial(
                icon: Icons.new_releases_outlined,
                left: 'Timeless',
                right: 'Fresh',
                value: settings.recency,
                caption: 'How much "New ⭐" leans on release date',
                onChanged: (v) => set.update((s) => s.copyWith(recency: v)),
              ),
              _Dial(
                icon: Icons.history_toggle_off_rounded,
                left: 'Rarely',
                right: 'Often',
                value: settings.nostalgia,
                caption: 'How hard to dig for old forgotten hits',
                onChanged: (v) => set.update((s) => s.copyWith(nostalgia: v)),
              ),

              // ------------------------------------------------- signals
              const SectionHeader(
                title: 'Signals it may use',
                subtitle: 'Everything stays on this device',
              ),
              SwitchListTile(
                value: settings.useHistory,
                onChanged: (v) => set.update((s) => s.copyWith(useHistory: v)),
                title: const Text('Listening history'),
                subtitle: Text('${profile?.plays ?? 0} plays recorded'),
              ),
              SwitchListTile(
                value: settings.useSkips,
                onChanged: (v) => set.update((s) => s.copyWith(useSkips: v)),
                title: const Text('Skips'),
                subtitle: Text(
                  '${profile?.skips ?? 0} skips counted against songs',
                ),
              ),
              SwitchListTile(
                value: settings.useTimeOfDay,
                onChanged: (v) =>
                    set.update((s) => s.copyWith(useTimeOfDay: v)),
                title: const Text('Time of day'),
                subtitle: const Text('Different picks at 08:00 and 23:00'),
              ),
              SwitchListTile(
                value: settings.useYouTubeSignals,
                onChanged: (v) =>
                    set.update((s) => s.copyWith(useYouTubeSignals: v)),
                title: const Text('YouTube related tracks'),
                subtitle: const Text('Pull in songs you do not own yet'),
              ),

              // ---------------------------------------------- overrides
              const SectionHeader(
                title: 'Always more of',
                padding: EdgeInsets.fromLTRB(16, 22, 8, 8),
              ),
              _RuleChips(
                rules: rules.where((r) => r.rule > 0).toList(),
                icon: Icons.arrow_upward_rounded,
                color: t.colorScheme.primary,
                onAdd: () => _addRule(context, ref, 1),
                onRemove: (a) => music.clearArtistRule(a),
              ),
              const SectionHeader(
                title: 'Never again',
                padding: EdgeInsets.fromLTRB(16, 18, 8, 8),
              ),
              _RuleChips(
                rules: rules.where((r) => r.rule < 0).toList(),
                icon: Icons.block_rounded,
                color: t.colorScheme.error,
                onAdd: () => _addRule(context, ref, -1),
                onRemove: (a) => music.clearArtistRule(a),
              ),

              const SizedBox(height: 22),
              const _TrainCard(),
              _ResetTile(onReset: music.forgetEverything),
              const SizedBox(height: 28),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _addRule(BuildContext context, WidgetRef ref, int rule) async {
    final name = await promptForName(
      context,
      rule > 0 ? 'Always more of…' : 'Never again…',
    );
    if (name == null) return;
    await ref.read(musicProvider).setArtistRule(name, rule);
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({required this.profile});
  final TasteProfile? profile;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final confidence = profile?.confidence ?? 0;
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: R.hero,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            t.colorScheme.primaryContainer,
            t.colorScheme.tertiaryContainer,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.auto_awesome_rounded,
                color: t.colorScheme.onPrimaryContainer,
              ),
              const SizedBox(width: 8),
              Text(
                'Confidence ${(confidence * 100).round()}%',
                style: t.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: t.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: R.pill,
            child: LinearProgressIndicator(
              value: confidence,
              minHeight: 8,
              backgroundColor: t.colorScheme.onPrimaryContainer.withValues(
                alpha: 0.18,
              ),
              valueColor: AlwaysStoppedAnimation(
                t.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text(
            profile == null
                ? 'Warming up…'
                : '${profile!.plays} plays · ${profile!.skips} skips · '
                      '${profile!.likes} likes',
            style: t.textTheme.bodySmall?.copyWith(
              color: t.colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            profile?.summary ?? 'Play a few songs and this fills in.',
            style: t.textTheme.bodyMedium?.copyWith(
              color: t.colorScheme.onPrimaryContainer,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}

class _Stepper extends StatelessWidget {
  const _Stepper({
    required this.icon,
    required this.label,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });

  final IconData icon;
  final String label;
  final String value;
  final VoidCallback? onMinus;
  final VoidCallback? onPlus;

  @override
  Widget build(BuildContext context) => ListTile(
    leading: Icon(icon),
    title: Text(label),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: onMinus,
          icon: const Icon(Icons.remove_circle_outline_rounded),
        ),
        Text(value, style: Theme.of(context).textTheme.titleMedium),
        IconButton(
          onPressed: onPlus,
          icon: const Icon(Icons.add_circle_outline_rounded),
        ),
      ],
    ),
  );
}

class _TagBars extends StatelessWidget {
  const _TagBars({required this.tags});
  final List<(String, double)> tags;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          for (final tag in tags)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: Text(
                      tag.$1,
                      style: t.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: tag.$2,
                        minHeight: 8,
                        backgroundColor: t.colorScheme.surfaceContainerHighest,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 42,
                    child: Text(
                      '${(tag.$2 * 100).round()}%',
                      textAlign: TextAlign.right,
                      style: t.textTheme.labelSmall?.copyWith(
                        color: t.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _ArtistWrap extends StatelessWidget {
  const _ArtistWrap({required this.artists});
  final List<(String, double)> artists;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final a in artists)
            Chip(
              label: Text('${a.$1}  ${(a.$2 * 100).round()}%'),
              backgroundColor: Color.lerp(
                t.colorScheme.surfaceContainerHighest,
                t.colorScheme.primaryContainer,
                a.$2,
              ),
            ),
        ],
      ),
    );
  }
}

class _HourChart extends StatelessWidget {
  const _HourChart({required this.byHour});
  final List<double> byHour;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final nowHour = DateTime.now().hour;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
      child: Column(
        children: [
          SizedBox(
            height: 92,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (var h = 0; h < 24; h++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: FractionallySizedBox(
                        heightFactor: byHour[h].clamp(0.05, 1.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: h == nowHour
                                ? t.colorScheme.tertiary
                                : t.colorScheme.primary.withValues(
                                    alpha: 0.30 + 0.70 * byHour[h],
                                  ),
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (final label in ['00', '06', '12', '18', '23'])
                Text(
                  label,
                  style: t.textTheme.labelSmall?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DecadeChart extends StatelessWidget {
  const _DecadeChart({required this.decades});
  final Map<String, double> decades;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final peak = decades.values.fold<double>(0.0001, (a, b) => a > b ? a : b);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          for (final e in decades.entries)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  SizedBox(
                    width: 56,
                    child: Text(e.key, style: t.textTheme.bodySmall),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 18,
                          decoration: BoxDecoration(
                            color: t.colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: (e.value / peak).clamp(0.02, 1),
                          child: Container(
                            height: 18,
                            decoration: BoxDecoration(
                              color: t.colorScheme.primary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 44,
                    child: Text(
                      '${(e.value * 100).round()}%',
                      textAlign: TextAlign.right,
                      style: t.textTheme.labelSmall?.copyWith(
                        color: t.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _Dial extends StatelessWidget {
  const _Dial({
    required this.icon,
    required this.left,
    required this.right,
    required this.value,
    required this.caption,
    required this.onChanged,
  });

  final IconData icon;
  final String left;
  final String right;
  final double value;
  final String caption;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: t.colorScheme.primary),
              const SizedBox(width: 8),
              Text(left, style: t.textTheme.labelLarge),
              const Spacer(),
              Text(
                right,
                style: t.textTheme.labelLarge?.copyWith(
                  color: t.colorScheme.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Slider(value: value, onChanged: onChanged),
          Padding(
            padding: const EdgeInsets.only(left: 26, bottom: 6),
            child: Text(
              caption,
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

class _RuleChips extends StatelessWidget {
  const _RuleChips({
    required this.rules,
    required this.icon,
    required this.color,
    required this.onAdd,
    required this.onRemove,
  });

  final List<ArtistRule> rules;
  final IconData icon;
  final Color color;
  final VoidCallback onAdd;
  final ValueChanged<String> onRemove;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final r in rules)
          InputChip(
            avatar: Icon(icon, size: 16, color: color),
            label: Text(r.artist),
            onDeleted: () => onRemove(r.artist),
          ),
        ActionChip(
          avatar: const Icon(Icons.add_rounded, size: 16),
          label: const Text('Add'),
          onPressed: onAdd,
        ),
      ],
    ),
  );
}

class _TrainCard extends StatelessWidget {
  const _TrainCard();

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: R.hero,
        border: Border.all(color: t.colorScheme.primary.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.swipe_rounded, color: t.colorScheme.primary),
              const SizedBox(width: 10),
              Text(
                'Train it by rating',
                style: t.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Swipe through real songs. Right for more like this, left for '
            'never again. Two minutes here beats a week of listening.',
            style: t.textTheme.bodySmall?.copyWith(
              color: t.colorScheme.onSurfaceVariant,
              height: 1.35,
            ),
          ),
          const SizedBox(height: 14),
          FilledButton.icon(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const RateTrainerPage()),
            ),
            icon: const Icon(Icons.play_arrow_rounded),
            label: const Text('Start a training round'),
          ),
        ],
      ),
    );
  }
}

class _ResetTile extends StatelessWidget {
  const _ResetTile({required this.onReset});
  final Future<void> Function() onReset;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Icon(Icons.restart_alt_rounded, color: t.colorScheme.error),
        title: Text(
          'Reset what it learned',
          style: TextStyle(color: t.colorScheme.error),
        ),
        subtitle: const Text('Clears plays, skips and weights. Keeps library.'),
        onTap: () async {
          final ok = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Reset the AI?'),
              content: const Text(
                'Your library, playlists and downloads stay. Everything it '
                'learned about you is deleted and Home goes back to defaults.',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('Reset'),
                ),
              ],
            ),
          );
          if (ok ?? false) await onReset();
        },
      ),
    );
  }
}
