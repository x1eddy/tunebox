import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:drift/drift.dart' show Value;
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/db/database.dart';
import '../data/services/download_service.dart';
import '../data/services/yt_service.dart';
import '../playback/audio_handler.dart';
import '../state/settings.dart';
import '../data/services/song_filter.dart';

export '../data/services/song_filter.dart' show looksLikeASong;

/// Why a song was picked. Structured rather than a sentence, so the UI can
/// say it in the language the app is running in.
enum ReasonKind {
  plays,
  likedLast,
  playsLast,
  topArtist,
  more,
  comeBack,
  yourKind,
  heavyOn,
  outThisYear,
  releasedRecently,
  close,
  near,
  neverPlayed,
  playedOnce,
  popular,
}

enum AgoUnit { years, months, days }

@immutable
class PickReason {
  const PickReason(
    this.kind, {
    this.count = 0,
    this.text = '',
    this.ago = 0,
    this.agoUnit = AgoUnit.days,
  });

  final ReasonKind kind;
  final int count;
  final String text;
  final int ago;
  final AgoUnit agoUnit;
}

/// A song plus the reason the AI put it in front of you.
@immutable
class Pick {
  const Pick(this.song, {this.reason});
  final Song song;
  final PickReason? reason;
}

enum ShelfStyle { cards, wideCards, circles }

@immutable
class AiShelf {
  const AiShelf({
    required this.id,
    required this.title,
    required this.picks,
    this.emoji,
    this.subtitle,
    this.style = ShelfStyle.cards,
  });

  final String id;
  final String title;
  final String? emoji;
  final String? subtitle;
  final List<Pick> picks;
  final ShelfStyle style;
}

@immutable
class TasteProfile {
  const TasteProfile({
    required this.tags,
    required this.artists,
    required this.decades,
    required this.byHour,
    required this.plays,
    required this.skips,
    required this.likes,
    required this.confidence,
    required this.summary,
  });

  final List<(String, double)> tags;
  final List<(String, double)> artists;
  final Map<String, double> decades;
  final List<double> byHour;
  final int plays;
  final int skips;
  final int likes;
  final double confidence;
  final String summary;

  bool get isEmpty => plays == 0 && likes == 0;
}

/// The on-device recommender. Transparent on purpose: every number it uses is
/// a count of something you did, and every pick can explain itself.
class AiEngine {
  AiEngine({
    required AppDatabase db,
    required YtService yt,
    required DownloadService downloads,
    required SharedPreferences prefs,
  }) : _db = db,
       _yt = yt,
       _downloads = downloads,
       _prefs = prefs;

  final AppDatabase _db;
  final YtService _yt;
  final DownloadService _downloads;
  final SharedPreferences _prefs;
  final _random = Random();

  // ------------------------------------------------------------- learning

  static const _kFinished = 1.0;
  static const _kSkipped = -0.85;
  static const _kLiked = 2.2;
  static const _kDisliked = -3.0;

  /// Turns one listen into weight updates. Called for every play.
  Future<void> learnFromListen(ListenReport report, Settings settings) async {
    final song = await _db.songById(report.songId);
    if (song == null) return;

    await _db.logEvent(
      PlayEventsCompanion.insert(
        songId: song.id,
        playedMs: report.playedMs,
        durationMs: report.durationMs,
        skipped: Value(report.skipped),
        origin: Value(report.origin),
        hour: DateTime.now().hour,
        weekday: DateTime.now().weekday,
      ),
    );

    if (report.skipped) {
      await _db.markSkipped(song.id);
    } else {
      await _db.markPlayed(song.id);
    }
    if (!settings.learning) return;

    final completion = report.durationMs == 0
        ? 0.0
        : (report.playedMs / report.durationMs).clamp(0.0, 1.0);
    final signal = report.skipped
        ? _kSkipped * (settings.useSkips ? 1 : 0)
        : _kFinished * completion;
    if (signal == 0) return;

    await _applySignal(song, signal, withTime: settings.useTimeOfDay);
  }

  Future<void> learnFromLike(Song song, bool liked, Settings settings) async {
    await _db.setLiked(song.id, liked);
    if (settings.learning) {
      await _applySignal(song, liked ? _kLiked : -_kLiked * 0.5,
          withTime: settings.useTimeOfDay);
    }
    if (liked && settings.downloadLikes) {
      await downloadForUser(song, settings, auto: false);
    }
  }

