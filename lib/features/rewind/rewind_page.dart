import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../ai/rewind.dart';
import '../../l10n/app_localizations.dart';
import '../../state/rewind.dart';
import '../../state/settings.dart';
import '../../ui/artwork.dart';
import '../../ui/common.dart';
import '../../ui/kit/living_background.dart';

String periodLabel(L l, RewindPeriod p) => switch (p) {
  RewindPeriod.week => l.rwWeek,
  RewindPeriod.month => l.rwMonth,
  RewindPeriod.year => l.rwYear,
  RewindPeriod.all => l.rwAll,
};

(String, String) personalityText(L l, Personality p) => switch (p) {
  Personality.explorer => (l.rwExplorer, l.rwExplorerSub),
  Personality.loyalist => (l.rwLoyalist, l.rwLoyalistSub),
  Personality.collector => (l.rwCollector, l.rwCollectorSub),
  Personality.repeater => (l.rwRepeater, l.rwRepeaterSub),
  Personality.allRounder => (l.rwAllRounder, l.rwAllRounderSub),
};

/// Your listening as a short story you tap through. Any period, any time —
/// not once a year.
class RewindPage extends ConsumerStatefulWidget {
  const RewindPage({super.key});

  @override
  ConsumerState<RewindPage> createState() => _RewindPageState();
}

class _RewindPageState extends ConsumerState<RewindPage> {
  var _period = RewindPeriod.month;
  final _pages = PageController();
  final _capture = GlobalKey();
  int _page = 0;

  @override
  void dispose() {
    _pages.dispose();
    super.dispose();
  }

  void _go(int delta, int count) {
    final next = (_page + delta).clamp(0, count - 1);
    if (next == _page) return;
    _pages.animateToPage(
      next,
      duration: const Duration(milliseconds: 380),
      curve: Curves.easeOutCubic,
    );
  }

