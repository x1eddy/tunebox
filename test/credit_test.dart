import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/ai/credit.dart';
import 'package:tunebox/data/db/database.dart';

Song song(String title, String artist) => Song(
      id: 'x', title: title, artist: artist, album: '', source: SongSource.youtube,
      durationMs: 200000, tags: '', playCount: 0, skipCount: 0, liked: false,
      blocked: false, inLibrary: true, autoAdded: false, fileSize: 0,
      addedAt: DateTime(2026), filePath: null,
      artworkPath: null, artworkUrl: null, year: null,
    );

void main() {
  test('reposts credit the real artist or nobody', () {
    expect(creditedArtist(song('Drake - Hotline Bling (Slowed + Reverb)', 'Reverb Kingdom')), 'Drake');
    expect(creditedArtist(song('Best of Drake 1 hour mix', 'Chill Nation')), '');
    expect(creditedArtist(song('Blinding Lights (sped up)', 'Sped Up Songs')), '');
    expect(creditedArtist(song('Hotline Bling - Remastered 2011', 'Drake')), 'Drake');
    expect(creditedArtist(song('Drake - Hotline Bling', 'Drake')), 'Drake');
    expect(creditedArtist(song('Billie Jean', 'Michael Jackson - Topic')), 'Michael Jackson');
  });
}
