import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../playback/live_audio.dart';
import '../../l10n/app_localizations.dart';
import '../../state/appearance.dart';
import '../../state/settings.dart' show prefsProvider;
import '../../state/providers.dart';
import '../../ui/equalizer.dart';

/// Connects the visualiser to the real playback when the live visualiser
/// is on (Android, permission given), and lets go of it when the player
/// closes or the music stops.
class LiveVisualizerHost extends ConsumerStatefulWidget {
  const LiveVisualizerHost({
    super.key,
    required this.playing,
    required this.style,
    required this.live,
    required this.reduceMotion,
  });

  final bool playing;
  final VisualizerStyle style;
  final bool live;
  final bool reduceMotion;

  @override
  ConsumerState<LiveVisualizerHost> createState() => _LiveVisualizerHostState();
}

class _LiveVisualizerHostState extends ConsumerState<LiveVisualizerHost> {
  bool _attached = false;
  bool _starting = false;
  ValueNotifier<int?>? _session;

  bool get _wanted =>
      (widget.live || !LiveAudio.needsPermission) &&
      LiveAudio.supported &&
      widget.playing &&
      !widget.reduceMotion &&
      widget.style != VisualizerStyle.off;

  @override
  void initState() {
    super.initState();
    _session = ref.read(audioHandlerProvider).audioSession;
    _session!.addListener(_reattach);
    unawaited(_update());
  }

  @override
  void didUpdateWidget(LiveVisualizerHost old) {
    super.didUpdateWidget(old);
    unawaited(_update());
  }

  void _reattach() {
    // Linux follows our playback stream by itself; restarting here would
    // start it twice
    if (!LiveAudio.needsPermission) return;
    if (_attached) {
      _attached = false;
      unawaited(_update());
    }
  }

  Future<void> _update() async {
    if (!_wanted) {
      if (_attached) {
        _attached = false;
        await LiveAudio.instance.stop();
        if (mounted) setState(() {});
      }
      return;
    }
    if (_attached || _starting) return;
    _starting = true;
    try {
      await _attach();
    } finally {
      _starting = false;
    }
  }

  Future<void> _attach() async {
    final id = _session?.value;
    if (LiveAudio.needsPermission) {
      if (id == null) return;
      if (!await Permission.microphone.isGranted && !await _askOnce()) return;
    }
    final ok = await LiveAudio.instance.start(id);
    // closed or paused while starting: let go again
    if (!mounted || !_wanted) {
      if (ok) await LiveAudio.instance.stop();
      return;
    }
    setState(() => _attached = ok);
  }

  /// On by default, but Android needs the record-audio permission: the first
  /// time the player opens, say why in one sentence, then ask. A no is
  /// remembered (and switches it off); the Studio can turn it on later.
  Future<bool> _askOnce() async {
    final prefs = ref.read(prefsProvider);
    if (prefs.getBool('liveAsked') ?? false) return false;
    await prefs.setBool('liveAsked', true);
    if (!mounted) return false;
    final l = L.of(context);
    final go = await showDialog<bool>(
      context: context,
      builder: (c) => AlertDialog(
        icon: const Icon(Icons.graphic_eq_rounded),
        title: Text(l.stLive),
        content: Text(l.stLiveSub),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(c, false),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(c, true),
            child: Text(l.actionOk),
          ),
        ],
      ),
    );
    final granted =
        go == true && (await Permission.microphone.request()).isGranted;
    if (!granted && mounted) {
      ref
          .read(appearanceProvider.notifier)
          .update((a) => a.copyWith(liveVisualizer: false));
    }
    return granted && mounted;
  }

  @override
  void dispose() {
    _session?.removeListener(_reattach);
    if (_attached) unawaited(LiveAudio.instance.stop());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Visualizer(
    playing: widget.playing,
    style: widget.style,
    frames: _attached ? LiveAudio.instance.frames : null,
    height: 30,
    reduceMotion: widget.reduceMotion,
  );
}
