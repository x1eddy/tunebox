import '../../ai/credit.dart';
import '../db/database.dart';

/// Words in brackets that mean "the same song again", not a different one.
/// A remix or a live take is a different listen and stays.
final _sameSong = RegExp(
  r'\s*[\(\[][^\)\]]*\b(re-?recorded|remaster(ed)?|radio edit|single version|'
  r'album version|original mix|explicit|clean|official( music)? (video|audio)|'
  r'audio|lyrics?|visuali[sz]er|hd|hq|4k|mono|stereo|\d{4} version)\b[^\)\]]*[\)\]]',
  caseSensitive: false,
);

/// The song a title is, without the "(Re-Recorded / Remastered 2009)" around it.
String versionKey(Song s) {
  var t = s.title.toLowerCase();
  // "Artist - Title" uploads
  final dash = t.indexOf(' - ');
  if (dash > 0) t = t.substring(dash + 3);
  t = t.replaceAll(_sameSong, '');
  t = t.replaceAll(RegExp(r'\s+(ft\.?|feat\.?|featuring)\s.*$'), '');
  t = t.replaceAll(RegExp(r'[^\p{L}\p{N} ]', unicode: true), ' ');
  return '${artistKey(s)}|${t.replaceAll(RegExp(r'\s+'), ' ').trim()}';
}

/// Keeps one entry per song. The first one wins (lists come best-first), but
/// a plain title beats a decorated one, and a song you already have beats a
/// search hit.
List<Song> collapseVersions(List<Song> songs) {
  final chosen = <String, int>{};
  final out = <Song>[];
  int rank(Song s) =>
      (s.inLibrary ? 0 : 2) + (_sameSong.hasMatch(s.title) ? 1 : 0);
  for (final s in songs) {
    final key = versionKey(s);
    final at = chosen[key];
    if (at == null) {
      chosen[key] = out.length;
      out.add(s);
    } else if (rank(s) < rank(out[at])) {
      out[at] = s;
    }
  }
  return out;
}
