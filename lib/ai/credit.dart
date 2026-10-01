/// Works out whose taste a song really says something about.
///
/// YouTube's "artist" is the uploader. When someone reposts a mix, slows a song
/// down or lifts it into a lyric video, liking it says nothing about the
/// reuploader — it says something about the artist who made the music, or
/// nothing about any single artist at all (a mix).
library;

import '../data/db/database.dart';

/// "1 hour mix", "best of", "playlist" — many artists, so no artist at all.
final _mixWords = RegExp(
  r'\b(mix|megamix|mixtape|playlist|compilation|non-?stop|best of|hours?|'
  r'top \d+|full album|mashup|medley|jukebox|radio|songs)\b',
  caseSensitive: false,
);

/// Edits and re-uploads that are rarely made by the artist themselves.
final _repostWords = RegExp(
  r'\b(slowed|reverb|sped ?up|speed ?up|nightcore|8d|bass ?boosted|cover|'
  r'lyrics?|lyric video|karaoke|loop|tiktok|reupload|re-upload)\b',
  caseSensitive: false,
);

/// The right-hand side of "Song - Remastered 2011" — a version, not a title.
final _versionOnly = RegExp(
  r'^(remaster(ed)?( \d{4})?|\d{4} remaster(ed)?|live.*|version|.*version|'
  r'edit|.*edit|.*mix|remix|acoustic|demo|single|radio|official.*|'
  r'audio|video|lyrics?|from .*)$',
  caseSensitive: false,
);

final _split = RegExp(r'\s[-–—]\s');
final _featuring = RegExp(r'\s*[\(\[]?\b(ft|feat|featuring|x|&|,)\b.*$',
    caseSensitive: false);
final _noise = RegExp(r'\s*-\s*topic$|vevo$|\s*official$', caseSensitive: false);

String _norm(String s) =>
    s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]+'), '');

/// The artist to credit for [song], or '' when no single artist should be.
String creditedArtist(Song song) {
  final raw = song.artist.replaceAll(_noise, '').trim();
  final title = song.title;

  if (_mixWords.hasMatch(title)) return '';

  // "Drake - Hotline Bling (Slowed)" uploaded by someone who is not Drake.
  final parts = title.split(_split);
  if (parts.length >= 2) {
    final left = parts.first.replaceAll(_featuring, '').trim();
    final right = parts.sublist(1).join(' - ').trim();
    final l = _norm(left);
    final r = _norm(raw);
    if (left.isNotEmpty &&
        left.split(' ').length <= 4 &&
        !_versionOnly.hasMatch(right) &&
        (r.isEmpty || (!r.contains(l) && !l.contains(r)))) {
      return left;
    }
  }

  // A slowed/lyric/cover edit with no artist named, from a channel whose name
  // is nowhere in the title: the uploader is not the artist.
  if (_repostWords.hasMatch(title)) {
    final r = _norm(raw);
    if (r.isEmpty || !_norm(title).contains(r)) return '';
  }
  return raw;
}

/// Lower-cased key for the taste weights.
String artistKey(Song song) => creditedArtist(song).toLowerCase();

/// A mix, compilation or anonymous re-upload: fine to play if you chose it,
/// but never something for the AI to fetch on its own.
bool isMixOrReupload(Song song) =>
    _mixWords.hasMatch(song.title) ||
    (song.artist.isNotEmpty && creditedArtist(song).isEmpty);