  Future<void> learnFromDislike(Song song, Settings settings) async {
    await _db.setBlocked(song.id, true);
    await _db.setLiked(song.id, false);
    if (settings.learning) {
      await _applySignal(song, _kDisliked, withTime: false);
    }
  }

  Future<void> _applySignal(
    Song song,
    double signal, {
    required bool withTime,
  }) async {
    final rate = 0.35;
    for (final key in descriptorsOf(song)) {
      await _db.bumpAffinity(key, signal * rate);
    }
    if (withTime) {
      final bucket = hourBucket(DateTime.now().hour);
      for (final tag in tagsOf(song).take(4)) {
        await _db.bumpAffinity('$bucket@$tag', signal * rate * 0.5);
      }
    }
  }

  /// Rebuilds every weight from the stored history. Used by "Retrain".
  ///
  /// Replaying thousands of events one database round-trip at a time froze the
  /// app for several seconds, so the whole replay is summed in memory and
  /// written once.
  Future<void> retrain(Settings settings) async {
    final events = await _db.recentEvents(limit: 5000);
    final library = await _db.library();
    final byId = {for (final s in library) s.id: s};
    // Events can reference songs that are no longer in the library.
    for (final e in events) {
      if (byId.containsKey(e.songId)) continue;
      final song = await _db.songById(e.songId);
      if (song != null) byId[song.id] = song;
    }

    final totals = <String, double>{};
    void bump(String key, double delta) =>
        totals[key] = (totals[key] ?? 0) + delta;

    void apply(Song song, double signal, {required bool withTime}) {
      const rate = 0.35;
      for (final key in descriptorsOf(song)) {
        bump(key, signal * rate);
      }
      if (withTime) {
        final bucket = hourBucket(DateTime.now().hour);
        for (final tag in tagsOf(song).take(4)) {
          bump('$bucket@$tag', signal * rate * 0.5);
        }
      }
    }

    for (final e in events.reversed) {
      final song = byId[e.songId];
      if (song == null) continue;
      final completion = e.durationMs == 0
          ? 0.0
          : (e.playedMs / e.durationMs).clamp(0.0, 1.0);
      final signal = e.skipped ? _kSkipped : _kFinished * completion;
      apply(song, signal, withTime: settings.useTimeOfDay);
    }
    for (final song in library) {
      if (song.liked) apply(song, _kLiked, withTime: false);
    }

    await _db.replaceAffinities(totals);
  }

  // -------------------------------------------------------------- scoring

  Future<Map<String, double>> weights() async {
    final rows = await _db.allAffinities();
    return {for (final r in rows) r.key: r.weight};
  }

  double scoreSong(
    Song song,
    Map<String, double> w,
    Settings s,
    Map<String, int> artistRules,
  ) {
    final rule = artistRules[song.artist.toLowerCase()] ?? 0;
    if (rule < 0 || song.blocked) return double.negativeInfinity;

    var score = 0.0;
    for (final tag in tagsOf(song)) {
      score += (w['tag:$tag'] ?? 0) * 1.0;
    }
    score += (w['artist:${song.artist.toLowerCase()}'] ?? 0) * 1.7;
    if (song.year != null) {
      score += (w['decade:${song.year! ~/ 10 * 10}'] ?? 0) * 0.6;
    }
    if (s.useTimeOfDay) {
      final bucket = hourBucket(DateTime.now().hour);
      for (final tag in tagsOf(song).take(4)) {
        score += (w['$bucket@$tag'] ?? 0) * 0.6;
      }
    }

    // Energy: we have no audio analysis, so lean on the descriptors YouTube
    // and file tags already give us.
    final energy = energyOf(song);
    if (energy != 0) score += energy * (s.energy - 0.5) * 2.4;

    if (song.liked) score += 2.0;
    if (s.useHistory) {
      score += log(1 + song.playCount) * (1.4 - s.discovery);
    }
    if (s.useSkips) score -= log(1 + song.skipCount) * 1.1;

    // Freshness: how much a recent release year is worth.
    final year = song.year;
    if (year != null) {
      final age = DateTime.now().year - year;
      score += (2.2 - age * 0.25).clamp(-1.5, 2.2) * s.recency;
    }

    // Discovery: unheard songs get a bonus, over-played ones a penalty.
    if (song.playCount == 0) score += s.discovery * 2.2;
    if (song.playCount > 12) score -= (s.discovery) * 1.2;

    if (rule > 0) score += 3.5;
    score += _random.nextDouble() * 0.45; // keeps shelves from freezing
    return score;
  }

