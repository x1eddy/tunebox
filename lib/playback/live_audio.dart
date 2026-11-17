import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';

import 'desktop_audio_tap.dart';

/// One reading of what is playing right now: 32 spectrum bands (low to
/// high, 0..1) and 64 waveform samples (-1..1).
class AudioFrame {
  const AudioFrame(this.bands, this.wave);
  final Float32List bands;
  final Float32List wave;
}

/// The real sound of the current song: on Android from the audio-effect
/// Visualizer (see LiveVisualizer.kt), on Linux from our own playback stream
/// (see DesktopAudioTap).
class LiveAudio {
  LiveAudio._();
  static final instance = LiveAudio._();

  static bool get supported => Platform.isAndroid || DesktopAudioTap.available;

  /// Android asks for the record-audio permission; Linux needs nothing, so
  /// there the visualiser always follows the music.
  static bool get needsPermission => Platform.isAndroid;

  static const _method = MethodChannel('com.brito.tunebox/visualizer');
  static const _events = EventChannel('com.brito.tunebox/visualizer/frames');

  Stream<AudioFrame>? _frames;

  Stream<AudioFrame> get frames => Platform.isLinux
      ? DesktopAudioTap.instance.frames
      : _frames ??= _events.receiveBroadcastStream().where((e) => e is Map).map(
          (e) {
            final m = e as Map;
            return AudioFrame(_floats(m['b'], 32), _floats(m['w'], 64));
          },
        ).asBroadcastStream();

  static Float32List _floats(Object? v, int n) {
    if (v is Float32List) return v;
    if (v is List) {
      return Float32List.fromList([for (final x in v) (x as num).toDouble()]);
    }
    return Float32List(n);
  }

  /// True when the visualiser could attach to [session].
  Future<bool> start(int? session) async {
    if (!supported) return false;
    if (Platform.isLinux) {
      DesktopAudioTap.instance.start();
      return true;
    }
    if (session == null) return false;
    try {
      return await _method.invokeMethod<bool>('start', {'session': session}) ??
          false;
    } catch (_) {
      return false;
    }
  }

  Future<void> stop() async {
    if (!supported) return;
    if (Platform.isLinux) return DesktopAudioTap.instance.stop();
    try {
      await _method.invokeMethod<void>('stop');
    } catch (_) {}
  }
}
