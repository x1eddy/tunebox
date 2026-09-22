/// Tells songs apart from the rest of YouTube.
///
/// YouTube's plain search happily answers a music query with MMA livestreams,
/// basketball games and "I survived 100 days on 1 block". None of that is
/// music, and a shelf full of it makes the AI look stupid.
library;

const _maxLength = Duration(minutes: 13);
const _minLength = Duration(seconds: 45);

/// Phrases that mean "this is not one song" wherever they appear.
const _junkPhrases = [
  'full album', 'greatest hits', 'top songs', 'best songs', 'playlist',
  'mix 20', 'nonstop', 'compilation', 'megamix', '1 hour', 'one hour',
  'hours of', 'all songs', 'best of', 'radio mix', 'live stream',
  'livestream', 'full fight', 'full match', 'full episode', 'press conference',
  'days on', 'day in the life', 'tier list', 'try not to',
];

/// Whole words that mean "this is not music at all". Matched on word
/// boundaries so "Fights" never trips on "Fight Song".
final _junkWords = RegExp(
  r'\b('
  'vs|versus|ufc|nba|nfl|ncaa|mlb|wwe|espn|fifa|'
  'highlights|gameplay|walkthrough|speedrun|letsplay|'
  'podcast|trailer|reaction|unboxing|tutorial|vlog|recap|'
  'episode|season|interview|documentary|news|newscast|'
  'halftime|quarterfinal|semifinal|matchday|tournament|'
  'boxing|wrestling|kickboxing|muay|grappling|knockout|'
  'bantamweight|featherweight|welterweight|middleweight|heavyweight|'
  'flyweight|lightweight|preview|'
  'minecraft|fortnite|roblox|speedrunning'
  r')\b',
  caseSensitive: false,
);

/// Channels that never publish songs.
final _junkChannels = RegExp(
  r'\b('
  'championship|sports|sport|fights|fighting|esports|gaming|games|'
  'news|tv|network|league|academy|highlights|podcast|review|reviews'
  r')\b',
  caseSensitive: false,
);

/// Whether a search hit looks like an actual song.
///
/// [strict] also rejects sports, gaming and talk content by keyword. It is on
/// for plain YouTube results and off for YouTube Music ones, which are music
/// by construction — no need to risk throwing out "Fight Song" there.
bool looksLikeASong(
  String title,
  int durationMs, {
  String artist = '',
  bool strict = false,
}) {
  if (durationMs > _maxLength.inMilliseconds) return false;
  if (durationMs > 0 && durationMs < _minLength.inMilliseconds) return false;

  final lower = title.toLowerCase();
  if (_junkPhrases.any(lower.contains)) return false;
  if (!strict) return true;

  // The giveaway is as often in the channel name as in the title:
  // "ONE Bantamweight ... Preview" by "Rambolek vs. Yod-IQ".
  if (_junkWords.hasMatch('$lower ${artist.toLowerCase()}')) return false;
  if (artist.isNotEmpty && _junkChannels.hasMatch(artist.toLowerCase())) {
    return false;
  }
  // "[Live in HD] ONE Friday Fights 171: Klarob vs. Sornsueknoi"
  if (RegExp(r'\b\d{2,4}\s*:\s*\S').hasMatch(title)) return false;
  return true;
}
