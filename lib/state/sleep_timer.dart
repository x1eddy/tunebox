import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensors_plus/sensors_plus.dart';

import 'providers.dart';

enum SleepMode { off, minutes, endOfSong, endOfQueue }

@immutable
class SleepState {
  const SleepState({this.mode = SleepMode.off, this.endsAt});
  final SleepMode mode;

  /// For [SleepMode.minutes].
  final DateTime? endsAt;

  bool get active => mode != SleepMode.off;

  Duration? get left {
    final end = endsAt;
    if (end == null) return null;
    final d = end.difference(DateTime.now());
    return d.isNegative ? Duration.zero : d;
  }
}

/// Stops the music after a while. The last 30 seconds fade out instead of
/// cutting off, and shaking the phone while it runs adds ten minutes.
class SleepTimerController extends Notifier<SleepState> {
  static const fade = Duration(seconds: 30);
  static const shakeBonus = Duration(minutes: 10);

  Timer? _tick;
  StreamSubscription<UserAccelerometerEvent>? _shake;
  DateTime _lastShake = DateTime.fromMillisecondsSinceEpoch(0);

  @override
  SleepState build() {
    ref.onDispose(_stopAll);
    return const SleepState();
  }

  void startMinutes(int minutes) {
    _begin(
      SleepState(
        mode: SleepMode.minutes,
        endsAt: DateTime.now().add(Duration(minutes: minutes)),
      ),
    );
  }

  void endOfSong() => _begin(const SleepState(mode: SleepMode.endOfSong));
  void endOfQueue() => _begin(const SleepState(mode: SleepMode.endOfQueue));

  void extend(Duration by) {
    final end = state.endsAt;
    if (state.mode != SleepMode.minutes || end == null) return;
    state = SleepState(mode: SleepMode.minutes, endsAt: end.add(by));
    unawaited(ref.read(audioHandlerProvider).setMasterVolume(1));
  }

  void cancel() {
    _stopAll();
    final handler = ref.read(audioHandlerProvider);
    handler
      ..pauseAfterCurrent = false
      ..stopAtQueueEnd = false
      ..onSleepDone = null;
    unawaited(handler.setMasterVolume(1));
    state = const SleepState();
  }

  void _begin(SleepState next) {
    cancel();
    state = next;
    final handler = ref.read(audioHandlerProvider);
    handler.onSleepDone = cancel;
    switch (next.mode) {
      case SleepMode.endOfSong:
        handler.pauseAfterCurrent = true;
      case SleepMode.endOfQueue:
        handler.stopAtQueueEnd = true;
      case SleepMode.minutes:
        _tick = Timer.periodic(const Duration(seconds: 1), (_) => _onTick());
        _listenForShake();
      case SleepMode.off:
        break;
    }
  }

  void _onTick() {
    final left = state.left;
    if (left == null) return;
    final handler = ref.read(audioHandlerProvider);
    if (left == Duration.zero) {
      unawaited(handler.pause());
      cancel();
      return;
    }
    if (left <= fade) {
      unawaited(
        handler.setMasterVolume(left.inMilliseconds / fade.inMilliseconds),
      );
    }
    // Rebuild listeners (the countdown on screen) once a second.
    state = SleepState(mode: state.mode, endsAt: state.endsAt);
  }

  void _listenForShake() {
    if (!Platform.isAndroid && !Platform.isIOS) return;
    try {
      _shake = userAccelerometerEventStream().listen((e) {
        final g = math.sqrt(e.x * e.x + e.y * e.y + e.z * e.z);
        final now = DateTime.now();
        if (g < 18 || now.difference(_lastShake).inSeconds < 3) return;
        _lastShake = now;
        HapticFeedback.heavyImpact();
        extend(shakeBonus);
      });
    } catch (_) {
      // no accelerometer
    }
  }

  void _stopAll() {
    _tick?.cancel();
    _tick = null;
    _shake?.cancel();
    _shake = null;
  }
}

final sleepTimerProvider = NotifierProvider<SleepTimerController, SleepState>(
  SleepTimerController.new,
);
