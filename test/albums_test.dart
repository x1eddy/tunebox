import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/innertube.dart';
import 'package:tunebox/state/albums.dart';

Song song(String id, String album, String artist, {String? file}) => Song(
  id: id, title: id, artist: artist, album: album, durationMs: 200000,
  source: file == null ? SongSource.youtube : SongSource.imported, tags: '',
  liked: false, blocked: false, inLibrary: true, autoAdded: false,
  playCount: 0, skipCount: 0, fileSize: 0, filePath: file,
  addedAt: DateTime(2026),
);

// Real responses from music.youtube.com (search "thriller michael jackson"
// with the Albums filter, and the Thriller album page).
Object? _fixture(String name) =>
    jsonDecode(File('test/fixtures/$name.json').readAsStringSync());

void main() {
  test('album search results', () {
    final albums = InnerTube.albumsFromSearch(_fixture('ytm_search'), 12);
    expect(albums, isNotEmpty);
    final first = albums.first;
    expect(first.title, 'Thriller');
    expect(first.artist, 'Michael Jackson');
    expect(first.kind, 'Album');
    expect(first.year, 1983);
    expect(first.browseId, startsWith('MPREb_'));
    expect(first.thumbnailUrl, startsWith('https://'));
  });

  test('album page: details and tracks in order', () {
    final d = AlbumDetail.parse('MPREb_x', _fixture('ytm_album'))!;
    expect(d.album.title, 'Thriller');
    expect(d.album.artist, 'Michael Jackson');
    expect(d.album.year, 1983);
    expect(d.info, contains('songs'));
    expect(d.tracks.length, 9);
    expect(d.tracks.first.title, "Wanna Be Startin' Somethin'");
    // no per-track artist on the page: the album artist stands in
    expect(d.tracks.first.author, 'Michael Jackson');
    expect(d.tracks.first.album, 'Thriller');
    expect(d.tracks.first.durationMs, (6 * 60 + 4) * 1000);
    expect(d.tracks.first.thumbnailUrl, contains('w544-h544'));
  });

  test('cover size rewrite', () {
    expect(
      albumArtAt('https://x/abc=w120-h120-l90-rj', 544),
      'https://x/abc=w544-h544-l90-rj',
    );
  });

  test('albums from disk: grouped by tag, in track-number order', () {
    final albums = localAlbums([
      song('t10', 'Hey Mister DJ!', 'Die Schlümpfe', file: '/m/10 - Fliegen.ogg'),
      song('t2', 'Hey Mister DJ!', 'Die Schlümpfe', file: '/m/02 - Mein Drache.ogg'),
      song('t1', 'Hey Mister DJ!', 'Die Schlümpfe', file: '/m/01 - Intro.ogg'),
      // one saved YouTube song is not an album; two are
      song('y1', 'Thriller', 'Michael Jackson'),
      song('b1', 'Bad', 'Michael Jackson'),
      song('b2', 'Bad', 'Michael Jackson'),
      // no album tag: not grouped
      song('x', '', 'Someone', file: '/m/x.mp3'),
    ]);
    expect(albums.map((a) => a.title), ['Bad', 'Hey Mister DJ!']);
    final dj = albums.last;
    expect(dj.songs.map((s) => s.id), ['t1', 't2', 't10']);
    expect(dj.local, isTrue);
    expect(dj.id, localAlbumId('Hey Mister DJ!', 'Die Schlümpfe'));
  });
}
