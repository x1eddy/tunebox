import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../l10n/app_localizations.dart';

/// Swipe-to-rate: the fastest way to teach the AI without listening first.
class RateTrainerPage extends ConsumerStatefulWidget {
  const RateTrainerPage({super.key});

  @override
  ConsumerState<RateTrainerPage> createState() => _RateTrainerPageState();
}

class _RateTrainerPageState extends ConsumerState<RateTrainerPage> {
  List<Song> _deck = const [];
  bool _loading = true;
  String? _error;
  int _i = 0;
  double _before = 0;
  /// Verdicts are held here until the round finishes, so leaving really does
  /// throw the round away — which is what the warning promises.
  final _verdicts = <String, bool>{};
  bool _saving = false;

  int get _liked => _verdicts.values.where((v) => v).length;
  int get _blocked => _verdicts.values.where((v) => !v).length;

  @override
  void initState() {
    super.initState();
    _build();
  }

  /// True while cards from YouTube are still on their way. The first cards
  /// come from the library at once; waiting for the network used to hold the
  /// whole screen on a spinner.
  bool _loadingMore = false;

  Future<void> _build() async {
    try {
      final db = ref.read(dbProvider);
      final settings = ref.read(settingsProvider);

      final library = await db.library();
      final unrated = library.where((s) => !s.liked && !s.blocked).toList()
        ..shuffle();
      final deck = <Song>[...unrated.take(10)];
      final wantMore = settings.useYouTubeSignals && deck.length < 20;

      if (!mounted) return;
      setState(() {
        _deck = deck;
        _loadingMore = wantMore;
        _loading = deck.isEmpty && wantMore;
      });
      if (deck.isEmpty && !wantMore) {
        setState(() => _loading = false);
      }

      // The profile is usually already warm from the Taste tab.
      unawaited(() async {
        final warm = ref.read(tasteProfileProvider).value;
        _before = warm?.confidence ??
            (await ref.read(aiProvider).profile()).confidence;
      }());

      if (wantMore) await _fetchMore(deck);
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = '$e';
        _loading = false;
        _loadingMore = false;
      });
    }
  }

  Future<void> _fetchMore(List<Song> deck) async {
    final extra = <Song>[];
    try {
      // Home already built these shelves; reuse them instead of asking
      // YouTube again.
      final shelves = await ref.read(homeShelvesProvider.future);
      for (final shelf in shelves) {
        for (final pick in shelf.picks) {
          if (deck.any((s) => s.id == pick.song.id)) continue;
          if (extra.any((s) => s.id == pick.song.id)) continue;
          if (pick.song.liked || pick.song.blocked) continue;
          extra.add(pick.song);
          if (deck.length + extra.length >= 20) break;
        }
        if (deck.length + extra.length >= 20) break;
      }
    } catch (_) {
      // the library cards are enough to train on
    }
    if (!mounted) return;
    setState(() {
      _deck = [..._deck, ...extra];
      _loadingMore = false;
      _loading = false;
    });
    if (_i >= _deck.length) unawaited(_commit());
  }

  void _rate(bool like) {
    // Two taps inside one frame would run past the end of the deck.
    if (_i >= _deck.length) return;
    _verdicts[_deck[_i].id] = like;
    _next();
  }

  void _next() {
    setState(() => _i++);
    if (_i >= _deck.length && !_loadingMore) unawaited(_commit());
  }

  /// Writes the whole round to the model in one go.
  Future<void> _commit() async {
    if (_saving || _verdicts.isEmpty) return;
    _saving = true;
    final music = ref.read(musicProvider);
    final ai = ref.read(aiProvider);
    final settings = ref.read(settingsProvider);
    final byId = {for (final s in _deck) s.id: s};
    for (final entry in _verdicts.entries) {
      final song = byId[entry.key];
      if (song == null) continue;
      if (entry.value) {
        await music.like(song, value: true);
      } else {
        await ai.learnFromDislike(song, settings);
      }
    }
    if (!mounted) return;
    dropTasteProfileCache();
    ref.invalidate(tasteProfileProvider);
  }

  /// Asked before the round is abandoned. Nothing has been written yet.
  Future<bool> _confirmLeave() async {
    if (_verdicts.isEmpty || (_i >= _deck.length && !_loadingMore)) return true;
    final l = L.of(context);
    final leave = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.warning_amber_rounded),
        title: Text(l.trainLeaveTitle),
        content: Text(l.trainLeaveBody(_verdicts.length)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l.trainKeepGoing),
          ),
          FilledButton.tonal(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.trainDiscard),
          ),
        ],
      ),
    );
    return leave ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);

    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: Text(l.trainTitle)),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (_error != null || _deck.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(l.trainTitle)),
        body: EmptyState(
          icon: Icons.school_outlined,
          title: l.trainNothingTitle,
          body: _error ?? l.trainNothingBody,
        ),
      );
    }

    final waiting = _i >= _deck.length && _loadingMore;
    final done = _i >= _deck.length && !_loadingMore;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) return;
        if (await _confirmLeave() && mounted) {
          if (context.mounted) Navigator.of(context).pop();
        }
      },
      child: _scaffold(t, done, waiting),
    );
  }

  Widget _scaffold(ThemeData t, bool done, bool waiting) {
    final l = L.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l.trainTitle),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                '${_i.clamp(0, _deck.length)} / ${_deck.length}',
                style: t.textTheme.titleSmall?.copyWith(
                  color: t.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(3),
          child: LinearProgressIndicator(
            value: _deck.isEmpty ? 0 : (_i / _deck.length).clamp(0.0, 1.0),
            minHeight: 3,
          ),
        ),
      ),
      body: waiting
          ? const Center(child: CircularProgressIndicator())
          : done
          ? _Done(liked: _liked, blocked: _blocked, before: _before)
          : _buildDeck(t),
    );
  }

  Widget _buildDeck(ThemeData t) {
    final l = L.of(context);
    final song = _deck[_i];
    final next = _i + 1 < _deck.length ? _deck[_i + 1] : null;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 6),
          child: Text(
            l.trainQuestion,
            textAlign: TextAlign.center,
            style: t.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (next != null)
                  Transform.scale(
                    scale: 0.94,
                    child: Transform.translate(
                      offset: const Offset(0, 14),
                      child: Opacity(opacity: 0.5, child: _Card(song: next)),
                    ),
                  ),
                Dismissible(
                  key: ValueKey(song.id),
                  direction: DismissDirection.horizontal,
                  onDismissed: (d) => _rate(d == DismissDirection.startToEnd),
                  background: _SwipeHint(
                    alignment: Alignment.centerLeft,
                    icon: Icons.favorite_rounded,
                    label: l.trainMoreLikeThis,
                    color: t.colorScheme.primary,
                  ),
                  secondaryBackground: _SwipeHint(
                    alignment: Alignment.centerRight,
                    icon: Icons.block_rounded,
                    label: l.trainNeverAgain,
                    color: t.colorScheme.error,
                  ),
                  child: _Card(song: song),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _RoundButton(
                icon: Icons.thumb_down_rounded,
                color: t.colorScheme.error,
                onTap: () => _rate(false),
              ),
              _RoundButton(
                icon: Icons.skip_next_rounded,
                color: t.colorScheme.onSurfaceVariant,
                size: 48,
                onTap: _i < _deck.length ? _next : () {},
              ),
              _RoundButton(
                icon: Icons.favorite_rounded,
                color: t.colorScheme.primary,
                onTap: () => _rate(true),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Card extends ConsumerWidget {
  const _Card({required this.song});
  final Song song;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final tags = tagsOf(song).take(3).toList();
    return Material(
      borderRadius: R.hero,
      clipBehavior: Clip.antiAlias,
      color: t.colorScheme.surfaceContainerHigh,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: CoverArt(song: song, radius: BorderRadius.zero),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
            child: Column(
              children: [
                Text(
                  song.title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: t.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  [song.artist, if (song.year != null) '${song.year}'].join(' · '),
                  style: t.textTheme.bodyMedium?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
                if (tags.isNotEmpty) ...[
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 6,
                    children: [
                      for (final tag in tags)
                        Chip(
                          label: Text(tag),
                          visualDensity: VisualDensity.compact,
                          labelStyle: t.textTheme.labelSmall,
                        ),
                    ],
                  ),
                ],
                const SizedBox(height: 4),
                TextButton.icon(
                  onPressed: () =>
                      ref.read(musicProvider).playSong(song, origin: 'trainer'),
                  icon: const Icon(Icons.play_circle_outline_rounded, size: 18),
                  label: const Text('Hear it'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SwipeHint extends StatelessWidget {
  const _SwipeHint({
    required this.alignment,
    required this.icon,
    required this.label,
    required this.color,
  });

  final Alignment alignment;
  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      borderRadius: R.hero,
      color: color.withValues(alpha: 0.18),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 26),
    alignment: alignment,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 34),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(color: color, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}

class _RoundButton extends StatelessWidget {
  const _RoundButton({
    required this.icon,
    required this.color,
    required this.onTap,
    this.size = 62,
  });

  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        shape: const CircleBorder(),
        color: t.colorScheme.surfaceContainerHigh,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: Icon(icon, color: color, size: size * 0.42),
        ),
      ),
    );
  }
}

class _Done extends ConsumerWidget {
  const _Done({
    required this.liked,
    required this.blocked,
    required this.before,
  });

  final int liked;
  final int blocked;
  final double before;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final after = ref.watch(tasteProfileProvider).value?.confidence ?? before;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.auto_awesome_rounded,
              size: 52,
              color: t.colorScheme.primary,
            ),
            const SizedBox(height: 14),
            Text('Round complete', style: t.textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(
              '$liked kept · $blocked blocked. Confidence '
              '${(before * 100).round()}% → ${(after * 100).round()}%.',
              textAlign: TextAlign.center,
              style: t.textTheme.bodyMedium?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 22),
            FilledButton(
              onPressed: () {
                ref.read(musicProvider).refreshHome();
                Navigator.pop(context);
              },
              child: const Text('Back to Your taste'),
            ),
          ],
        ),
      ),
    );
  }
}
