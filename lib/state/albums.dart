import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/database.dart';
import '../data/services/innertube.dart' show AlbumItem, albumArtAt;
import 'providers.dart';

/// One album, wherever it comes from: YouTube Music (id "MPREb_…") or the
/// songs on this device grouped by their album tag (id "local~…").
class AlbumView {
  const AlbumView({
    required this.id,
    required this.title,
    required this.artist,
    required this.songs,
    this.kind = 'Album',
    this.year,
    this.info = '',
    this.artUrl,
  });

  final String id;
  final String title;
  final String artist;
  final List<Song> songs;
  final String kind;
  final int? year;

  /// "9 songs • 42 minutes" for YouTube albums; empty for local ones.
  final String info;

  /// Cover for YouTube albums; local albums use their first song's art.
  final String? artUrl;

  bool get local => id.startsWith(localAlbumPrefix);
}

const localAlbumPrefix = 'local~';

/// A stable id for "this album by this artist" on this device.
String localAlbumId(String album, String artist) =>
    localAlbumPrefix +
    base64Url.encode(utf8.encode('${album.trim()}\u0001${artist.trim()}'));

(String, String)? _decodeLocal(String id) {
  try {
    final parts = utf8
        .decode(base64Url.decode(id.substring(localAlbumPrefix.length)))
        .split('\u0001');
    return parts.length == 2 ? (parts[0], parts[1]) : null;
  } catch (_) {
    return null;
  }
}

/// "02 - Foo.flac" before "10 - Bar.flac": numbers compare as numbers, so
/// files named by track number play in album order.
int _natural(String a, String b) {
  final re = RegExp(r'(\d+)|(\D+)');
  final x = re.allMatches(a.toLowerCase()).toList();
  final y = re.allMatches(b.toLowerCase()).toList();
  for (var i = 0; i < x.length && i < y.length; i++) {
    final p = x[i].group(0)!, q = y[i].group(0)!;
    final pn = int.tryParse(p), qn = int.tryParse(q);
    final c = pn != null && qn != null ? pn.compareTo(qn) : p.compareTo(q);
    if (c != 0) return c;
  }
  return x.length.compareTo(y.length);
}

String _fileName(String path) => path.split(RegExp(r'[/\\]')).last;

List<Song> _albumOrder(List<Song> songs) {
  final files = songs.every((s) => s.filePath != null);
  return [...songs]..sort(
    files
        ? (a, b) => _natural(_fileName(a.filePath!), _fileName(b.filePath!))
        : (a, b) => a.addedAt.compareTo(b.addedAt),
  );
}

/// The albums among the songs on this device: imported files (by their
/// album tag) and saved songs. A saved YouTube song alone does not make an
/// album; two of the same album do.
List<AlbumView> localAlbums(Iterable<Song> songs) {
  final groups = <String, List<Song>>{};
  for (final s in songs) {
    if (s.blocked || s.album.trim().isEmpty) continue;
    groups.putIfAbsent(localAlbumId(s.album, s.artist), () => []).add(s);
  }
  final out = <AlbumView>[];
  groups.forEach((id, list) {
    final imported = list.any((s) => s.filePath != null);
    if (list.length < 2 && !imported) return;
    final first = list.first;
    out.add(
      AlbumView(
        id: id,
        title: first.album.trim(),
        artist: first.artist.trim(),
        year: list.map((s) => s.year).whereType<int>().firstOrNull,
        songs: _albumOrder(list),
      ),
    );
  });
  out.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
  return out;
}

/// Everything on this device that can belong to an album.
final deviceSongsProvider = Provider<List<Song>>((ref) {
  final byId = <String, Song>{};
  for (final list in [
    ref.watch(libraryProvider).value,
    ref.watch(importedProvider).value,
    ref.watch(downloadedProvider).value,
  ]) {
    for (final s in list ?? const <Song>[]) {
      byId[s.id] = s;
    }
  }
  return byId.values.toList();
});

final localAlbumsProvider = Provider<List<AlbumView>>(
  (ref) => localAlbums(ref.watch(deviceSongsProvider)),
);

final albumProvider = FutureProvider.autoDispose.family<AlbumView, String>((
  ref,
  id,
) async {
  if (id.startsWith(localAlbumPrefix)) {
    final key = _decodeLocal(id);
    final found = ref
        .watch(localAlbumsProvider)
        .where((a) => a.id == id)
        .firstOrNull;
    if (found != null) return found;
    return AlbumView(
      id: id,
      title: key?.$1 ?? '',
      artist: key?.$2 ?? '',
      songs: const [],
    );
  }
  final (detail, rows) = await ref.read(ytProvider).album(id);
  final db = ref.read(dbProvider);
  await db.cacheSongs(rows);
  final songs = (await db.songsByIds([
    for (final r in rows) r.id.value,
  ])).where((s) => !s.blocked).toList();
  final a = detail.album;
  return AlbumView(
    id: id,
    title: a.title,
    artist: a.artist,
    kind: a.kind,
    year: a.year,
    info: detail.info,
    artUrl: a.thumbnailUrl.isEmpty ? null : albumArtAt(a.thumbnailUrl, 544),
    songs: songs,
  );
});

/// YouTube Music albums for a search, or for an artist's page.
final albumSearchProvider = FutureProvider.autoDispose
    .family<List<AlbumItem>, String>((ref, query) async {
      if (query.trim().isEmpty) return const [];
      try {
        return await ref.read(ytProvider).searchAlbums(query);
      } catch (_) {
        return const []; // offline: the page still works without albums
      }
    });