  Future<void> _share() async {
    final l = L.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final boundary =
        _capture.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) return;
    final image = await boundary.toImage(pixelRatio: 3);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    if (bytes == null) return;
    final stamp = DateTime.now().millisecondsSinceEpoch;
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      // No share sheet on the desktop: save it where pictures go.
      final home = Platform.environment['HOME'] ?? '.';
      final dir = Directory('$home/Pictures');
      if (!dir.existsSync()) dir.createSync(recursive: true);
      final file = File('${dir.path}/TuneBox-rewind-$stamp.png');
      await file.writeAsBytes(bytes.buffer.asUint8List());
      messenger.showTimed(SnackBar(content: Text(l.rwSaved(file.path))));
      return;
    }
    final tmp = await getTemporaryDirectory();
    final file = File('${tmp.path}/tunebox-rewind-$stamp.png');
    await file.writeAsBytes(bytes.buffer.asUint8List());
    await SharePlus.instance.share(
      ShareParams(files: [XFile(file.path)], text: l.rwShareText),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    final stats = ref.watch(rewindProvider(_period));
    final reduceMotion = ref.watch(
      settingsProvider.select((s) => s.reduceMotion),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(l.rwTitle),
        actions: [
          IconButton(
            tooltip: l.rwShare,
            onPressed: stats.value?.enough == true ? _share : null,
            icon: const Icon(Icons.ios_share_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                for (final p in RewindPeriod.values)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      selected: p == _period,
                      label: Text(periodLabel(l, p)),
                      onSelected: (_) => setState(() {
                        _period = p;
                        _page = 0;
                        if (_pages.hasClients) _pages.jumpToPage(0);
                      }),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: stats.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => EmptyState(
                icon: Icons.error_outline_rounded,
                title: l.rwTitle,
                body: '$e',
              ),
              data: (s) {
                if (!s.enough) {
                  return EmptyState(
                    icon: Icons.hourglass_empty_rounded,
                    title: l.rwNotYet,
                    body: l.rwNotYetBody,
                  );
                }
                final cards = _cards(context, s);
                return Padding(
                  padding: const EdgeInsets.fromLTRB(14, 6, 14, 16),
                  child: Column(
                    children: [
                      // story progress
                      Row(
                        children: [
                          for (var i = 0; i < cards.length; i++)
                            Expanded(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                height: 4,
                                margin: const EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(
                                  color: i <= _page
                                      ? t.colorScheme.primary
                                      : t.colorScheme.onSurface.withValues(
                                          alpha: 0.15,
                                        ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: RepaintBoundary(
                          key: _capture,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: LivingBackground(
                                    colors: _palette(t, _page),
                                    animate: !reduceMotion,
                                    intensity: 1.3,
                                  ),
                                ),
                                PageView(
                                  controller: _pages,
                                  onPageChanged: (p) =>
                                      setState(() => _page = p),
                                  children: [
                                    for (final c in cards)
                                      Padding(
                                        padding: const EdgeInsets.all(26),
                                        child: c,
                                      ),
                                  ],
                                ),
                                // tap left / right to step, like a story
                                Positioned.fill(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          behavior: HitTestBehavior.translucent,
                                          onTap: () => _go(-1, cards.length),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: GestureDetector(
                                          behavior: HitTestBehavior.translucent,
                                          onTap: () => _go(1, cards.length),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 18,
                                  bottom: 14,
                                  child: Text(
                                    'TuneBox · ${periodLabel(l, _period)}',
                                    style: t.textTheme.labelSmall?.copyWith(
                                      color: t.colorScheme.onSurface.withValues(
                                        alpha: 0.6,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// A different light for every card, all from the current accent.
  List<Color> _palette(ThemeData t, int page) {
    final base = HSLColor.fromColor(t.colorScheme.primary);
    final shift = page * 47.0;
    return [
      for (final d in [0.0, 60.0, 150.0])
        base.withHue((base.hue + shift + d) % 360).withSaturation(0.7).toColor(),
    ];
  }

  List<Widget> _cards(BuildContext context, RewindStats s) {
    final l = L.of(context);
    final (pName, pSub) = personalityText(l, s.personality);
    return [
      _BigNumber(
        overline: periodLabel(l, _period),
        number: '${s.minutes}',
        label: l.rwMinutes,
        footer: l.rwPlaysSongs(s.plays, s.distinctSongs),
      ),
      if (s.songs.isNotEmpty) _TopSong(s: s),
      if (s.artists.isNotEmpty)
        _TopList(
          title: l.rwTopArtists,
          rows: [
            for (final a in s.artists) (a.item, l.rwPlays(a.plays)),
          ],
        ),
      if (s.songs.length > 1)
        _TopList(
          title: l.rwTopSongs,
          rows: [
            for (final x in s.songs.take(5))
              (x.item.title, l.rwPlays(x.plays)),
          ],
        ),
      if (s.tags.isNotEmpty || s.decades.isNotEmpty)
        _TopList(
          title: l.rwSound,
          rows: [
            for (final x in s.tags.take(3)) (x.item, l.rwPlays(x.plays)),
            for (final x in s.decades.take(2)) (x.item, l.rwPlays(x.plays)),
          ],
        ),
      _Hours(s: s),
      _BigNumber(
        overline: l.rwStreak,
        number: '${s.longestStreak}',
        label: l.rwDaysInARow,
        footer: l.rwDiscovery((s.discovery * 100).round()),
      ),
      if (s.unskippable != null)
        _BigNumber(
          overline: l.rwUnskippable,
          number: '${s.unskippable!.plays}×',
          label: s.unskippable!.item.title,
          footer: l.rwNeverSkipped,
        ),
      _BigNumber(
        overline: l.rwYouAre,
        number: '',
        label: pName,
        footer: pSub,
      ),
    ];
  }
}

class _BigNumber extends StatelessWidget {
  const _BigNumber({
    required this.overline,
    required this.number,
    required this.label,
    required this.footer,
  });

  final String overline;
  final String number;
  final String label;
  final String footer;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          overline.toUpperCase(),
          style: t.textTheme.labelLarge?.copyWith(letterSpacing: 2),
        ),
        const SizedBox(height: 10),
        if (number.isNotEmpty)
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              number,
              style: t.textTheme.displayLarge?.copyWith(
                fontSize: 96,
                height: 1,
                letterSpacing: -4,
              ),
            ),
          ),
        Text(
          label,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: t.textTheme.headlineMedium,
        ),
        const SizedBox(height: 18),
        Text(footer, style: t.textTheme.bodyLarge),
      ],
    );
  }
}

class _TopSong extends StatelessWidget {
  const _TopSong({required this.s});
  final RewindStats s;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final l = L.of(context);
    final top = s.songs.first;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          l.rwTopSong.toUpperCase(),
          style: t.textTheme.labelLarge?.copyWith(letterSpacing: 2),
        ),
        const SizedBox(height: 16),
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: CoverArt(song: top.item, radius: BorderRadius.circular(20)),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          top.item.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: t.textTheme.headlineSmall,
        ),
        Text(top.item.artist, style: t.textTheme.bodyLarge),
        const SizedBox(height: 8),
        Text(
          l.rwPlaysMinutes(top.plays, top.minutes),
          style: t.textTheme.titleMedium,
        ),
      ],
    );
  }
}

class _TopList extends StatelessWidget {
  const _TopList({required this.title, required this.rows});
  final String title;
  final List<(String, String)> rows;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title.toUpperCase(),
          style: t.textTheme.labelLarge?.copyWith(letterSpacing: 2),
        ),
        const SizedBox(height: 18),
        for (var i = 0; i < rows.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                SizedBox(
                  width: 40,
                  child: Text(
                    '${i + 1}',
                    style: t.textTheme.headlineMedium?.copyWith(
                      color: t.colorScheme.primary,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    rows[i].$1,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: t.textTheme.titleLarge,
                  ),
                ),
                const SizedBox(width: 8),
                Text(rows[i].$2, style: t.textTheme.bodyMedium),
              ],
            ),
          ),
      ],
    );
  }
}

class _Hours extends StatelessWidget {
  const _Hours({required this.s});
  final RewindStats s;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final l = L.of(context);
    final peak = s.peakHour;
    final max = s.byHour.reduce((a, b) => a > b ? a : b).clamp(1, 1 << 30);
    final loc = MaterialLocalizations.of(context);
    final peakLabel = loc.formatTimeOfDay(
      TimeOfDay(hour: peak, minute: 0),
      alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          l.rwYourHour.toUpperCase(),
          style: t.textTheme.labelLarge?.copyWith(letterSpacing: 2),
        ),
        const SizedBox(height: 10),
        Text(peakLabel, style: t.textTheme.displayMedium),
        const SizedBox(height: 24),
        SizedBox(
          height: 140,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (var h = 0; h < 24; h++)
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1.5),
                    height: 6 + 134 * s.byHour[h] / max,
                    decoration: BoxDecoration(
                      color: h == peak
                          ? t.colorScheme.onSurface
                          : t.colorScheme.onSurface.withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(3),
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
            for (final h in ['0', '6', '12', '18', '23'])
              Text(h, style: t.textTheme.labelSmall),
          ],
        ),
      ],
    );
  }
}
