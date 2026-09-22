// ignore_for_file: avoid_print, avoid_relative_lib_imports
// Dev probe: does YouTube Music search still answer, and with music only?
import '../lib/data/services/innertube.dart';
import '../lib/data/services/song_filter.dart';

Future<void> main(List<String> args) async {
  final yt = InnerTube();
  for (final q in args.isEmpty ? ['one', 'never gonna give you up'] : args) {
    print('--- musicSearch("$q")');
    try {
      final items = await yt.musicSearch(q, max: 8);
      for (final i in items) {
        final ok = looksLikeASong(i.title, i.durationMs, artist: i.author);
        print('  ${ok ? ' ' : 'x'} ${i.title} — ${i.author} '
            '(${(i.durationMs / 1000).round()}s) ${i.id}');
      }
      if (items.isNotEmpty) {
        print('--- musicRadio(${items.first.id})');
        final radio = await yt.musicRadio(items.first.id, max: 5);
        for (final i in radio) {
          print('    ${i.title} — ${i.author}');
        }
      }
    } catch (e) {
      print('  FAILED: $e');
    }
  }
  yt.dispose();
}
