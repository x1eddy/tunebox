import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/app/theme.dart';

void main() {
  test('reduce motion removes the iOS push', () {
    final on = buildTheme(seed: Colors.pink, brightness: Brightness.dark);
    final off = buildTheme(
      seed: Colors.pink,
      brightness: Brightness.dark,
      reduceMotion: true,
    );
    expect(
      on.pageTransitionsTheme.builders[TargetPlatform.android],
      isA<CupertinoPageTransitionsBuilder>(),
    );
    expect(
      off.pageTransitionsTheme.builders[TargetPlatform.android],
      isNot(isA<CupertinoPageTransitionsBuilder>()),
    );
  });
}
