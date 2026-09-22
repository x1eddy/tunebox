import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/ai_engine.dart';
import '../../app/theme.dart';
import '../../data/db/database.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';

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
  int _liked = 0;
  int _blocked = 0;
  double _before = 0;

  @override
  void initState() {
    super.initState();
    _build();
  }

  Future<void> _build() async {
    try {
      final ai = ref.read(aiProvider);
      final db = ref.read(dbProvider);
      final settings = ref.read(settingsProvider);
      _before = (await ai.profile()).confidence;

      final library = await db.library();
      final unrated = library.where((s) => !s.liked && !s.blocked).toList()
        ..shuffle();

      final deck = <Song>[...unrated.take(10)];
      if (settings.useYouTubeSignals && deck.length < 20) {
        final shelves = await ai.buildHome(settings);
        for (final shelf in shelves) {
          for (final pick in shelf.picks) {
            if (deck.any((s) => s.id == pick.song.id)) continue;
            if (pick.song.liked || pick.song.blocked) continue;
            deck.add(pick.song);
            if (deck.length >= 20) break;
          }
          if (deck.length >= 20) break;
        }
      }
      if (!mounted) return;
      setState(() {
        _deck = deck;
        _loading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = '$e';
        _loading = false;
      });
    }
  }

  Future<void> _rate(bool like) async {
    // Two taps inside one frame would run past the end of the deck.
    if (_i >= _deck.length) return;
    final song = _deck[_i];
    final music = ref.read(musicProvider);
    setState(() {
      like ? _liked++ : _blocked++;
      _i++;
    });
    if (like) {
      await music.like(song, value: true);
    } else {
      await ref
          .read(aiProvider)
          .learnFromDislike(song, ref.read(settingsProvider));
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);

    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Training round')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (_error != null || _deck.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Training round')),
        body: EmptyState(
          icon: Icons.school_outlined,
          title: 'Nothing to rate yet',
          body: _error ??
              'Add some music or let the AI fetch candidates first, then '
                  'come back.',
        ),
      );
    }

    final done = _i >= _deck.length;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training round'),
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
            value: _i / _deck.length,
            minHeight: 3,
          ),
        ),
      ),
      body: done
          ? _Done(liked: _liked, blocked: _blocked, before: _before)
          : _buildDeck(t),
    );
  }

  Widget _buildDeck(ThemeData t) {
    final song = _deck[_i];
    final next = _i + 1 < _deck.length ? _deck[_i + 1] : null;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 6),
          child: Text(
            'Would you want this on your Home?',
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
                    label: 'More like this',
                    color: t.colorScheme.primary,
                  ),
                  secondaryBackground: _SwipeHint(
                    alignment: Alignment.centerRight,
                    icon: Icons.block_rounded,
                    label: 'Never again',
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
                onTap: () => setState(() => _i++),
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
