import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../ai/mix_prompt.dart';
import '../../app/theme.dart';
import '../../l10n/app_localizations.dart';
import '../../state/profiles.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../ui/kit/aura_card.dart';

/// Type what you want to hear; get a playlist. Read on the device, no
/// account and no cloud model.
class MixPage extends ConsumerStatefulWidget {
  const MixPage({super.key, this.initial});
  final String? initial;

  @override
  ConsumerState<MixPage> createState() => _MixPageState();
}

class _MixPageState extends ConsumerState<MixPage> {
  late final _text = TextEditingController(text: widget.initial ?? '');
  List<Pick>? _picks;
  MixPrompt? _prompt;
  bool _busy = false;

  static const _recentKey = 'mixPrompts';

  List<String> get _recent =>
      ref.read(prefsProvider).getStringList(profileKey(_recentKey)) ?? const [];

  @override
  void initState() {
    super.initState();
    if ((widget.initial ?? '').isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _build());
    }
  }

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _build() async {
    final input = _text.text.trim();
    if (input.isEmpty || _busy) return;
    FocusScope.of(context).unfocus();
    setState(() => _busy = true);
    final prompt = parseMixPrompt(input);
    final prefs = ref.read(prefsProvider);
    await prefs.setStringList(profileKey(_recentKey), [
      input,
      ..._recent.where((r) => r != input),
    ].take(8).toList());
    try {
      final picks = await ref
          .read(aiProvider)
          .buildMix(prompt, ref.read(settingsProvider));
      if (!mounted) return;
      setState(() {
        _prompt = prompt;
        _picks = picks;
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _save() async {
    final picks = _picks;
    if (picks == null || picks.isEmpty) return;
    final l = L.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final name = await promptForName(context, l.mixSaveAs);
    if (name == null) return;
    final db = ref.read(dbProvider);
    final id = 'pl${DateTime.now().millisecondsSinceEpoch}';
    await db.createPlaylist(id, name);
    await db.addAllToPlaylist(id, [for (final p in picks) p.song.id]);
    messenger.showTimed(
      SnackBar(content: Text(l.qSaved(l.libSongCount(picks.length), name))),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    final picks = _picks;
    final examples = [l.mixEx1, l.mixEx2, l.mixEx3, l.mixEx4];

    return Scaffold(
      appBar: AppBar(title: Text(l.mixTitle)),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AuraCard(
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.mixAsk, style: t.textTheme.headlineSmall),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _text,
                    minLines: 1,
                    maxLines: 3,
                    textInputAction: TextInputAction.go,
                    onSubmitted: (_) => _build(),
                    style: t.textTheme.titleMedium,
                    decoration: InputDecoration(
                      hintText: l.mixHint,
                      prefixIcon: const Icon(Icons.edit_note_rounded),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          l.mixPrivate,
                          style: t.textTheme.bodySmall?.copyWith(
                            color: t.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      FilledButton.icon(
                        onPressed: _busy ? null : _build,
                        icon: _busy
                            ? const SizedBox.square(
                                dimension: 18,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Icon(Icons.auto_awesome_rounded),
                        label: Text(l.mixMake),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (picks == null) ...[
            SliverToBoxAdapter(
              child: SectionHeader(title: l.mixTry, icon: Icons.lightbulb_outline),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final e in [..._recent.take(4), ...examples])
                      ActionChip(
                        label: Text(e),
                        onPressed: () {
                          _text.text = e;
                          _build();
                        },
                      ),
                  ],
                ),
              ),
            ),
          ] else if (picks.isEmpty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyState(
                icon: Icons.search_off_rounded,
                title: l.mixNothing,
                body: l.mixNothingBody,
              ),
            )
          else ...[
            SliverToBoxAdapter(
              child: _Understood(prompt: _prompt!),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    FilledButton.icon(
                      onPressed: () => ref.read(musicProvider).playAll(
                        [for (final p in picks) p.song],
                        origin: 'mix',
                      ),
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: Text(l.actionPlayAll),
                    ),
                    OutlinedButton.icon(
                      onPressed: _save,
                      icon: const Icon(Icons.playlist_add_rounded),
                      label: Text(l.mixSave),
                    ),
                    OutlinedButton.icon(
                      onPressed: _busy ? null : _build,
                      icon: const Icon(Icons.refresh_rounded),
                      label: Text(l.mixAgain),
                    ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemCount: picks.length,
              itemBuilder: (context, i) {
                final p = picks[i];
                return ListTile(
                  leading: CoverArt(song: p.song, size: 48, radius: R.tile),
                  title: Text(
                    p.song.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    p.reason == null
                        ? p.song.artist
                        : '${p.song.artist} · ${reasonText(l, p.reason!)}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () => ref.read(musicProvider).playAll(
                    [for (final x in picks) x.song],
                    index: i,
                    origin: 'mix',
                  ),
                );
              },
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
          ],
        ],
      ),
    );
  }
}

/// Shows what was read from the sentence, so a surprising result explains
/// itself.
class _Understood extends StatelessWidget {
  const _Understood({required this.prompt});
  final MixPrompt prompt;

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    final chips = <(IconData, String)>[
      for (final tag in prompt.tags.take(5)) (Icons.sell_outlined, tag),
      for (final d in prompt.decades) (Icons.history_rounded, '${d}s'),
      if (prompt.yearFrom != null)
        (
          Icons.event_rounded,
          prompt.yearTo == prompt.yearFrom
              ? '${prompt.yearFrom}'
              : '${prompt.yearFrom}–${prompt.yearTo}',
        ),
      for (final a in prompt.likeArtists) (Icons.hub_outlined, l.mixLike(a)),
      for (final a in prompt.excludeArtists) (Icons.block_rounded, a),
      for (final a in prompt.excludeTags) (Icons.block_rounded, a),
      if (prompt.curve == EnergyCurve.rising)
        (Icons.trending_up_rounded, l.mixRising),
      if (prompt.curve == EnergyCurve.falling)
        (Icons.trending_down_rounded, l.mixFalling),
      (Icons.format_list_numbered_rounded, l.libSongCount(prompt.songs)),
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l.mixUnderstood,
            style: t.textTheme.labelLarge?.copyWith(
              color: t.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              for (final (icon, text) in chips)
                Chip(
                  avatar: Icon(icon, size: 16),
                  label: Text(text),
                  visualDensity: VisualDensity.compact,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
