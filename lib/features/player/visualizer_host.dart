import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../playback/live_audio.dart';
import '../../state/appearance.dart';
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
  ValueNotifier<int?>? _session;

  bool get _wanted =>
      widget.live &&
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
    if (_attached) return;
    final id = _session?.value;
    if (id == null) return;
    if (!await Permission.microphone.isGranted) return;
    final ok = await LiveAudio.instance.start(id);
    if (mounted) setState(() => _attached = ok);
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
