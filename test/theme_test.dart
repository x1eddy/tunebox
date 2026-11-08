import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/app/theme.dart';
import 'package:tunebox/state/appearance.dart';

void main() {
  test('every font pair builds with Bold text on, and is bolder', () {
    for (final pair in FontPair.values) {
      for (final b in Brightness.values) {
        final plain = buildTheme(seed: Colors.blue, brightness: b, appearance: Appearance(fonts: pair));
        final bold = buildTheme(seed: Colors.blue, brightness: b, boldText: true, appearance: Appearance(fonts: pair));
        final p = plain.textTheme.bodyMedium!.fontWeight ?? FontWeight.w400;
        expect(bold.textTheme.bodyMedium!.fontWeight!.value, greaterThan(p.value), reason: '$pair');
      }
    }
  });
}
