import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

enum SongSource { youtube, downloaded, imported }

/// Every track the app knows about: streamed, downloaded or imported.
class Songs extends Table {
  /// YouTube video id, or `local:<sha1 of path>` for imported files.
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get artist => text().withDefault(const Constant(''))();
  TextColumn get album => text().withDefault(const Constant(''))();
  TextColumn get artworkUrl => text().nullable()();
  TextColumn get artworkPath => text().nullable()();
  IntColumn get durationMs => integer().withDefault(const Constant(0))();
  IntColumn get year => integer().nullable()();
  TextColumn get source => textEnum<SongSource>()();
  TextColumn get filePath => text().nullable()();
  /// Comma separated descriptors: genres, keywords, moods.
  TextColumn get tags => text().withDefault(const Constant(''))();
  BoolColumn get liked => boolean().withDefault(const Constant(false))();
  BoolColumn get blocked => boolean().withDefault(const Constant(false))();
  /// False for search results the user has never engaged with.
  BoolColumn get inLibrary => boolean().withDefault(const Constant(false))();
  /// True when the AI pulled it in by itself, so it can be cleaned up again.
  BoolColumn get autoAdded => boolean().withDefault(const Constant(false))();
  IntColumn get playCount => integer().withDefault(const Constant(0))();
  IntColumn get skipCount => integer().withDefault(const Constant(0))();
  IntColumn get fileSize => integer().withDefault(const Constant(0))();
  DateTimeColumn get lastPlayed => dateTime().nullable()();
  DateTimeColumn get addedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class Playlists extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get artworkPath => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class PlaylistEntries extends Table {
  TextColumn get playlistId => text()();
  TextColumn get songId => text()();
  IntColumn get position => integer()();

  @override
  Set<Column<Object>> get primaryKey => {playlistId, songId};
}

/// One row per listen. This is the AI's training data.
class PlayEvents extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get songId => text()();
  DateTimeColumn get at => dateTime().withDefault(currentDateAndTime)();
  IntColumn get playedMs => integer()();
  IntColumn get durationMs => integer()();
  BoolColumn get skipped => boolean().withDefault(const Constant(false))();
  /// home_shelf | search | library | radio | auto
  TextColumn get origin => text().withDefault(const Constant('library'))();
  IntColumn get hour => integer()();
  IntColumn get weekday => integer()();
}

/// Learned affinity for a descriptor ("synthwave", "artist:Cold Atlas").
class Affinities extends Table {
  TextColumn get key => text()();
  RealColumn get weight => real().withDefault(const Constant(0))();
  IntColumn get hits => integer().withDefault(const Constant(0))();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {key};
}

/// Hard overrides the user set on the "Your taste" screen.
class ArtistRules extends Table {
  TextColumn get artist => text()();
  /// 1 = always more of, -1 = never again.
  IntColumn get rule => integer()();

  @override
  Set<Column<Object>> get primaryKey => {artist};
}

