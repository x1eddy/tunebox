import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';

/// One reading of what is playing right now: 32 spectrum bands (low to
/// high, 0..1) and 64 waveform samples (-1..1).
class AudioFrame {
  const AudioFrame(this.bands, this.wave);
  final Float32List bands;
  final Float32List wave;
}

/// The real sound of the current song, from Android's audio-effect
/// Visualizer (see LiveVisualizer.kt). Other platforms have no such source.
class LiveAudio {
  LiveAudio._();
  static final instance = LiveAudio._();

  static bool get supported => Platform.isAndroid;

  static const _method = MethodChannel('com.brito.tunebox/visualizer');
  static const _events = EventChannel('com.brito.tunebox/visualizer/frames');

  Stream<AudioFrame>? _frames;

  Stream<AudioFrame> get frames => _frames ??= _events
      .receiveBroadcastStream()
      .where((e) => e is Map)
      .map((e) {
        final m = e as Map;
        return AudioFrame(
          _floats(m['b'], 32),
          _floats(m['w'], 64),
        );
      })
      .asBroadcastStream();

  static Float32List _floats(Object? v, int n) {
    if (v is Float32List) return v;
    if (v is List) return Float32List.fromList([for (final x in v) (x as num).toDouble()]);
    return Float32List(n);
  }

  /// True when the visualiser could attach to [session].
  Future<bool> start(int session) async {
    if (!supported) return false;
    try {
      return await _method.invokeMethod<bool>('start', {'session': session}) ?? false;
    } catch (_) {
      return false;
    }
  }

  Future<void> stop() async {
    if (!supported) return;
    try {
      await _method.invokeMethod<void>('stop');
    } catch (_) {}
  }
}
