import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunebox/state/settings.dart';

void main() {
  test('only changed settings are written, and they load back', () async {
    SharedPreferences.setMockInitialValues({});
    final p = await SharedPreferences.getInstance();
    final before = Settings.load(p);
    await before.save(p);
    final keysBefore = p.getKeys().length;

    final after = before.copyWith(
      pureBlack: true,
      themeMode: ThemeMode.light,
      watchedFolders: ['/music'],
    );
    await after.saveChanges(p, before);
    final back = Settings.load(p);
    expect(back.pureBlack, isTrue);
    expect(back.themeMode, ThemeMode.light);
    expect(back.watchedFolders, ['/music']);
    expect(back.smartShuffle, before.smartShuffle);
    expect(p.getKeys().length, keysBefore);
  });
}