  Map<String, double>? _quickWeights;
  DateTime? _quickAt;

  /// A cheap score for ordering a queue, using weights cached for a minute.
  ///
  /// Shuffling a long queue must not turn into a few hundred database reads,
  /// and a shuffle does not need weights that are seconds-fresh.
  double quickScore(Song song) {
    final fresh = _quickAt != null &&
        DateTime.now().difference(_quickAt!) < const Duration(minutes: 1);
    if (!fresh) {
      unawaited(
        weights().then((w) {
          _quickWeights = w;
          _quickAt = DateTime.now();
        }),
      );
    }
    final w = _quickWeights;
    if (w == null) return 0;
    var score = (w['artist:${song.artist.toLowerCase()}'] ?? 0) * 1.7;
    for (final tag in tagsOf(song)) {
      score += w['tag:$tag'] ?? 0;
    }
    if (song.liked) score += 2;
    return score;
  }

  // --------------------------------------------------------------- shelves

  Future<List<AiShelf>>? _homeBuild;

  /// Builds the Home shelves, at most one build at a time.
  ///
  /// Every tap on refresh used to start another full build — searches,
  /// database writes and all — so hammering the button had the app running
  /// five of them at once against the same rows.
  Future<List<AiShelf>> buildHome(Settings settings) {
    final running = _homeBuild;
    if (running != null) return running;
    final build = _buildHome(settings);
    _homeBuild = build;
    return build.whenComplete(() => _homeBuild = null);
  }

