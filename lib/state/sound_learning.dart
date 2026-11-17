import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../playback/live_audio.dart';
import '../playback/sound_analyzer.dart';
import 'providers.dart';

/// Measures what each song sounds like while it plays (tempo, energy, tone,
/// bass, punch) and hands every finished listen to the AI.
///
/// The audio comes from the same source as the live visualiser: on Linux
/// TuneBox's own playback stream, read whenever music plays; on Android the
/// audio-effect Visualizer, which only runs with the permission and while
/// the player is open, so phones learn sound more slowly.
final soundLearningProvider = Provider<void>((ref) {
  final handler = ref.watch(audioHandlerProvider);
  final analyzer = SoundAnalyzer();
  final clock = Stopwatch();
  String? songId;
  var playing = false;
  var tapOn = false;

  void flush() {
    final id = songId;
    final heard = analyzer.result();
    final raw = analyzer.lastRaw;
    analyzer.reset();
    analyzer.lastRaw = raw;
    if (id == null || heard == null) return;
    if (kDebugMode) debugPrint('sound $id: ${heard.encode()} (${analyzer.lastRaw})');
    // read at flush time: after a profile switch this is the new profile's
    // engine, which simply doesn't know the old song and skips it
    unawaited(ref.read(aiProvider).rememberSound(id, heard));
  }

  void setTap(bool on) {
    // Linux only: reading our own stream needs no permission
    if (!Platform.isLinux || on == tapOn) return;
    tapOn = on;
    if (on) {
      unawaited(LiveAudio.instance.start(null));
    } else {
      unawaited(LiveAudio.instance.stop());
    }
  }

  final subs = <StreamSubscription<Object?>>[
    handler.songChanges.listen((song) {
      if (song?.id == songId) return;
      flush();
      songId = song?.id;
      clock
        ..reset()
        ..start();
    }),
    handler.playbackState.listen((state) {
      playing = state.playing;
      if (playing) {
        clock.start();
      } else {
        clock.stop();
      }
      setTap(playing);
    }),
    if (LiveAudio.supported)
      LiveAudio.instance.frames.listen((frame) {
        if (playing && songId != null) analyzer.add(frame, clock.elapsed);
      }),
  ];

  ref.onDispose(() {
    flush();
    for (final s in subs) {
      unawaited(s.cancel());
    }
    setTap(false);
  });
});
