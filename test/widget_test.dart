import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunebox/ai/ai_engine.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/import_service.dart';
import 'package:tunebox/data/services/innertube.dart';
import 'package:tunebox/data/services/artwork_service.dart';
import 'package:tunebox/data/services/backup_service.dart';
import 'package:tunebox/data/services/download_service.dart';
import 'package:tunebox/data/services/yt_service.dart';
import 'package:tunebox/playback/audio_handler.dart';
import 'package:tunebox/state/settings.dart';

AppDatabase _memoryDb() => AppDatabase(NativeDatabase.memory());

SongsCompanion _song(
  String id, {
  String artist = 'Cold Atlas',
  String tags = 'synthwave,night',
  int year = 2026,
  SongSource source = SongSource.youtube,
}) => SongsCompanion.insert(
  id: id,
  title: 'Song $id',
  source: source,
  artist: Value(artist),
  tags: Value(tags),
  year: Value(year),
  inLibrary: const Value(true),
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('title parsing', () {
    test('splits artist and title, drops noise', () {
      final (artist, title) = splitTitle(
        'Cold Atlas - Sodium Lights (Official Video)',
        'Cold Atlas - Topic',
      );
      expect(artist, 'Cold Atlas');
      expect(title, 'Sodium Lights');
    });

    test('falls back to the channel name', () {
      final (artist, title) = splitTitle('Sodium Lights', 'Cold Atlas');
      expect(artist, 'Cold Atlas');
      expect(title, 'Sodium Lights');
    });

    test('reads artist and title out of a file name', () {
      final (artist, title) = splitFileName('04 - Cold Atlas - Sodium Lights');
      expect(artist, 'Cold Atlas');
      expect(title, 'Sodium Lights');
    });
  });

  group('AiEngine', () {
    late AppDatabase db;
    late AiEngine ai;
    late Settings settings;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      db = _memoryDb();
      final yt = YtService();
      ai = AiEngine(
        db: db,
        yt: yt,
        downloads: DownloadService(db, yt, ArtworkService()),
        prefs: prefs,
      );
      // No network and no disk writes during tests.
      settings = const Settings(
        useYouTubeSignals: false,
        downloadLikes: false,
      );
    });

    tearDown(() => db.close());

    test('a finished play outscores an untouched song', () async {
      await db.upsertSong(_song('a'));
      await db.upsertSong(_song('b', artist: 'Other', tags: 'polka'));

      final a = (await db.songById('a'))!;
      await ai.learnFromListen(
        ListenReport(
          songId: a.id,
          playedMs: 200000,
          durationMs: 200000,
          skipped: false,
          origin: 'test',
        ),
        settings,
      );

      final w = await ai.weights();
      final fresh = await db.songsByIds(['a', 'b']);
      final scoreA = ai.scoreSong(fresh[0], w, settings, const {});
      final scoreB = ai.scoreSong(fresh[1], w, settings, const {});
      expect(scoreA, greaterThan(scoreB));
    });

    test('a skip pushes the same descriptors down', () async {
      await db.upsertSong(_song('a'));
      final a = (await db.songById('a'))!;
      await ai.learnFromListen(
        ListenReport(
          songId: a.id,
          playedMs: 4000,
          durationMs: 200000,
          skipped: true,
          origin: 'test',
        ),
        settings,
      );
      final w = await ai.weights();
      expect(w['tag:synthwave'], lessThan(0));
      expect(w['artist:cold atlas'], lessThan(0));
    });

    test('a blocked artist is never recommended', () async {
      await db.upsertSong(_song('a'));
      final a = (await db.songById('a'))!;
      final score = ai.scoreSong(
        a,
        const {},
        settings,
        const {'cold atlas': -1},
      );
      expect(score, double.negativeInfinity);
    });

    test('old liked songs land in "Old forgotten hits"', () async {
      // Three of them: a one-card shelf is suppressed by design.
      for (final id in ['old', 'old2', 'old3']) {
        await db.upsertSong(_song(id, artist: 'Artist $id'));
        await db.setLiked(id, true);
      }
      await db.customStatement(
        'UPDATE songs SET last_played = ?, play_count = 9',
        [DateTime.now().subtract(const Duration(days: 400)).millisecondsSinceEpoch ~/ 1000],
      );

      final shelves = await ai.buildHome(settings);
      final forgotten = shelves.where((s) => s.id == 'forgotten');
      expect(forgotten, isNotEmpty);
      expect(
        forgotten.first.picks.map((p) => p.song.id),
        containsAll(<String>['old', 'old2', 'old3']),
      );
      // The reason is structured so the UI can say it in any language.
      final reason = forgotten.first.picks.first.reason!;
      expect(reason.kind, ReasonKind.likedLast);
      expect(reason.ago, greaterThan(0));
    });

    test('liking a song stores it and teaches the model', () async {
      await db.upsertSong(_song('a'));
      final a = (await db.songById('a'))!;
      await ai.learnFromLike(a, true, settings);

      expect((await db.songById('a'))!.liked, isTrue);
      final w = await ai.weights();
      expect(w['artist:cold atlas'], greaterThan(0));
    });

    test('disliking blocks a song and keeps it out of the shelves', () async {
      await db.upsertSong(_song('a'));
      await db.upsertSong(_song('b', artist: 'Other', tags: 'polka'));
      final a = (await db.songById('a'))!;

      await ai.learnFromDislike(a, settings);

      final blocked = (await db.songById('a'))!;
      expect(blocked.blocked, isTrue);
      expect(blocked.liked, isFalse);
      expect(
        ai.scoreSong(blocked, await ai.weights(), settings, const {}),
        double.negativeInfinity,
      );

      for (final shelf in await ai.buildHome(settings)) {
        expect(
          shelf.picks.any((p) => p.song.id == 'a'),
          isFalse,
          reason: 'blocked song came back in "${shelf.id}"',
        );
      }

      // …and it can be let back in.
      await db.setBlocked('a', false);
      expect((await db.songById('a'))!.blocked, isFalse);
    });

    test('shelves never repeat the same song', () async {
      // Twelve songs across four artists — the shape that used to produce
      // three identical rows.
      for (var i = 0; i < 12; i++) {
        await db.upsertSong(
          _song('s$i', artist: 'Artist ${i % 4}', tags: 'pop,indie'),
        );
      }
      final songs = await db.library();
      for (final song in songs.take(6)) {
        await ai.learnFromListen(
          ListenReport(
            songId: song.id,
            playedMs: 200000,
            durationMs: 200000,
            skipped: false,
            origin: 'test',
          ),
          settings,
        );
      }

      final shelves = await ai.buildHome(settings);
      expect(shelves, isNotEmpty);

      final seen = <String, String>{};
      for (final shelf in shelves) {
        for (final pick in shelf.picks) {
          final already = seen[pick.song.id];
          expect(
            already,
            isNull,
            reason: '"${pick.song.title}" is in both "$already" '
                'and "${shelf.id}"',
          );
          seen[pick.song.id] = shelf.id;
        }
        expect(shelf.picks.length, greaterThanOrEqualTo(4));
      }
    });

    test('forgetting clears history but keeps the library', () async {
      await db.upsertSong(_song('a'));
      final a = (await db.songById('a'))!;
      await ai.learnFromListen(
        ListenReport(
          songId: a.id,
          playedMs: 200000,
          durationMs: 200000,
          skipped: false,
          origin: 'test',
        ),
        settings,
      );
      await ai.forget();

      expect(await ai.weights(), isEmpty);
      expect(await db.eventCount(), 0);
      expect((await db.library()).length, 1);
    });
  });

  group('song filter', () {
    test('keeps real songs', () {
      expect(looksLikeASong('Bohemian Rhapsody', 6 * 60 * 1000), isTrue);
      expect(looksLikeASong('Get Lucky', 4 * 60 * 1000 + 9000), isTrue);
      // Unknown length is fine — plenty of search hits have none.
      expect(looksLikeASong('Sodium Lights', 0), isTrue);
    });

    test('drops mixes, albums and hour-long loops', () {
      expect(looksLikeASong('Daft Punk Greatest Hits', 70 * 60 * 1000), isFalse);
      expect(looksLikeASong('Instant Crush perfect loop 1 hour', 0), isFalse);
      expect(looksLikeASong('Top Songs 2026 Playlist', 5 * 60 * 1000), isFalse);
      expect(looksLikeASong('Lofi mix 2026', 3 * 60 * 60 * 1000), isFalse);
      expect(looksLikeASong('some jingle', 8000), isFalse);
    });

    test('drops sports, gaming and talk content', () {
      // Everything here came back from a real music search on YouTube.
      expect(
        looksLikeASong(
          'I Survived 100 Days on 1 Block',
          42 * 60 * 1000 + 44000,
          artist: 'Karl',
          strict: true,
        ),
        isFalse,
      );
      expect(
        looksLikeASong(
          '[Live in HD] ONE Friday Fights 171: Klarob vs. Sornsueknoi',
          3 * 60 * 60 * 1000,
          artist: 'ONE Championship',
          strict: true,
        ),
        isFalse,
      );
      expect(
        looksLikeASong(
          'NCAA SEASON 102 MEN\'S BASKETBALL',
          2 * 60 * 60 * 1000,
          artist: 'LIVE: PERPETUAL vs SAN SEBASTIAN',
          strict: true,
        ),
        isFalse,
      );
      // Short enough to pass on length alone — the words are what give it away.
      expect(
        looksLikeASong(
          'ONE Bantamweight Muay Thai World Title Preview',
          9 * 60 * 1000 + 24000,
          artist: 'Rambolek vs. Yod-IQ',
          strict: true,
        ),
        isFalse,
      );
      expect(
        looksLikeASong(
          'Tamil Talkies',
          3 * 60 * 1000 + 7000,
          artist: 'ONE MAN Review',
          strict: true,
        ),
        isFalse,
      );
    });

    test('YouTube Music results are not second-guessed', () {
      // music.youtube.com only indexes music, so a song may say "vs".
      expect(
        looksLikeASong(
          'Squid Game vs. MrBeast',
          227 * 1000,
          artist: 'Freshy Kanal',
        ),
        isTrue,
      );
      expect(looksLikeASong('Fight Song', 204 * 1000, artist: 'Rachel Platten'),
          isTrue);
    });
  });

  group('music metadata', () {
    test('a play count is never mistaken for an album', () {
      expect(VideoItem.isStat('258M views'), isTrue);
      expect(VideoItem.isStat('1.2B plays'), isTrue);
      expect(VideoItem.isStat('30K views'), isTrue);
      expect(VideoItem.isStat('599K likes'), isTrue);
      expect(VideoItem.isStat('3.2M likes'), isTrue);
      expect(VideoItem.isStat('Ride The Lightning'), isFalse);
      expect(VideoItem.isStat('1984'), isFalse);
    });

    test('a year is read as a year, not an album', () {
      expect(VideoItem.yearOf('1984'), 1984);
      expect(VideoItem.yearOf('2026'), 2026);
      expect(VideoItem.yearOf('Discovery'), isNull);
      expect(VideoItem.yearOf('3:45'), isNull);
    });

    test('durations parse in both shapes', () {
      expect(VideoItem.isDuration('3:45'), isTrue);
      expect(VideoItem.isDuration('1:02:11'), isTrue);
      expect(VideoItem.isDuration('2001'), isFalse);
    });
  });

  group('data safety', () {
    test('deleting a song takes its playlist entries with it', () async {
      final db = _memoryDb();
      await db.upsertSong(_song('a'));
      await db.createPlaylist('p1', 'Mix');
      await db.addToPlaylist('p1', 'a');
      expect((await db.watchPlaylistSongs('p1').first).length, 1);

      await db.deleteSong('a');
      await db.upsertSong(_song('a'));
      // The entry must be gone, not resurrected by re-adding the song.
      expect(await db.watchPlaylistSongs('p1').first, isEmpty);
      await db.close();
    });

    test('an unmounted card does not wipe the imported library', () async {
      final db = _memoryDb();
      for (final id in ['1', '2', '3']) {
        await db.upsertSong(
          SongsCompanion.insert(
            id: 'local:$id',
            title: 'Track $id',
            source: SongSource.imported,
            filePath: Value('/nowhere/$id.mp3'),
            inLibrary: const Value(true),
          ),
        );
      }
      final importer = ImportService(db, ArtworkService());
      // Every file is missing — that is a storage problem, not three deletions.
      expect(await importer.pruneMissing(), 0);
      expect((await db.library()).length, 3);
      await db.close();
    });

    test('retrain rebuilds the same weights it learned live', () async {
      SharedPreferences.setMockInitialValues({});
      final db = _memoryDb();
      final ai = AiEngine(
        db: db,
        yt: YtService(),
        downloads: DownloadService(db, YtService(), ArtworkService()),
        prefs: await SharedPreferences.getInstance(),
      );
      const settings = Settings(useTimeOfDay: false);
      await db.upsertSong(_song('a'));
      final song = (await db.songById('a'))!;
      await ai.learnFromListen(
        ListenReport(
          songId: 'a',
          playedMs: 200000,
          durationMs: 200000,
          skipped: false,
          origin: 'library',
        ),
        settings,
      );
      final live = await ai.weights();
      expect(live['artist:cold atlas'], isNotNull);

      await ai.retrain(settings);
      final replayed = await ai.weights();
      expect(replayed.keys.toSet(), live.keys.toSet());
      expect(
        replayed['artist:cold atlas'],
        closeTo(live['artist:cold atlas']!, 0.001),
      );
      expect(song.id, 'a');
      await db.close();
    });
  });

  test('channel garnish after a pipe is cut, short prefixes are not', () {
    expect(
      stripPipeGarnish('Soulful Classic Blues Playlist | Female Blues Vocals'),
      'Soulful Classic Blues Playlist',
    );
    // Too short to be a title on its own — leave it alone.
    expect(stripPipeGarnish('AC/DC | Thunderstruck'), 'AC/DC | Thunderstruck');
    expect(stripPipeGarnish('Bohemian Rhapsody'), 'Bohemian Rhapsody');
  });

  test('titles keep a dash that is inside brackets', () {
    final (artist, title) = splitTitle("One (Live - Seattle '89)", 'Metallica');
    expect(artist, 'Metallica');
    expect(title, "One (Live - Seattle '89)");
  });

  test('titles drop channel garnish after a pipe', () {
    final (artist, title) = splitTitle(
      'Red Hot Chili Peppers|Top Songs 2026 Playlist Californication',
      'Melody Radio',
    );
    expect(artist, 'Melody Radio');
    expect(title, 'Red Hot Chili Peppers');
  });

  test('taste transfers to another device', () async {
    SharedPreferences.setMockInitialValues({});
    final source = _memoryDb();
    final target = _memoryDb();

    // A device that has listened to things.
    await source.upsertSong(_song('a'));
    await source.upsertSong(_song('b', artist: 'Other', tags: 'polka'));
    await source.upsertSong(
      _song('local:1', source: SongSource.imported),
    );
    await source.setLiked('a', true);
    await source.markPlayed('a');
    await source.bumpAffinity('artist:cold atlas', 1.4);
    await source.setArtistRule('Junior Static', -1);

    final backup = await BackupService(source).buildBackup();
    final summary = await BackupService(target).importBackup(backup);

    // The fresh device now knows the same things…
    expect((await target.songById('a'))!.liked, isTrue);
    expect((await target.songById('a'))!.playCount, 1);
    expect((await target.allAffinities()).single.key, 'artist:cold atlas');
    expect((await target.artistRuleList()).single.rule, -1);
    expect(summary.songsAdded, 2);

    // …but not the other device's local files.
    expect(await target.songById('local:1'), isNull);

    // Importing twice must not duplicate the library.
    await BackupService(target).importBackup(backup);
    expect((await target.library()).length, 2);

    await source.close();
    await target.close();
  });

  test('local ids are stable per path', () {
    expect(localId('/music/a.mp3'), localId('/music/a.mp3'));
    expect(localId('/music/a.mp3'), isNot(localId('/music/b.mp3')));
  });
}