  Future<List<AiShelf>> _buildHome(Settings settings) async {
    final w = await weights();
    final rules = {
      for (final r in await _db.artistRuleList()) r.artist.toLowerCase(): r.rule,
    };
    // Anything you blocked, or by an artist you banned, is out of every shelf
    // — not merely ranked last.
    final library = (await _db.library())
        .where((s) => !s.blocked && rules[s.artist.toLowerCase()] != -1)
        // Hour-long mixes and "full soundtrack" rips that made it into the
        // library before the filter existed stay there — they are the user's
        // — but the AI stops handing them back as recommendations.
        .where((s) => looksLikeASong(s.title, s.durationMs))
        .toList();

    final shelves = <AiShelf>[];
    final now = DateTime.now();

    // scoreSong has a random tiebreaker in it, so calling it from inside a
    // comparator gave List.sort a contradictory ordering (and recomputed the
    // score n log n times). Score every song once, then sort on the number.
    final scores = <String, double>{};
    double sc(Song s) =>
        scores[s.id] ??= scoreSong(s, w, settings, rules);
    void rank(List<Song> songs) {
      for (final s in songs) {
        sc(s);
      }
      songs.sort((a, b) => scores[b.id]!.compareTo(scores[a.id]!));
    }

    // A song belongs to one shelf. Without this, a small library produced
    // three rows of the same tracks in the same order.
    final used = <String>{};
    // A horizontal row with one or two cards looks broken; skip it instead.
    const minimumShelf = 3;

    List<Pick> claim(
      Iterable<Song> pool,
      int limit, {
      PickReason Function(Song)? reason,
      int perArtist = 2,
    }) {
      final picks = <Pick>[];
      final byArtist = <String, int>{};
      for (final song in pool) {
        if (used.contains(song.id)) continue;
        final artist = song.artist.toLowerCase();
        if ((byArtist[artist] ?? 0) >= perArtist) continue;
        byArtist[artist] = (byArtist[artist] ?? 0) + 1;
        used.add(song.id);
        picks.add(Pick(song, reason: reason?.call(song)));
        if (picks.length >= limit) break;
      }
      return picks;
    }

    void addShelf(AiShelf shelf) {
      if (shelf.picks.length >= minimumShelf) shelves.add(shelf);
    }

    // --- On repeat ------------------------------------------------------
    final recent = library
        .where((s) =>
            s.lastPlayed != null &&
            now.difference(s.lastPlayed!).inDays <= 14 &&
            s.playCount > 1)
        .toList()
      ..sort((a, b) => b.playCount.compareTo(a.playCount));
    addShelf(
      AiShelf(
        id: 'repeat',
        title: 'On repeat',
        subtitle: 'Your last two weeks',
        picks: claim(
          recent,
          12,
          reason: (s) => PickReason(ReasonKind.plays, count: s.playCount),
        ),
      ),
    );

    // --- Old forgotten hits you liked -----------------------------------
    final staleDays = (140 - settings.nostalgia * 100).round();
    final forgotten = library
        .where((s) =>
            (s.liked || s.playCount >= 4) &&
            s.lastPlayed != null &&
            now.difference(s.lastPlayed!).inDays >= staleDays)
        .toList()
      ..sort((a, b) => (b.playCount * 2 + sc(b)).compareTo(
        a.playCount * 2 + sc(a),
      ));
    addShelf(
      AiShelf(
        id: 'forgotten',
        title: 'Old forgotten hits you liked',
        emoji: '🕰️',
        subtitle: 'Loved once, untouched for a while',
        style: ShelfStyle.wideCards,
        picks: claim(forgotten, 10, reason: (s) => _forgottenReason(s, now)),
      ),
    );

    // --- New ⭐ — genuinely new: things you do not own yet -----------------
    final seeds = await _seedQueries(library, w);
    final candidates = <Song>[];
    if (settings.useYouTubeSignals) {
      candidates.addAll(await _candidates(seeds, library));
    }
    final fresh = <Song>[
      ...candidates.where((s) {
        final y = s.year;
        return y == null || y >= now.year - 2;
      }),
      // Anything added in the last week that you have not played yet.
      ...library.where((s) =>
          s.playCount == 0 && now.difference(s.addedAt).inDays <= 7),
    ];
    rank(fresh);
    addShelf(
      AiShelf(
        id: 'new',
        title: 'New',
        emoji: '⭐',
        subtitle: 'Fresh tracks the AI thinks are for you',
        picks: claim(fresh, 12, reason: (s) => _newReason(s, w, now)),
      ),
    );

    // --- Because you played <artist> ------------------------------------
    final topArtist = _topArtist(library, w);
    if (topArtist != null && settings.useYouTubeSignals) {
      final seedSong = library.firstWhere(
        (s) => s.artist == topArtist,
        orElse: () => library.first,
      );
      final related = await _relatedFor(seedSong, library);
      rank(related);
      addShelf(
        AiShelf(
          id: 'because',
          title: 'Because you played $topArtist',
          subtitle: 'Same corner of your taste',
          picks: claim(
            related,
            12,
            reason: (s) => PickReason(ReasonKind.near, text: topArtist),
          ),
        ),
      );
    }

    // --- Deep cuts: yours, but neglected ---------------------------------
    final neglected =
        library.where((s) => s.playCount <= 1 && !s.liked).toList();
    rank(neglected);
    addShelf(
      AiShelf(
        id: 'deep',
        title: 'Barely touched',
        subtitle: 'In your library, hardly ever played',
        picks: claim(
          neglected,
          12,
          reason: (s) => PickReason(
            s.playCount == 0 ? ReasonKind.neverPlayed : ReasonKind.playedOnce,
          ),
        ),
      ),
    );

    // --- Your mix: the best of whatever is left ---------------------------
    final mix = [...library];
    rank(mix);
    addShelf(
      AiShelf(
        id: 'mix',
        title: 'Your mix',
        subtitle: 'Rebuilt every time you open the app',
        picks: claim(mix, 14),
      ),
    );

    // --- Recently added ---------------------------------------------------
    final added = [...library]..sort((a, b) => b.addedAt.compareTo(a.addedAt));
    addShelf(
      AiShelf(
        id: 'added',
        title: 'Recently added',
        subtitle: 'Downloads and files you imported',
        picks: claim(added, 12),
      ),
    );

    // --- Empty library: get something on screen ---------------------------
    if (shelves.isEmpty && settings.useYouTubeSignals) {
      final starter = await _yt.discover([
        'new music this week',
        'top songs 2026',
      ], perSeed: 12);
      final songs = await _persistCandidates(starter);
      if (songs.isNotEmpty) {
        shelves.add(
          AiShelf(
            id: 'starter',
            title: 'Start here',
            emoji: '⭐',
            subtitle: 'Play a few and the AI starts learning immediately',
            picks: [
              for (final s in songs.take(16))
                Pick(s, reason: const PickReason(ReasonKind.popular)),
            ],
          ),
        );
      }
    }

    return shelves;
  }

