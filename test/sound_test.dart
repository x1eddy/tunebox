// ignore_for_file: experimental_member_use
import 'dart:math' as math;

import 'package:audio_session/audio_session.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/playback/output_watch.dart';
import 'package:tunebox/playback/sound_math.dart';
import 'package:tunebox/state/appearance.dart';
import 'package:tunebox/state/sound.dart';

void main() {
  group('loudness normalisation', () {
    test('turns loud songs down by exactly their excess', () {
      // 6 dB too loud -> half the amplitude
      expect(normalizationGain(6, LoudnessTarget.normal), closeTo(0.501, 0.002));
    });
    test('never turns anything up', () {
      expect(normalizationGain(-8, LoudnessTarget.normal), 1.0);
      expect(normalizationGain(null, LoudnessTarget.normal), 1.0);
      expect(normalizationGain(double.nan, LoudnessTarget.loud), 1.0);
    });
    test('the target shifts the reference', () {
      expect(normalizationGain(2, LoudnessTarget.loud), 1.0);
      expect(normalizationGain(2, LoudnessTarget.quiet), lessThan(0.6));
    });
    test('is floored so a broken value cannot mute a song', () {
      expect(normalizationGain(60, LoudnessTarget.normal), 0.2);
    });
  });

  group('crossfade', () {
    test('equal power: the energy stays constant', () {
      for (final x in [0.0, 0.25, 0.5, 0.75, 1.0]) {
        final (a, b) = crossfadeCurve(x);
        expect(a * a + b * b, closeTo(1, 1e-9));
      }
      expect(crossfadeCurve(0), (1.0, 0.0));
      final (outEnd, inEnd) = crossfadeCurve(1);
      expect(outEnd, closeTo(0, 1e-9));
      expect(inEnd, closeTo(1, 1e-9));
    });

    const minute3 = Duration(minutes: 3);
    test('starts only inside the last few seconds', () {
      bool at(int s) => shouldStartFade(
        position: Duration(seconds: s),
        duration: minute3,
        crossfade: const Duration(seconds: 6),
        hasNext: true,
        nextReady: true,
      );
      expect(at(170), isFalse);
      expect(at(174), isTrue);
      expect(at(179), isTrue);
    });
    test('never without a ready next song, or for short clips', () {
      expect(
        shouldStartFade(
          position: const Duration(seconds: 178),
          duration: minute3,
          crossfade: const Duration(seconds: 6),
          hasNext: true,
          nextReady: false,
        ),
        isFalse,
      );
      expect(
        shouldStartFade(
          position: const Duration(seconds: 20),
          duration: const Duration(seconds: 24),
          crossfade: const Duration(seconds: 6),
          hasNext: true,
          nextReady: true,
        ),
        isFalse,
      );
      expect(
        shouldStartFade(
          position: const Duration(seconds: 178),
          duration: minute3,
          crossfade: Duration.zero,
          hasNext: true,
          nextReady: true,
        ),
        isFalse,
      );
    });
    test('smart mode keeps an album seamless and halves short-song fades', () {
      const six = Duration(seconds: 6);
      expect(
        fadeLength(
          chosen: six,
          smart: true,
          fromAlbum: 'Discovery',
          toAlbum: 'Discovery',
          fromDuration: minute3,
        ),
        Duration.zero,
      );
      expect(
        fadeLength(
          chosen: six,
          smart: true,
          fromAlbum: 'A',
          toAlbum: 'B',
          fromDuration: const Duration(seconds: 90),
        ),
        const Duration(seconds: 3),
      );
      expect(
        fadeLength(
          chosen: six,
          smart: false,
          fromAlbum: 'Discovery',
          toAlbum: 'Discovery',
          fromDuration: minute3,
        ),
        six,
      );
    });
  });

  group('equaliser', () {
    test('reads presets exactly at their own bands', () {
      final bass = kEqPresets['Bass']!;
      for (var i = 0; i < kEqFrequencies.length; i++) {
        expect(gainAt(bass, kEqFrequencies[i]), closeTo(bass[i], 1e-9));
      }
    });
    test('interpolates on a log scale between bands', () {
      final p = [0.0, 10.0, 0.0, 0.0, 0.0];
      final mid = math.exp((math.log(60) + math.log(230)) / 2);
      expect(gainAt(p, mid), closeTo(5, 1e-6));
      expect(gainAt(p, 20), 0);
      expect(gainAt(p, 20000), 0);
    });
  });

  test('outputs are classified like Android routes them', () {
    expect(OutputWatch.classify({AudioDeviceType.builtInSpeaker}),
        AudioOutput.speaker);
    expect(
      OutputWatch.classify({
        AudioDeviceType.builtInSpeaker,
        AudioDeviceType.wiredHeadphones,
      }),
      AudioOutput.wired,
    );
    expect(
      OutputWatch.classify({
        AudioDeviceType.wiredHeadset,
        AudioDeviceType.bluetoothA2dp,
      }),
      AudioOutput.bluetooth,
    );
  });

  group('settings round trips', () {
    test('sound settings survive JSON, bad values are clamped', () {
      const s = SoundSettings(
        crossfadeSec: 7,
        eqEnabled: true,
        eqByOutput: {'bluetooth': 'Bass'},
        customPresets: {'Mine': [1, 2, 3, 4, 5]},
        boostDb: 4,
        speed: 1.25,
      );
      final back = SoundSettings.fromJson(s.toJson());
      expect(back.crossfadeSec, 7);
      expect(back.presetFor(AudioOutput.bluetooth), 'Bass');
      expect(back.presetFor(AudioOutput.speaker), 'Flat');
      expect(back.gainsFor('Mine'), [1, 2, 3, 4, 5]);
      expect(back.speed, 1.25);
      final wild = SoundSettings.fromJson({'xf': 99, 'boost': 50, 'speed': 9});
      expect(wild.crossfadeSec, 12);
      expect(wild.boostDb, 10);
      expect(wild.speed, 2);
    });

    test('theme codes round trip and reject junk', () {
      const look = Appearance(
        fonts: FontPair.editorial,
        corners: Corners.sharp,
        player: PlayerStyle.vinyl,
        preset: 'neon',
        tabs: [2, 0, 4],
      );
      final code = look.toCode();
      expect(code, startsWith('TBTHEME1:'));
      expect(Appearance.fromCode('look at this: $code  nice'), look);
      expect(Appearance.fromCode('TUNEBOX1:abc'), isNull);
      expect(Appearance.fromCode('TBTHEME1:!!!'), isNull);
    });

    test('a theme code can never hide Settings or leave one tab', () {
      expect(Appearance.fromJson({'tabs': [0, 1]}).tabs, [0, 1, 4]);
      expect(Appearance.fromJson({'tabs': [4]}).tabs, Appearance.kDefaultTabs);
      expect(Appearance.fromJson({'preset': 'nope'}).preset, '');
    });
  });
}
