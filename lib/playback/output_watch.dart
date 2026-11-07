// AudioDeviceType is marked experimental in audio_session but has been
// stable for years; it is the only way to tell headphones from the speaker.
// ignore_for_file: experimental_member_use

import 'dart:async';
import 'dart:io';

import 'package:audio_session/audio_session.dart';

import 'sound_math.dart';

/// Which output the music goes to, as it changes. Phones only; on desktop it
/// is always [AudioOutput.speaker].
class OutputWatch {
  final _changes = StreamController<AudioOutput>.broadcast();
  AudioOutput current = AudioOutput.speaker;
  StreamSubscription<AudioDevicesChangedEvent>? _sub;

  Stream<AudioOutput> get changes => _changes.stream;

  Future<void> start() async {
    if (!Platform.isAndroid && !Platform.isIOS) return;
    try {
      final session = await AudioSession.instance;
      await _refresh(session);
      _sub = session.devicesChangedEventStream.listen(
        (_) => unawaited(_refresh(session)),
      );
    } catch (_) {
      // no device info on this platform; stay on "speaker"
    }
  }

  Future<void> _refresh(AudioSession session) async {
    final devices = await session.getDevices(includeInputs: false);
    final next = classify({for (final d in devices) d.type});
    if (next != current) {
      current = next;
      _changes.add(next);
    }
  }

  /// Bluetooth beats a cable beats the speaker: when both are connected,
  /// Android plays through the most recently attached, which is almost
  /// always the headphones.
  static AudioOutput classify(Set<AudioDeviceType> types) {
    if (types.contains(AudioDeviceType.bluetoothA2dp) ||
        types.contains(AudioDeviceType.bluetoothLe)) {
      return AudioOutput.bluetooth;
    }
    const wired = {
      AudioDeviceType.wiredHeadset,
      AudioDeviceType.wiredHeadphones,
      AudioDeviceType.usbAudio,
      AudioDeviceType.lineAnalog,
      AudioDeviceType.lineDigital,
    };
    if (types.any(wired.contains)) return AudioOutput.wired;
    return AudioOutput.speaker;
  }

  void dispose() {
    _sub?.cancel();
    _changes.close();
  }
}