  PickReason _forgottenReason(Song s, DateTime now) {
    final days = now.difference(s.lastPlayed!).inDays;
    final (ago, unit) = days > 365
        ? ((days / 365).floor(), AgoUnit.years)
        : days > 60
        ? ((days / 30).floor(), AgoUnit.months)
        : (days, AgoUnit.days);
    return s.liked
        ? PickReason(ReasonKind.likedLast, ago: ago, agoUnit: unit)
        : PickReason(
            ReasonKind.playsLast,
            count: s.playCount,
            ago: ago,
            agoUnit: unit,
          );
  }

  PickReason _newReason(Song s, Map<String, double> w, DateTime now) {
    final artistWeight = w['artist:${s.artist.toLowerCase()}'] ?? 0;
    final tag = tagsOf(s).firstWhere(
      (t) => (w['tag:$t'] ?? 0) > 0.3,
      orElse: () => '',
    );
    // A shelf where every card says the same sentence reads like a bug, so
    // pick whichever true reason is most specific, and vary the wording.
    if (artistWeight > 0.9) return const PickReason(ReasonKind.topArtist);
    if (artistWeight > 0.4) {
      return PickReason(
        _random.nextBool() ? ReasonKind.more : ReasonKind.comeBack,
        text: s.artist,
      );
    }
    if (tag.isNotEmpty) {
      return PickReason(
        _random.nextBool() ? ReasonKind.yourKind : ReasonKind.heavyOn,
        text: tag,
      );
    }
    if (s.year != null && s.year! >= now.year) {
      return const PickReason(ReasonKind.outThisYear);
    }
    if (s.year != null && s.year! >= now.year - 1) {
      return const PickReason(ReasonKind.releasedRecently);
    }
    return const PickReason(ReasonKind.close);
  }

  String? _topArtist(List<Song> library, Map<String, double> w) {
    final counts = <String, double>{};
    for (final s in library) {
      if (s.artist.isEmpty) continue;
      counts[s.artist] = (counts[s.artist] ?? 0) +
          s.playCount +
          (w['artist:${s.artist.toLowerCase()}'] ?? 0);
    }
    if (counts.isEmpty) return null;
    final best = counts.entries.reduce((a, b) => a.value >= b.value ? a : b);
    return best.value <= 0 ? null : best.key;
  }

  /// Search terms that describe the current taste, used to fish for new music.
  Future<List<String>> _seedQueries(
    List<Song> library,
    Map<String, double> w,
  ) async {
    final tags = w.entries
        .where((e) => e.key.startsWith('tag:') && e.value > 0.25)
        .toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final artists = w.entries
        .where((e) => e.key.startsWith('artist:') && e.value > 0.3)
        .toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    final seeds = <String>[
      for (final a in artists.take(2)) '${a.key.substring(7)} new songs',
      for (final t in tags.take(2)) '${t.key.substring(4)} 2026',
      if (artists.isNotEmpty)
        '${artists.first.key.substring(7)} similar artists',
    ];
    if (seeds.isEmpty && library.isNotEmpty) {
      final s = library[_random.nextInt(library.length)];
      seeds.add('${s.artist} similar songs');
    }
    return seeds;
  }

  Future<List<Song>> _candidates(
    List<String> seeds,
    List<Song> library,
  ) async {
    if (seeds.isEmpty) return const [];
    final found = await _yt.discover(seeds);
    return _persistCandidates(found, exclude: library);
  }

  Future<List<Song>> _relatedFor(Song seed, List<Song> library) async {
    if (seed.id.startsWith('local:')) {
      return _candidates(['${seed.artist} similar'], library);
    }
    final found = await _yt.related(seed.id);
    return _persistCandidates(found, exclude: library);
  }

  /// Search hits are cached as rows so they can be scored, queued and played.
  Future<List<Song>> _persistCandidates(
    List<SongsCompanion> found, {
    List<Song> exclude = const [],
  }) async {
    final have = {for (final s in exclude) s.id};
    final out = <Song>[];
    for (final c in found) {
      if (have.contains(c.id.value)) continue;
      if (!looksLikeASong(c.title.value, c.durationMs.value,
          artist: c.artist.present ? c.artist.value : '', strict: true)) {
        continue;
      }
      await _db.cacheSong(c);
      final song = await _db.songById(c.id.value);
      if (song != null && !song.blocked) out.add(song);
    }
    return out;
  }

  // -------------------------------------------------------------- profile

