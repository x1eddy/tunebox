import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../app/theme.dart';
import '../../l10n/app_localizations.dart';
import '../../playback/live_audio.dart';
import '../../state/appearance.dart';
import '../../ui/common.dart';
import '../../ui/kit/grouped.dart';
import '../home/home_page.dart' show shelfIcon, kShelfKinds, shelfName;

String playerStyleName(L l, PlayerStyle p) => switch (p) {
  PlayerStyle.classic => l.stClassic,
  PlayerStyle.vinyl => l.stVinyl,
  PlayerStyle.fullBleed => l.stFullBleed,
  PlayerStyle.minimal => l.stMinimal,
  PlayerStyle.cassette => l.stCassette,
};

String swipeName(L l, SwipeAction a) => switch (a) {
  SwipeAction.none => l.stNothing,
  SwipeAction.like => l.cLike,
  SwipeAction.queue => l.sheetPlayNext,
  SwipeAction.download => l.sheetDownload,
  SwipeAction.hide => l.sheetNotForMe,
};

/// Every visual choice in one place, applied live as you change it.
class StudioPage extends ConsumerWidget {
  const StudioPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);
    final look = ref.watch(appearanceProvider);
    final set = ref.read(appearanceProvider.notifier);
    void up(Appearance Function(Appearance) f) => set.update(f);

    final tabNames = [l.navHome, l.navExplore, l.navLibrary, l.navTaste, l.setTitle];
    final tabIcons = [
      Icons.home_rounded,
      Icons.travel_explore_rounded,
      Icons.library_music_rounded,
      Icons.auto_awesome_rounded,
      Icons.tune_rounded,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(l.stTitle),
        actions: [
          PopupMenuButton<String>(
            onSelected: (v) async {
              final messenger = ScaffoldMessenger.of(context);
              switch (v) {
                case 'copy':
                  await Clipboard.setData(ClipboardData(text: look.toCode()));
                  messenger.showTimed(SnackBar(content: Text(l.stCodeCopied)));
                case 'paste':
                  final data = await Clipboard.getData('text/plain');
                  final next = Appearance.fromCode(data?.text ?? '');
                  if (next == null) {
                    messenger.showTimed(SnackBar(content: Text(l.stCodeBad)));
                  } else {
                    set.replace(next);
                    messenger.showTimed(SnackBar(content: Text(l.stCodeApplied)));
                  }
                case 'reset':
                  set.replace(const Appearance());
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(value: 'copy', child: Text(l.stCopyCode)),
              PopupMenuItem(value: 'paste', child: Text(l.stPasteCode)),
              PopupMenuItem(value: 'reset', child: Text(l.stReset)),
            ],
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: groupSections(context, [
          // ------------------------------------------------------- themes
          SectionHeader(title: l.stThemes, icon: Icons.palette_outlined),
          SizedBox(
            height: 112,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              children: [
                _PresetCard(
                  label: l.stFollow,
                  colors: [t.colorScheme.primary, t.colorScheme.tertiary],
                  background: t.colorScheme.surface,
                  selected: look.preset.isEmpty,
                  onTap: () => up((a) => a.copyWith(preset: '')),
                ),
                for (final p in kThemePresets)
                  _PresetCard(
                    label: p.label,
                    colors: [
                      p.seed,
                      HSLColor.fromColor(p.seed)
                          .withHue((HSLColor.fromColor(p.seed).hue + 40) % 360)
                          .toColor(),
                    ],
                    background: p.background ?? Colors.black,
                    selected: look.preset == p.id,
                    onTap: () => up((a) => a.copyWith(preset: p.id)),
                  ),
              ],
            ),
          ),

          // --------------------------------------------------------- type
          SectionHeader(title: l.stType, icon: Icons.text_fields_rounded),
          SizedBox(
            height: 108,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              children: [
                for (final f in FontPair.values)
                  _Choice(
                    selected: look.fonts == f,
                    onTap: () => up((a) => a.copyWith(fonts: f)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Aa',
                          style: TextStyle(
                            fontFamily: f.display,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          f == FontPair.system ? l.stSystem : f.label,
                          style: t.textTheme.labelSmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          _Segments<Corners>(
            label: l.stCorners,
            value: look.corners,
            options: {
              Corners.sharp: l.stSharp,
              Corners.soft: l.stSoft,
              Corners.round: l.stRound,
            },
            onChanged: (v) => up((a) => a.copyWith(corners: v)),
          ),
          _Segments<Density>(
            label: l.stDensity,
            value: look.density,
            options: {Density.compact: l.stCompact, Density.comfy: l.stComfy},
            onChanged: (v) => up((a) => a.copyWith(density: v)),
          ),

          // ------------------------------------------------------- player
          SectionHeader(title: l.stPlayer, icon: Icons.album_outlined),
          SizedBox(
            height: 104,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              children: [
                for (final p in PlayerStyle.values)
                  _Choice(
                    selected: look.player == p,
                    onTap: () => up((a) => a.copyWith(player: p)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          switch (p) {
                            PlayerStyle.classic => Icons.crop_square_rounded,
                            PlayerStyle.vinyl => Icons.album_rounded,
                            PlayerStyle.fullBleed => Icons.fullscreen_rounded,
                            PlayerStyle.minimal => Icons.title_rounded,
                            PlayerStyle.cassette => Icons.radio_rounded,
                          },
                          size: 30,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          playerStyleName(l, p),
                          style: t.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 2),
            child: Text(l.stVisualizer),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 6),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final v in VisualizerStyle.values)
                  ChoiceChip(
                    selected: look.visualizer == v,
                    onSelected: (_) => up((a) => a.copyWith(visualizer: v)),
                    label: Text(switch (v) {
                      VisualizerStyle.bars => l.stBars,
                      VisualizerStyle.wave => l.stWave,
                      VisualizerStyle.mirror => l.stMirror,
                      VisualizerStyle.line => l.stLine2,
                      VisualizerStyle.dots => l.stDots,
                      VisualizerStyle.off => l.stOff,
                    }),
                  ),
              ],
            ),
          ),
          if (LiveAudio.supported)
            SwitchListTile(
              value: look.liveVisualizer,
              title: Text(l.stLive),
              subtitle: Text(l.stLiveSub),
              onChanged: (on) async {
                if (!on) {
                  up((a) => a.copyWith(liveVisualizer: false));
                  return;
                }
                final messenger = ScaffoldMessenger.of(context);
                final granted = await Permission.microphone.request();
                if (granted.isGranted) {
                  up((a) => a.copyWith(liveVisualizer: true));
                } else {
                  messenger.showTimed(SnackBar(content: Text(l.stLiveDenied)));
                }
              },
            ),
          _Segments<SeekStyle>(
            label: l.stSeek,
            value: look.seek,
            options: {
              SeekStyle.line: l.stLine,
              SeekStyle.wave: l.stWave,
              SeekStyle.thick: l.stThick,
            },
            onChanged: (v) => up((a) => a.copyWith(seek: v)),
          ),
          SwitchListTile(
            value: look.livingBackground,
            onChanged: (v) => up((a) => a.copyWith(livingBackground: v)),
            title: Text(l.stLiving),
            subtitle: Text(l.stLivingSub),
          ),
          SwitchListTile(
            value: look.doubleTapLike,
            onChanged: (v) => up((a) => a.copyWith(doubleTapLike: v)),
            title: Text(l.stDoubleTap),
          ),

          // ----------------------------------------------------------- nav
          SectionHeader(
            title: l.stTabs,
            subtitle: l.stTabsSub,
            icon: Icons.space_dashboard_outlined,
          ),
          ReorderableListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            buildDefaultDragHandles: false,
            onReorderItem: (from, to) {
              final all = [
                ...look.tabs,
                for (var b = 0; b < 5; b++)
                  if (!look.tabs.contains(b)) b,
              ];
              final item = all.removeAt(from);
              all.insert(to, item);
              up((a) => a.copyWith(
                    tabs: [for (final b in all) if (look.tabs.contains(b)) b],
                  ));
            },
            children: [
              for (final (i, b) in [
                ...look.tabs,
                for (var b = 0; b < 5; b++)
                  if (!look.tabs.contains(b)) b,
              ].indexed)
                ListTile(
                  key: ValueKey('tab$b'),
                  leading: Icon(tabIcons[b]),
                  title: Text(tabNames[b]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Switch(
                        value: look.tabs.contains(b),
                        // Settings stays reachable, and two tabs at least
                        onChanged: b == 4 ||
                                (look.tabs.contains(b) && look.tabs.length <= 2)
                            ? null
                            : (on) => up((a) => a.copyWith(
                                  // brackets matter: a bare `..remove` would
                                  // apply to both branches of the ?:
                                  tabs: on
                                      ? [...a.tabs, b]
                                      : ([...a.tabs]..remove(b)),
                                )),
                      ),
                      ReorderableDragStartListener(
                        index: i,
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.drag_handle_rounded),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          SwitchListTile(
            value: look.navLabels,
            onChanged: (v) => up((a) => a.copyWith(navLabels: v)),
            title: Text(l.stLabels),
          ),
          SwitchListTile(
            value: look.glassNav,
            onChanged: (v) => up((a) => a.copyWith(glassNav: v)),
            title: Text(l.stGlass),
          ),

          // -------------------------------------------------------- home
          SectionHeader(
            title: l.stHome,
            subtitle: l.stHomeSub,
            icon: Icons.view_agenda_outlined,
          ),
          _ShelfEditor(look: look, onChanged: set.replace),

          // ------------------------------------------------------ gestures
          SectionHeader(title: l.stGestures, icon: Icons.swipe_rounded),
          _SwipePicker(
            label: l.stSwipeRight,
            icon: Icons.east_rounded,
            value: look.swipeRight,
            onChanged: (v) => up((a) => a.copyWith(swipeRight: v)),
          ),
          _SwipePicker(
            label: l.stSwipeLeft,
            icon: Icons.west_rounded,
            value: look.swipeLeft,
            onChanged: (v) => up((a) => a.copyWith(swipeLeft: v)),
          ),
          SwitchListTile(
            value: look.shakeToSkip,
            onChanged: (v) => up((a) => a.copyWith(shakeToSkip: v)),
            title: Text(l.stShake),
            subtitle: Text(l.stShakeSub),
          ),

          // -------------------------------------------------------- share
          SectionHeader(title: l.stShareLook, icon: Icons.qr_code_2_rounded),
          ListTile(
            leading: const Icon(Icons.copy_rounded),
            title: Text(l.stCopyCode),
            subtitle: Text(l.stCodeSub),
            onTap: () async {
              await Clipboard.setData(ClipboardData(text: look.toCode()));
              if (context.mounted) {
                ScaffoldMessenger.of(context).showTimed(
                  SnackBar(content: Text(l.stCodeCopied)),
                );
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.content_paste_rounded),
            title: Text(l.stPasteCode),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              final data = await Clipboard.getData('text/plain');
              final next = Appearance.fromCode(data?.text ?? '');
              if (next == null) {
                messenger.showTimed(SnackBar(content: Text(l.stCodeBad)));
              } else {
                set.replace(next);
                messenger.showTimed(SnackBar(content: Text(l.stCodeApplied)));
              }
            },
          ),
        ]),
      ),
    );
  }
}

class _PresetCard extends StatelessWidget {
  const _PresetCard({
    required this.label,
    required this.colors,
    required this.background,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final List<Color> colors;
  final Color background;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Semantics(
        button: true,
        selected: selected,
        label: label,
        child: GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 84,
            decoration: BoxDecoration(
              color: background,
              borderRadius: R.card,
              border: Border.all(
                color: selected ? cs.primary : cs.outlineVariant,
                width: selected ? 3 : 1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (final c in colors)
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: c,
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: background.computeLuminance() > 0.5
                        ? Colors.black87
                        : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Choice extends StatelessWidget {
  const _Choice({
    required this.selected,
    required this.onTap,
    required this.child,
  });

  final bool selected;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Semantics(
        button: true,
        selected: selected,
        child: Material(
          color: selected
              ? cs.primary.withValues(alpha: 0.16)
              : cs.surfaceContainerHigh,
          shape: RoundedRectangleBorder(
            borderRadius: R.card,
            side: BorderSide(
              color: selected ? cs.primary : Colors.transparent,
              width: 2,
            ),
          ),
          child: InkWell(
            borderRadius: R.card,
            onTap: onTap,
            child: SizedBox(width: 92, child: child),
          ),
        ),
      ),
    );
  }
}

class _Segments<T> extends StatelessWidget {
  const _Segments({
    required this.label,
    required this.value,
    required this.options,
    required this.onChanged,
  });

  final String label;
  final T value;
  final Map<T, String> options;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    child: Row(
      children: [
        Expanded(child: Text(label)),
        SegmentedButton<T>(
          showSelectedIcon: false,
          style: const ButtonStyle(visualDensity: VisualDensity.compact),
          segments: [
            for (final e in options.entries)
              ButtonSegment(value: e.key, label: Text(e.value)),
          ],
          selected: {value},
          onSelectionChanged: (s) => onChanged(s.first),
        ),
      ],
    ),
  );
}

class _SwipePicker extends StatelessWidget {
  const _SwipePicker({
    required this.label,
    required this.icon,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final IconData icon;
  final SwipeAction value;
  final ValueChanged<SwipeAction> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      trailing: DropdownButton<SwipeAction>(
        value: value,
        underline: const SizedBox.shrink(),
        borderRadius: R.card,
        onChanged: (v) {
          if (v != null) onChanged(v);
        },
        items: [
          for (final a in SwipeAction.values)
            DropdownMenuItem(
              value: a,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (a != SwipeAction.none) ...[
                    Icon(swipeIcon(a), size: 18),
                    const SizedBox(width: 8),
                  ],
                  Text(swipeName(l, a)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

/// Drag Home's shelves into the order you like; switch off the ones you do
/// not want.
class _ShelfEditor extends StatelessWidget {
  const _ShelfEditor({required this.look, required this.onChanged});
  final Appearance look;
  final ValueChanged<Appearance> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final order = [
      ...look.shelfOrder.where(kShelfKinds.contains),
      ...kShelfKinds.where((k) => !look.shelfOrder.contains(k)),
    ];
    return ReorderableListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      buildDefaultDragHandles: false,
      onReorderItem: (from, to) {
        final next = [...order];
        next.insert(to, next.removeAt(from));
        onChanged(look.copyWith(shelfOrder: next));
      },
      children: [
        for (final (i, k) in order.indexed)
          ListTile(
            key: ValueKey('shelf$k'),
            leading: Icon(shelfIcon(k)),
            title: Text(shelfName(l, k)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Switch(
                  value: !look.hiddenShelves.contains(k),
                  onChanged: (on) => onChanged(
                    look.copyWith(
                      hiddenShelves: on
                          ? ([...look.hiddenShelves]..remove(k))
                          : [...look.hiddenShelves, k],
                    ),
                  ),
                ),
                ReorderableDragStartListener(
                  index: i,
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.drag_handle_rounded),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
