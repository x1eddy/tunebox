import 'package:flutter/foundation.dart';

/// How the energy should move through a mix.
enum EnergyCurve { steady, rising, falling }

/// What a one-line description asks for, read entirely on the device.
@immutable
class MixPrompt {
  const MixPrompt({
    required this.text,
    this.tags = const {},
    this.decades = const {},
    this.yearFrom,
    this.yearTo,
    this.likeArtists = const [],
    this.excludeArtists = const [],
    this.excludeTags = const {},
    this.energy,
    this.curve = EnergyCurve.steady,
    this.songs = 25,
    this.searchTerms = const [],
  });

  final String text;

  /// Genres and moods to lean towards (lower case, as songs are tagged).
  final Set<String> tags;

  /// 1980, 1990… for "80s", "nineties".
  final Set<int> decades;
  final int? yearFrom;
  final int? yearTo;

  /// "like Daft Punk", "similar to Air".
  final List<String> likeArtists;
  final List<String> excludeArtists;
  final Set<String> excludeTags;

  /// -1 calm … +1 hype, null when the text does not say.
  final double? energy;
  final EnergyCurve curve;

  /// How many songs to aim for.
  final int songs;

  /// Words worth sending to a search when the library runs short.
  final List<String> searchTerms;

  bool get isEmpty =>
      tags.isEmpty &&
      decades.isEmpty &&
      yearFrom == null &&
      likeArtists.isEmpty &&
      energy == null &&
      searchTerms.isEmpty;

  bool yearFits(int? year) {
    if (decades.isEmpty && yearFrom == null) return true;
    if (year == null) return false;
    if (decades.contains(year ~/ 10 * 10)) return true;
    if (yearFrom != null && year >= yearFrom! && year <= (yearTo ?? yearFrom!)) {
      return true;
    }
    return false;
  }
}

/// Words that mean a genre or mood, mapped to the tags songs carry. Several
/// words can point at the same tags.
const _vocabulary = <String, List<String>>{
  // genres
  'rock': ['rock'], 'metal': ['metal'], 'punk': ['punk'], 'pop': ['pop'],
  'indie': ['indie'], 'jazz': ['jazz'], 'blues': ['blues'], 'soul': ['soul'],
  'funk': ['funk'], 'disco': ['disco'], 'house': ['house'],
  'techno': ['techno'], 'trance': ['trance'], 'edm': ['edm', 'electronic'],
  'electronic': ['electronic'], 'dubstep': ['dubstep'],
  'dnb': ['drum and bass'], 'drum and bass': ['drum and bass'],
  'hip hop': ['hip hop', 'rap'], 'hiphop': ['hip hop', 'rap'],
  'rap': ['rap', 'hip hop'], 'trap': ['trap'], 'drill': ['drill'],
  'r&b': ['r&b', 'rnb'], 'rnb': ['r&b', 'rnb'], 'reggae': ['reggae'],
  'reggaeton': ['reggaeton', 'latin'], 'latin': ['latin'],
  'afrobeats': ['afrobeats', 'afro'], 'afro': ['afrobeats', 'afro'],
  'amapiano': ['amapiano'], 'kpop': ['k-pop', 'kpop'], 'k-pop': ['k-pop', 'kpop'],
  'country': ['country'], 'folk': ['folk'], 'acoustic': ['acoustic'],
  'classical': ['classical'], 'piano': ['piano'], 'orchestral': ['orchestral'],
  'lofi': ['lofi', 'lo-fi'], 'lo-fi': ['lofi', 'lo-fi'],
  'synthwave': ['synthwave', 'retrowave'], 'ambient': ['ambient'],
  'gospel': ['gospel'], 'soundtrack': ['soundtrack'], 'phonk': ['phonk'],
  'grunge': ['grunge', 'rock'], 'emo': ['emo'],
  // moods and moments
  'chill': ['chill'], 'relax': ['chill', 'relaxing'], 'sad': ['sad'],
  'happy': ['happy'], 'romantic': ['love', 'romantic'], 'love': ['love'],
  'rainy': ['chill', 'acoustic', 'lofi'], 'rain': ['chill', 'acoustic'],
  'sunny': ['happy', 'summer'], 'summer': ['summer', 'happy'],
  'winter': ['chill', 'acoustic'], 'night': ['night'], 'late night': ['night', 'chill'],
  'study': ['lofi', 'instrumental', 'focus'], 'focus': ['focus', 'instrumental'],
  'sleep': ['sleep', 'ambient'], 'party': ['party', 'dance'],
  'dance': ['dance'], 'workout': ['workout', 'gym'], 'gym': ['workout', 'gym'],
  'running': ['workout', 'running'], 'run': ['workout', 'running'],
  'road trip': ['road trip', 'rock'], 'driving': ['driving', 'road trip'],
  'instrumental': ['instrumental'], 'live': ['live'],
  // a few German words, for the people who type them
  'traurig': ['sad'], 'entspannt': ['chill'], 'ruhig': ['chill'],
  'lernen': ['lofi', 'focus'], 'schlafen': ['sleep'],
};

const _calm = {
  'calm', 'chill', 'relax', 'relaxing', 'sleep', 'soft', 'quiet', 'study',
  'focus', 'sad', 'rainy', 'acoustic', 'ambient', 'mellow', 'slow', 'lofi',
  'ruhig', 'entspannt', 'schlafen',
};
const _hype = {
  'party', 'workout', 'gym', 'hype', 'dance', 'run', 'running', 'energetic',
  'loud', 'banger', 'bangers', 'fast', 'upbeat', 'pump', 'rave',
};

