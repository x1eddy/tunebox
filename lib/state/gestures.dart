import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensors_plus/sensors_plus.dart';

import 'appearance.dart';
import 'providers.dart';
import 'sleep_timer.dart';

/// "Shake to skip", when switched on in the studio. Only listens to the
/// accelerometer while music is playing, and stands aside while a sleep
/// timer runs (there a shake means "ten more minutes").
final shakeToSkipProvider = Provider<void>((ref) {
  if (!Platform.isAndroid && !Platform.isIOS) return;
  StreamSubscription<UserAccelerometerEvent>? sub;
  var last = DateTime.fromMillisecondsSinceEpoch(0);

  void sync() {
    final on = ref.read(appearanceProvider).shakeToSkip;
    final playing = ref.read(playbackStateProvider).value?.playing ?? false;
    if (on && playing && sub == null) {
      sub = userAccelerometerEventStream().listen((e) {
        final g = math.sqrt(e.x * e.x + e.y * e.y + e.z * e.z);
        final now = DateTime.now();
        if (g < 22 || now.difference(last).inMilliseconds < 1500) return;
        if (ref.read(sleepTimerProvider).mode == SleepMode.minutes) return;
        last = now;
        HapticFeedback.mediumImpact();
        unawaited(ref.read(musicProvider).next());
      }, onError: (_) {});
    } else if ((!on || !playing) && sub != null) {
      unawaited(sub!.cancel());
      sub = null;
    }
  }

  ref.listen(appearanceProvider.select((a) => a.shakeToSkip), (_, _) => sync());
  ref.listen(
    playbackStateProvider.select((s) => s.value?.playing ?? false),
    (_, _) => sync(),
  );
  ref.onDispose(() => sub?.cancel());
  sync();
});
