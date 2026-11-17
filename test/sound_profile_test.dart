import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunebox/ai/ai_engine.dart';
import 'package:tunebox/ai/sound_profile.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/artwork_service.dart';
import 'package:tunebox/data/services/download_service.dart';
import 'package:tunebox/data/services/yt_service.dart';
import 'package:tunebox/playback/audio_handler.dart';
import 'package:tunebox/state/settings.dart';

const fastHeavy = SoundProfile(
  tempo: 128,
  energy: 0.8,
  tone: 0.5,
  bass: 0.75,
  punch: 0.8,
);
const slowSoft = SoundProfile(
  tempo: 72,
  energy: 0.2,
  tone: 0.3,
  bass: 0.2,
  punch: 0.15,
);

SongsCompanion song(String id, String artist, {SoundProfile? sound, int ms = 200000}) =>
    SongsCompanion.insert(
      id: id,
      title: 'Song $id',
      source: SongSource.youtube,
      artist: Value(artist),
      durationMs: Value(ms),
      inLibrary: const Value(true),
      sound: Value(sound?.encode()),
    );

void main() {
  test('a sound survives being stored, and listens average out', () {
    final back = SoundProfile.parse(fastHeavy.encode())!;
    expect(back.tempo, 128);
    expect(back.energy, closeTo(0.8, 0.005));
    final both = back.merge(slowSoft);
    expect(both.n, 2);
    expect(both.tempo, 100);
    expect(both.energy, closeTo(0.5, 0.005));
    expect(SoundProfile.parse('garbage'), isNull);
    expect(SoundProfile.parse(null), isNull);
  });

  test('descriptors name the stand-out traits only', () {
    expect(fastHeavy.descriptors(), [
      'tempo:fast',
      'energy:high',
      'tone:balanced',
      'bass:heavy',
      'beat:punchy',
    ]);
    expect(slowSoft.descriptors(), [
      'tempo:slow',
      'energy:low',
      'tone:dark',
      'bass:light',
      'beat:soft',
    ]);
    expect(lengthDescriptor(120000), 'length:short');
    expect(lengthDescriptor(240000), 'length:mid');
    expect(lengthDescriptor(420000), 'length:long');
    expect(lengthDescriptor(0), isNull);
  });

  group('the AI learns sound', () {
    late AppDatabase db;
    late AiEngine ai;
    late Settings settings;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      db = AppDatabase(NativeDatabase.memory());
      final yt = YtService();
      ai = AiEngine(
        db: db,
        yt: yt,
        downloads: DownloadService(db, yt, ArtworkService()),
        prefs: prefs,
      );
      settings = const Settings(useYouTubeSignals: false, downloadLikes: false);
      artistSounds.clear();
    });

    tearDown(() => db.close());

    test('loving fast heavy songs lifts an unknown fast heavy song', () async {
      // three different artists, so it is the sound that is learned, not them
      for (final (id, artist) in [('a', 'A'), ('b', 'B'), ('c', 'C')]) {
        await db.upsertSong(song(id, artist, sound: fastHeavy));
        await ai.learnFromListen(
          ListenReport(
            songId: id,
            playedMs: 200000,
            durationMs: 200000,
            skipped: false,
            origin: 'test',
          ),
          settings,
        );
      }
      await db.upsertSong(song('x', 'New One', sound: fastHeavy));
      await db.upsertSong(song('y', 'Other One', sound: slowSoft));
      final w = await ai.weights();
      final fresh = await db.songsByIds(['x', 'y']);
      expect(
        ai.scoreSong(fresh[0], w, settings, const {}),
        greaterThan(ai.scoreSong(fresh[1], w, settings, const {})),
      );
    });

    test('a song not heard yet borrows its artist\'s sound', () async {
      await db.upsertSong(song('a', 'Loud Band', sound: fastHeavy));
      await db.upsertSong(song('b', 'Loud Band'));
      await ai.refreshArtistSounds();
      final b = (await db.songById('b'))!;
      expect(soundDescriptorsOf(b), contains('tempo:fast'));
      expect(soundDescriptorsOf(b), contains('length:mid'));
    });

    test('a listen is folded into the stored sound', () async {
      await db.upsertSong(song('a', 'A', sound: fastHeavy));
      await ai.rememberSound('a', slowSoft);
      final stored = SoundProfile.parse((await db.songById('a'))!.sound)!;
      expect(stored.n, 2);
      expect(stored.tempo, 100);
    });
  });
}