  Future<TasteProfile> profile() async {
    final w = await weights();
    // 1200 events is plenty for the charts and keeps this off the UI thread's
    // critical path — it used to spike a frame by ~180ms on a tab switch.
    final events = await _db.recentEvents(limit: 1200);
    final library = await _db.library();

    List<(String, double)> top(String prefix, int n) {
      final rows = w.entries
          .where((e) => e.key.startsWith(prefix) && e.value > 0)
          .map((e) => (e.key.substring(prefix.length), e.value))
          .toList()
        ..sort((a, b) => b.$2.compareTo(a.$2));
      final max = rows.isEmpty ? 1.0 : rows.first.$2;
      return [for (final r in rows.take(n)) (r.$1, (r.$2 / max).clamp(0.0, 1.0))];
    }

    final byHour = List<double>.filled(24, 0);
    for (final e in events) {
      byHour[e.hour % 24] += 1;
    }
    final peak = byHour.fold<double>(0, max);
    final hours = [for (final h in byHour) peak == 0 ? 0.0 : h / peak];

    final decades = <String, double>{};
    for (final s in library) {
      if (s.year == null) continue;
      final key = '${s.year! ~/ 10 * 10}s';
      decades[key] = (decades[key] ?? 0) + s.playCount + 1;
    }
    final decadeTotal = decades.values.fold<double>(0, (a, b) => a + b);
    final decadeShare = {
      for (final e in (decades.entries.toList()
            ..sort((a, b) => b.value.compareTo(a.value)))
          .take(5))
        e.key: decadeTotal == 0 ? 0.0 : e.value / decadeTotal,
    };

    var plays = 0;
    var skips = 0;
    for (final e in events) {
      if (e.skipped) {
        skips++;
      } else {
        plays++;
      }
    }
    var likes = 0;
    for (final s in library) {
      if (s.liked) likes++;
    }
    final signals = plays + likes * 3;
    final confidence = (1 - exp(-signals / 60)).clamp(0.0, 0.97);

    final topTags = top('tag:', 8);
    final topArtists = top('artist:', 8);
    final summary = topTags.isEmpty
        ? 'Play a few songs and this fills in.'
        : 'Right now: ${topTags.take(2).map((t) => t.$1).join(' and ')}'
              '${topArtists.isEmpty ? '' : ', led by ${topArtists.first.$1}'}.';

    return TasteProfile(
      tags: topTags,
      artists: topArtists,
      decades: decadeShare,
      byHour: hours,
      plays: plays,
      skips: skips,
      likes: likes,
      confidence: confidence,
      summary: summary,
    );
  }

  // -------------------------------------------------------- auto-download

  /// Download a song because the user asked for it (a like, or a tap).
  Future<void> downloadForUser(
    Song song,
    Settings settings, {
    bool auto = false,
  }) async {
    if (song.source == SongSource.imported) return;
    final onWifi = await _downloads.onWifi();
    if (settings.wifiOnlyDownloads && !onWifi) return;
    await _downloads.enqueue(
      song,
      auto: auto,
      maxBitrateKbps: _qualityFor(settings, onWifi),
    );
  }

  /// Mobile data gets 128 kbps when the data saver is on.
  int _qualityFor(Settings settings, bool onWifi) {
    final chosen = settings.audioQualityKbps;
    if (onWifi || !settings.dataSaverOffWifi) return chosen;
    return chosen == 0 || chosen > 128 ? 128 : chosen;
  }

  /// "Let the AI install things it thinks I like."
  /// Runs at most once a day's worth of downloads, inside a storage budget.
  Future<int> runAutoDownloads(Settings settings) async {
    if (!settings.aiAutoDownload) return 0;
    if (settings.wifiOnlyDownloads && !await _downloads.onWifi()) return 0;

    final today = DateTime.now().toIso8601String().substring(0, 10);
    final stamp = _prefs.getString('autoDlDay');
    var used = stamp == today ? (_prefs.getInt('autoDlCount') ?? 0) : 0;
    final budget = settings.aiDailyDownloads - used;
    if (budget <= 0) return 0;

    final library = await _db.library();
    final w = await weights();
    final rules = {
      for (final r in await _db.artistRuleList()) r.artist.toLowerCase(): r.rule,
    };

    final seeds = await _seedQueries(library, w);
    final pool = <Song>[
      ...await _candidates(seeds, const []),
      ...library.where((s) => s.source == SongSource.youtube),
    ]..removeWhere((s) => s.source == SongSource.downloaded || s.blocked);

    final scored = pool
        .map((s) => (s, scoreSong(s, w, settings, rules)))
        .where((e) => e.$2 > 1.2)
        .toList()
      ..sort((a, b) => b.$2.compareTo(a.$2));

    var taken = 0;
    for (final (song, _) in scored) {
      if (taken >= budget) break;
      await _db.patchSong(
        song.id,
        const SongsCompanion(
          inLibrary: Value(true),
          autoAdded: Value(true),
        ),
      );
      await _downloads.enqueue(
        song,
        auto: true,
        maxBitrateKbps: _qualityFor(settings, true),
      );
      taken++;
    }

    used += taken;
    await _prefs.setString('autoDlDay', today);
    await _prefs.setInt('autoDlCount', used);
    await _downloads.enforceBudget(settings.aiStorageBudgetMb * 1024 * 1024);
    return taken;
  }

