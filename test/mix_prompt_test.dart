import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/ai/mix_prompt.dart';

void main() {
  test('reads a full sentence', () {
    final p = parseMixPrompt(
      'rainy sunday 2000s rock, no Linkin Park, getting faster, 20 songs',
    );
    expect(p.tags, containsAll(['rock', 'chill', 'acoustic']));
    expect(p.decades, {2000});
    expect(p.excludeArtists, ['linkin park']);
    expect(p.curve, EnergyCurve.rising);
    expect(p.songs, 20);
  });

  test('decades in every spelling', () {
    expect(parseMixPrompt('80s synthwave').decades, {1980});
    expect(parseMixPrompt("90's hip hop").decades, {1990});
    expect(parseMixPrompt('1970s funk').decades, {1970});
    expect(parseMixPrompt('nineties pop').decades, {1990});
    expect(parseMixPrompt('10s pop').decades, {2010});
  });

  test('years and ranges', () {
    final one = parseMixPrompt('songs from 2016');
    expect(one.yearFits(2016), isTrue);
    expect(one.yearFits(2017), isFalse);
    final range = parseMixPrompt('rap 2010 to 2014');
    expect(range.yearFits(2012), isTrue);
    expect(range.yearFits(2015), isFalse);
  });

  test('seeds, genre exclusions and energy', () {
    final p = parseMixPrompt('workout like Daft Punk without metal');
    expect(p.likeArtists, ['daft punk']);
    expect(p.excludeTags, contains('metal'));
    expect(p.tags, isNot(contains('metal')));
    expect(p.energy, greaterThan(0));
    expect(parseMixPrompt('calm piano to sleep').energy, lessThan(0));
    expect(parseMixPrompt('wind down after work').curve, EnergyCurve.falling);
  });

  test('length in time', () {
    expect(parseMixPrompt('one hour of jazz, 1 hour').songs, 17);
    expect(parseMixPrompt('35 minutes of lofi').songs, 10);
  });

  test('"hip hop" is one genre, not "hop"', () {
    final p = parseMixPrompt('old school hip hop');
    expect(p.tags, containsAll(['hip hop', 'rap']));
  });

  test('unknown words become search terms, not nothing', () {
    final p = parseMixPrompt('songs for my grandmas birthday');
    expect(p.tags, isEmpty);
    expect(p.searchTerms.join(' '), contains('grandmas birthday'));
  });
}
