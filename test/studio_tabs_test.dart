import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunebox/features/studio/studio_page.dart';
import 'package:tunebox/l10n/app_localizations.dart';
import 'package:tunebox/state/appearance.dart';
import 'package:tunebox/state/settings.dart';

void main() {
  testWidgets('a tab switched off can be switched on again', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final container = ProviderContainer(overrides: [prefsProvider.overrideWithValue(prefs)]);
    addTearDown(container.dispose);
    tester.view.physicalSize = const Size(1080, 6000);
    tester.view.devicePixelRatio = 2;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(UncontrolledProviderScope(
      container: container,
      child: const MaterialApp(
        localizationsDelegates: L.localizationsDelegates,
        supportedLocales: L.supportedLocales,
        home: StudioPage(),
      ),
    ));
    await tester.pumpAndSettle();

    Finder homeSwitch() => find.descendant(
          of: find.byKey(const ValueKey('tab0')),
          matching: find.byType(Switch),
        );
    expect(tester.widget<Switch>(homeSwitch()).value, isTrue);

    await tester.tap(homeSwitch());
    await tester.pumpAndSettle();
    expect(container.read(appearanceProvider).tabs, isNot(contains(0)));

    final sw = tester.widget<Switch>(homeSwitch());
    expect(sw.value, isFalse);
    expect(sw.onChanged, isNotNull, reason: 'the switch must still be usable');
    await tester.tap(homeSwitch());
    await tester.pumpAndSettle();
    expect(container.read(appearanceProvider).tabs, contains(0));
  });
}