  Future<void> forget() async {
    await _db.clearLearning();
    await _prefs.remove('autoDlDay');
    await _prefs.remove('autoDlCount');
  }

  /// Fills in keywords, album and release year for a YouTube song the first
  /// time it really matters. The year also feeds the decade affinities.
  Future<void> enrich(Song song) async {
    if (song.id.startsWith('local:')) return;
    if (song.tags.isEmpty) {
      final details = await _yt.details(song.id);
      if (details != null) {
        await _db.patchSong(song.id, SongsCompanion(tags: details.tags));
      }
    }
    if (song.year == null || song.album.isEmpty) {
      final info = await _yt.albumInfo(
        song.id,
        title: song.title,
        artist: song.artist,
      );
      if (info != null) await _db.patchSong(song.id, info);
    }
  }

  /// Fills in release years for library songs that never got one, a few at a
  /// time so it never competes with playback for bandwidth.
  Future<int> backfillYears({int limit = 25}) async {
    var done = 0;
    // Library first — those are the rows the user actually looks at — then
    // whatever the shelves are currently showing.
    final rows = [...await _db.library(), ...await _db.cachedSongs()];
    for (final song in rows) {
      if (done >= limit) break;
      if (song.year != null || song.id.startsWith('local:')) continue;
      final info = await _yt.albumInfo(
        song.id,
        title: song.title,
        artist: song.artist,
      );
      if (info == null) continue;
      await _db.patchSong(song.id, info);
      done++;
      await Future<void>.delayed(const Duration(milliseconds: 250));
    }
    return done;
  }
}

// ------------------------------------------------------------------ helpers

List<String> tagsOf(Song song) => [
  for (final t in song.tags.split(','))
    if (t.trim().isNotEmpty) t.trim().toLowerCase(),
];

List<String> descriptorsOf(Song song) => [
  for (final t in tagsOf(song)) 'tag:$t',
  if (song.artist.isNotEmpty) 'artist:${song.artist.toLowerCase()}',
  if (song.year != null) 'decade:${song.year! ~/ 10 * 10}',
];

const _loudTags = {
  'rock', 'metal', 'punk', 'rap', 'hip hop', 'edm', 'dance', 'techno', 'house',
  'party', 'workout', 'hardstyle', 'dubstep', 'drum and bass', 'trap', 'remix',
  'bass', 'hype', 'banger', 'live',
};
const _calmTags = {
  'ambient', 'chill', 'lo-fi', 'lofi', 'sleep', 'study', 'acoustic', 'piano',
  'classical', 'jazz', 'soft', 'slow', 'relax', 'meditation', 'instrumental',
  'ballad',
};

/// Rough -1..1 energy guess from a song's descriptors.
double energyOf(Song song) {
  var score = 0.0;
  for (final tag in tagsOf(song)) {
    if (_loudTags.any(tag.contains)) score += 1;
    if (_calmTags.any(tag.contains)) score -= 1;
  }
  return score.clamp(-1.0, 1.0);
}

String hourBucket(int hour) => switch (hour) {
  < 6 => 'night',
  < 12 => 'morning',
  < 18 => 'afternoon',
  _ => 'evening',
};

String prettyBytes(int bytes) {
  if (bytes >= 1024 * 1024 * 1024) {
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
  if (bytes >= 1024 * 1024) {
    return '${(bytes / (1024 * 1024)).toStringAsFixed(0)} MB';
  }
  return '${(bytes / 1024).toStringAsFixed(0)} KB';
}

String jsonOf(Object? o) => const JsonEncoder.withIndent('  ').convert(o);