const _numberWords = {
  'sixties': 1960, 'seventies': 1970, 'eighties': 1980, 'nineties': 1990,
};

/// Reads "rainy sunday 2000s rock, no Linkin Park, getting faster, 20 songs".
MixPrompt parseMixPrompt(String input) {
  var text = ' ${input.toLowerCase().replaceAll(RegExp(r'[“”"!?]'), ' ')} ';
  final tags = <String>{};
  final decades = <int>{};
  final like = <String>[];
  final noArtists = <String>[];
  final noTags = <String>{};
  int? from, to;
  var songs = 25;
  var curve = EnergyCurve.steady;
  var energyVotes = 0;

  String take(RegExp r, void Function(Match) f) {
    text = text.replaceAllMapped(r, (m) {
      f(m);
      return ' , ';
    });
    return text;
  }

  // length: "20 songs", "10 tracks", "1 hour", "45 minutes"
  take(RegExp(r'\b(\d{1,3})\s*(songs?|tracks?)\b'), (m) {
    songs = int.parse(m[1]!).clamp(5, 100);
  });
  take(RegExp(r'\b(\d{1,3}(?:[.,]\d)?)\s*(hours?|hrs?|h)\b'), (m) {
    final h = double.parse(m[1]!.replaceAll(',', '.'));
    songs = (h * 60 / 3.5).round().clamp(5, 100);
  });
  take(RegExp(r'\b(\d{1,3})\s*(minutes?|mins?)\b'), (m) {
    songs = (int.parse(m[1]!) / 3.5).round().clamp(5, 100);
  });

  // energy over time
  take(
    RegExp(r'\b(getting (faster|louder|harder)|build(ing)? up|ramp(ing)? up|warm(ing)? up|crescendo|start slow)\b'),
    (_) => curve = EnergyCurve.rising,
  );
  take(
    RegExp(r'\b(wind(ing)? down|cool(ing)? down|getting (slower|calmer|softer)|end slow|fade out)\b'),
    (_) => curve = EnergyCurve.falling,
  );

  // exclusions: "no linkin park", "without metal", "except drake"
  take(
    RegExp(r"\b(?:no|without|not|except|but not|kein|keine|ohne)\s+([a-z0-9&'.\- ]{2,40}?)(?=\s*(?:,|;|\band\b|\bor\b|\bjust\b|$))"),
    (m) {
      final what = m[1]!.trim();
      final mapped = _vocabulary[what];
      if (mapped != null) {
        noTags.addAll(mapped);
      } else if (what.isNotEmpty) {
        noArtists.add(what);
      }
    },
  );

  // seeds: "like daft punk", "similar to air", "in the style of x"
  take(
    RegExp(r"\b(?:like|similar to|sounds like|in the style of|à la|wie)\s+([a-z0-9&'.\- ]{2,40}?)(?=\s*(?:,|;|\band\b|\bwith\b|$))"),
    (m) {
      final who = m[1]!.trim();
      if (_vocabulary.containsKey(who)) {
        tags.addAll(_vocabulary[who]!);
      } else {
        like.add(who);
      }
    },
  );

  // decades and years
  take(RegExp(r"\b(?:19|20)?(\d)0'?s\b"), (m) {
    final d = int.parse(m[1]!);
    final full = m[0]!.length >= 5
        ? int.parse(m[0]!.substring(0, 4).replaceAll("'", ''))
        : (d >= 5 ? 1900 + d * 10 : 2000 + d * 10);
    decades.add(full ~/ 10 * 10);
  });
  for (final e in _numberWords.entries) {
    if (text.contains(e.key)) {
      decades.add(e.value);
      text = text.replaceAll(e.key, ' , ');
    }
  }
  take(RegExp(r'\b(19[5-9]\d|20[0-3]\d)\s*(?:-|to|bis)\s*(19[5-9]\d|20[0-3]\d)\b'), (m) {
    from = int.parse(m[1]!);
    to = int.parse(m[2]!);
  });
  take(RegExp(r'\b(19[5-9]\d|20[0-3]\d)\b'), (m) {
    from ??= int.parse(m[1]!);
    to ??= from;
  });

  // genres and moods; longest phrases first so "hip hop" beats "hop"
  final words = _vocabulary.keys.toList()
    ..sort((a, b) => b.length.compareTo(a.length));
  for (final w in words) {
    final r = RegExp('\\b${RegExp.escape(w)}\\b');
    if (r.hasMatch(text)) {
      tags.addAll(_vocabulary[w]!);
      text = text.replaceAll(r, ' , ');
      if (_calm.contains(w)) energyVotes--;
      if (_hype.contains(w)) energyVotes++;
    }
  }
  for (final w in text.split(RegExp(r'[\s,;]+'))) {
    if (_calm.contains(w)) energyVotes--;
    if (_hype.contains(w)) energyVotes++;
  }
  tags.removeAll(noTags);

  final rest = text
      .split(RegExp(r'[,;]+'))
      .map((p) => p.replaceAll(RegExp(r'\b(songs?|music|mix|playlist|some|a|for|the|with|and|my|me)\b'), ' ')
          .replaceAll(RegExp(r'\s+'), ' ')
          .trim())
      .where((p) => p.length > 2)
      .toList();

  return MixPrompt(
    text: input.trim(),
    tags: tags,
    decades: decades,
    yearFrom: from,
    yearTo: to,
    likeArtists: like,
    excludeArtists: noArtists,
    excludeTags: noTags,
    energy: energyVotes == 0 ? null : (energyVotes / 2).clamp(-1.0, 1.0),
    curve: curve,
    songs: songs,
    searchTerms: rest,
  );
}
