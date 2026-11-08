import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../playback/output_watch.dart';
import '../playback/sound_math.dart';
import 'owner.dart' show logEvent;
import 'providers.dart';
import 'sound.dart';

/// The output in use right now (speaker, wired, Bluetooth).
final outputWatchProvider = Provider<OutputWatch>((ref) {
  final watch = OutputWatch();
  unawaited(watch.start());
  ref.onDispose(watch.dispose);
  return watch;
});

final currentOutputProvider = StreamProvider<AudioOutput>((ref) async* {
  final watch = ref.watch(outputWatchProvider);
  yield watch.current;
  yield* watch.changes;
});

/// Pushes the sound settings into the player whenever they, or the output,
/// change. Read once at startup.
final soundWiringProvider = Provider<void>((ref) {
  final handler = ref.read(audioHandlerProvider);

  Future<void> apply() async {
    final s = ref.read(soundProvider);
    final output =
        ref.read(currentOutputProvider).value ?? AudioOutput.speaker;
    handler
      ..crossfade = Duration(seconds: s.crossfadeSec)
      ..smartCrossfade = s.smartCrossfade
      ..normalize = s.normalize
      ..loudnessTarget = s.target;
    await handler.setSpeed(s.speed);
    await handler.setPitch(s.pitch);
    await handler.applyEq(
      enabled: s.eqEnabled,
      gains: s.gainsFor(s.presetFor(output)),
      boostDb: s.boostDb,
    );
    await handler.setMasterVolume(handler.masterVolume);
  }

  // Applies run one after another; while one runs, further changes just
  // ask for one more pass with the newest values (no overlapping, out of
  // order applies when a slider is dragged).
  var running = false, again = false;
  Future<void> applySafely() async {
    if (running) {
      again = true;
      return;
    }
    running = true;
    try {
      do {
        again = false;
        try {
          await apply();
        } catch (e) {
          logEvent('sound settings not applied — $e');
        }
      } while (again);
    } finally {
      running = false;
    }
  }

  ref.listen(soundProvider, (_, _) => unawaited(applySafely()));
  ref.listen(currentOutputProvider, (_, _) => unawaited(applySafely()));
  unawaited(applySafely());
});