@DriftDatabase(
  tables: [
    Songs,
    Playlists,
    PlaylistEntries,
    PlayEvents,
    Affinities,
    ArtistRules,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
    : super(executor ?? driftDatabase(name: 'tunebox'));

  @override
  int get schemaVersion => 1;

  // ------------------------------------------------------------------ songs

  /// Inserts or replaces a *complete* row.
  Future<void> upsertSong(SongsCompanion song) =>
      into(songs).insertOnConflictUpdate(song);

  /// Updates a few columns of an existing row.
  ///
  /// `insertOnConflictUpdate` validates the companion as an insert, so a
  /// partial one ("just set artworkPath") fails with `InvalidDataException`.
  Future<void> patchSong(String id, SongsCompanion patch) =>
      (update(songs)..where((s) => s.id.equals(id))).write(patch);

  /// Writes a track we only know from search without clobbering library state.
  Future<void> cacheSong(SongsCompanion song) => into(songs).insert(
    song,
    onConflict: DoUpdate(
      (old) => SongsCompanion(
        title: song.title,
        artist: song.artist,
        album: song.album,
        artworkUrl: song.artworkUrl,
        durationMs: song.durationMs,
        tags: song.tags,
      ),
    ),
  );

  Future<Song?> songById(String id) =>
      (select(songs)..where((s) => s.id.equals(id))).getSingleOrNull();

  Future<List<Song>> songsByIds(List<String> ids) async {
    if (ids.isEmpty) return const [];
    final rows = await (select(songs)..where((s) => s.id.isIn(ids))).get();
    final byId = {for (final r in rows) r.id: r};
    return [for (final id in ids) if (byId[id] != null) byId[id]!];
  }

  Stream<List<Song>> watchLibrary() =>
      (select(songs)
            ..where((s) => s.inLibrary.equals(true))
            ..orderBy([(s) => OrderingTerm.desc(s.addedAt)]))
          .watch();

  Stream<List<Song>> watchSource(SongSource source) =>
      (select(songs)
            ..where((s) => s.source.equalsValue(source) & s.inLibrary.equals(true))
            ..orderBy([(s) => OrderingTerm.desc(s.addedAt)]))
          .watch();

  Stream<List<Song>> watchLiked() =>
      (select(songs)
            ..where((s) => s.liked.equals(true))
            ..orderBy([(s) => OrderingTerm.desc(s.addedAt)]))
          .watch();

  /// Search hits sitting in the cache that the user never touched.
  Future<List<Song>> cachedSongs() =>
      (select(songs)..where(
        (s) =>
            s.inLibrary.equals(false) &
            s.liked.equals(false) &
            s.playCount.equals(0),
      )).get();

  Future<List<Song>> allSongs() => select(songs).get();

  Future<List<Song>> library() =>
      (select(songs)..where((s) => s.inLibrary.equals(true))).get();

  Future<void> setLiked(String id, bool liked) =>
      (update(songs)..where((s) => s.id.equals(id))).write(
        SongsCompanion(liked: Value(liked), inLibrary: const Value(true)),
      );

  Future<void> setBlocked(String id, bool blocked) =>
      (update(songs)..where((s) => s.id.equals(id)))
          .write(SongsCompanion(blocked: Value(blocked)));

  Future<void> markPlayed(String id) async {
    final song = await songById(id);
    if (song == null) return;
    await (update(songs)..where((s) => s.id.equals(id))).write(
      SongsCompanion(
        playCount: Value(song.playCount + 1),
        lastPlayed: Value(DateTime.now()),
        inLibrary: const Value(true),
      ),
    );
  }

  Future<void> markSkipped(String id) async {
    final song = await songById(id);
    if (song == null) return;
    await (update(songs)..where((s) => s.id.equals(id)))
        .write(SongsCompanion(skipCount: Value(song.skipCount + 1)));
  }

  Future<void> markDownloaded(String id, String path, int bytes) =>
      (update(songs)..where((s) => s.id.equals(id))).write(
        SongsCompanion(
          source: const Value(SongSource.downloaded),
          filePath: Value(path),
          fileSize: Value(bytes),
          inLibrary: const Value(true),
        ),
      );

  Future<void> removeDownload(String id) =>
      (update(songs)..where((s) => s.id.equals(id))).write(
        const SongsCompanion(
          source: Value(SongSource.youtube),
          filePath: Value(null),
          fileSize: Value(0),
        ),
      );

  /// Removes a song and everything that points at it — a dangling playlist
  /// entry would silently shorten the playlist it belongs to.
  Future<void> deleteSong(String id) => transaction(() async {
    await (delete(playlistEntries)..where((e) => e.songId.equals(id))).go();
    await (delete(songs)..where((s) => s.id.equals(id))).go();
  });

  Future<int> downloadedBytes() async {
    final q = selectOnly(songs)
      ..addColumns([songs.fileSize.sum()])
      ..where(songs.source.equalsValue(SongSource.downloaded));
    final row = await q.getSingleOrNull();
    return row?.read(songs.fileSize.sum()) ?? 0;
  }

  Future<List<Song>> autoDownloaded() => (select(songs)
        ..where((s) =>
            s.autoAdded.equals(true) & s.source.equalsValue(SongSource.downloaded))
        ..orderBy([(s) => OrderingTerm.asc(s.addedAt)]))
      .get();

  // -------------------------------------------------------------- playlists

  Stream<List<Playlist>> watchPlaylists() =>
      (select(playlists)..orderBy([(p) => OrderingTerm.desc(p.createdAt)]))
          .watch();

  Future<void> createPlaylist(String id, String name) =>
      into(playlists).insertOnConflictUpdate(
        PlaylistsCompanion.insert(id: id, name: name),
      );

  Future<void> deletePlaylist(String id) async {
    await (delete(playlistEntries)..where((e) => e.playlistId.equals(id))).go();
    await (delete(playlists)..where((p) => p.id.equals(id))).go();
  }

  Future<void> addToPlaylist(String playlistId, String songId) async {
    final count = await (select(playlistEntries)
          ..where((e) => e.playlistId.equals(playlistId)))
        .get();
    await into(playlistEntries).insertOnConflictUpdate(
      PlaylistEntriesCompanion.insert(
        playlistId: playlistId,
        songId: songId,
        position: count.length,
      ),
    );
    await (update(songs)..where((s) => s.id.equals(songId)))
        .write(const SongsCompanion(inLibrary: Value(true)));
  }

  Future<void> removeFromPlaylist(String playlistId, String songId) =>
      (delete(playlistEntries)
            ..where((e) =>
                e.playlistId.equals(playlistId) & e.songId.equals(songId)))
          .go();

  Stream<List<Song>> watchPlaylistSongs(String playlistId) {
    final query = select(playlistEntries).join([
      innerJoin(songs, songs.id.equalsExp(playlistEntries.songId)),
    ])
      ..where(playlistEntries.playlistId.equals(playlistId))
      ..orderBy([OrderingTerm.asc(playlistEntries.position)]);
    return query.watch().map((rows) => rows.map((r) => r.readTable(songs)).toList());
  }

  // ------------------------------------------------------------ ai training

  Future<void> logEvent(PlayEventsCompanion event) =>
      into(playEvents).insert(event);

  Future<List<PlayEvent>> recentEvents({int limit = 2000}) =>
      (select(playEvents)
            ..orderBy([(e) => OrderingTerm.desc(e.at)])
            ..limit(limit))
          .get();

  Future<int> eventCount() async {
    final q = selectOnly(playEvents)..addColumns([playEvents.id.count()]);
    final row = await q.getSingleOrNull();
    return row?.read(playEvents.id.count()) ?? 0;
  }

  Future<List<Affinity>> allAffinities() => select(affinities).get();

  Future<void> bumpAffinity(String key, double delta) async {
    final existing = await (select(affinities)..where((a) => a.key.equals(key)))
        .getSingleOrNull();
    final weight = (existing?.weight ?? 0) + delta;
    await into(affinities).insertOnConflictUpdate(
      AffinitiesCompanion.insert(
        key: key,
        weight: Value(weight.clamp(-6.0, 6.0)),
        hits: Value((existing?.hits ?? 0) + 1),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  /// Swaps the whole affinity table for a freshly computed one, in a single
  /// transaction — "Retrain" used to write a few thousand rows one by one.
  Future<void> replaceAffinities(Map<String, double> weights) =>
      transaction(() async {
        await delete(affinities).go();
        await batch((b) {
          b.insertAll(affinities, [
            for (final e in weights.entries)
              AffinitiesCompanion.insert(
                key: e.key,
                weight: Value(e.value),
                hits: const Value(1),
              ),
          ]);
        });
      });

  Future<void> clearLearning() async {
    await delete(playEvents).go();
    await delete(affinities).go();
    await (update(songs)).write(
      const SongsCompanion(playCount: Value(0), skipCount: Value(0)),
    );
  }

  // ----------------------------------------------------------- artist rules

  Stream<List<ArtistRule>> watchArtistRules() => select(artistRules).watch();

  Future<List<ArtistRule>> artistRuleList() => select(artistRules).get();

  Future<void> setArtistRule(String artist, int rule) =>
      into(artistRules).insertOnConflictUpdate(
        ArtistRulesCompanion.insert(artist: artist, rule: rule),
      );

  Future<void> clearArtistRule(String artist) =>
      (delete(artistRules)..where((r) => r.artist.equals(artist))).go();
}
