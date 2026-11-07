import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/db/database.dart';
import '../../data/services/lyrics_service.dart';
import '../../l10n/app_localizations.dart';
import '../../state/lyrics.dart';
import '../../state/providers.dart';

/// Karaoke-style lyrics: the line being sung is big and bright, the rest
/// step back, and the page follows the song. Tap a line to jump there.
class LyricsView extends ConsumerWidget {
  const LyricsView({super.key, required this.song, this.onSeek});

  final Song song;
  final ValueChanged<Duration>? onSeek;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    final t = Theme.of(context);
    final async = ref.watch(lyricsProvider(song));

    Widget message(IconData icon, String text, {bool retry = false}) => Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: t.colorScheme.onSurfaceVariant),
            const SizedBox(height: 12),
            Text(
              text,
              textAlign: TextAlign.center,
              style: t.textTheme.bodyLarge?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
            if (retry)
              TextButton(
                onPressed: () => ref.invalidate(lyricsProvider(song)),
                child: Text(l.lyrRetry),
              ),
          ],
        ),
      ),
    );

    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, _) => message(Icons.cloud_off_rounded, l.lyrOffline, retry: true),
      data: (lyrics) {
        if (lyrics.isEmpty) {
          return message(Icons.lyrics_outlined, l.playerNoLyrics);
        }
        if (!lyrics.synced) {
          return _Plain(text: lyrics.plain!, credit: lyrics.source == 'lrclib');
        }
        return _Synced(lyrics: lyrics, onSeek: onSeek);
      },
    );
  }
}

class _Credit extends StatelessWidget {
  const _Credit();

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 24, 28, 40),
      child: Text(
        L.of(context).lyrCredit,
        style: t.textTheme.labelSmall?.copyWith(
          color: t.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

class _Plain extends StatelessWidget {
  const _Plain({required this.text, required this.credit});
  final String text;
  final bool credit;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return ShaderMask(
      shaderCallback: _fadeEdges,
      blendMode: BlendMode.dstIn,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(28, 24, 28, 0),
        children: [
          Text(
            text,
            style: t.textTheme.titleLarge?.copyWith(height: 1.5),
          ),
          if (credit) const _Credit(),
        ],
      ),
    );
  }
}

Shader _fadeEdges(Rect r) => const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Colors.transparent, Colors.black, Colors.black, Colors.transparent],
  stops: [0, 0.08, 0.88, 1],
).createShader(r);

class _Synced extends ConsumerStatefulWidget {
  const _Synced({required this.lyrics, this.onSeek});
  final Lyrics lyrics;
  final ValueChanged<Duration>? onSeek;

  @override
  ConsumerState<_Synced> createState() => _SyncedState();
}

class _SyncedState extends ConsumerState<_Synced> {
  final _scroll = ScrollController();
  late List<GlobalKey> _keys = _makeKeys();
  int _current = -2;

  /// After the user scrolls by hand, the view stays put for a moment.
  DateTime _userUntil = DateTime.fromMillisecondsSinceEpoch(0);

  List<GlobalKey> _makeKeys() => [
    for (var i = 0; i < widget.lyrics.lines.length; i++) GlobalKey(),
  ];

  @override
  void didUpdateWidget(_Synced old) {
    super.didUpdateWidget(old);
    if (old.lyrics != widget.lyrics) {
      _keys = _makeKeys();
      _current = -2;
    }
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _follow(int index) {
    if (index < 0 || DateTime.now().isBefore(_userUntil)) return;
    final ctx = _keys[index].currentContext;
    if (ctx == null) return;
    unawaited(
      Scrollable.ensureVisible(
        ctx,
        alignment: 0.32,
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeOutCubic,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final position = ref.watch(positionProvider).value ?? Duration.zero;
    // Show a line a touch early: reading lags hearing.
    final index = widget.lyrics.lineAt(
      position + const Duration(milliseconds: 250),
    );
    if (index != _current) {
      _current = index;
      WidgetsBinding.instance.addPostFrameCallback((_) => _follow(index));
    }
    final lines = widget.lyrics.lines;
    final base = t.textTheme.headlineSmall!;

    return NotificationListener<UserScrollNotification>(
      onNotification: (_) {
        _userUntil = DateTime.now().add(const Duration(seconds: 4));
        return false;
      },
      child: ShaderMask(
        shaderCallback: _fadeEdges,
        blendMode: BlendMode.dstIn,
        child: SingleChildScrollView(
          controller: _scroll,
          padding: const EdgeInsets.fromLTRB(24, 120, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < lines.length; i++)
                KeyedSubtree(
                  key: _keys[i],
                  child: _Line(
                    text: lines[i].text,
                    state: i == index
                        ? _LineState.now
                        : i < index
                        ? _LineState.past
                        : _LineState.next,
                    style: base,
                    onTap: widget.onSeek == null
                        ? null
                        : () {
                            _userUntil = DateTime.fromMillisecondsSinceEpoch(0);
                            widget.onSeek!(lines[i].time);
                          },
                  ),
                ),
              if (widget.lyrics.source == 'lrclib') const _Credit(),
              const SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}

enum _LineState { past, now, next }

class _Line extends StatelessWidget {
  const _Line({
    required this.text,
    required this.state,
    required this.style,
    this.onTap,
  });

  final String text;
  final _LineState state;
  final TextStyle style;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final now = state == _LineState.now;
    // an empty LRC line is a breath in the song: show a quiet note
    final shown = text.isEmpty ? '♪' : text;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          style: style.copyWith(
            fontSize: (style.fontSize ?? 24) * (now ? 1.18 : 1.0),
            height: 1.25,
            color: now
                ? cs.onSurface
                : cs.onSurface.withValues(
                    alpha: state == _LineState.past ? 0.28 : 0.45,
                  ),
            shadows: now
                ? [Shadow(color: cs.primary.withValues(alpha: 0.6), blurRadius: 18)]
                : const [],
          ),
          child: Text(shown),
        ),
      ),
    );
  }
}
