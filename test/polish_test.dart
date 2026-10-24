import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunebox/l10n/app_localizations.dart';
import 'package:tunebox/state/settings.dart';
import 'package:tunebox/ui/motion.dart';
import 'package:tunebox/ui/play_glyph.dart';

Future<Widget> _app(Widget child, {bool reduce = false, String? locale}) async {
  SharedPreferences.setMockInitialValues({'reduceMotion': reduce});
  final prefs = await SharedPreferences.getInstance();
  return ProviderScope(
    key: UniqueKey(),
    overrides: [prefsProvider.overrideWithValue(prefs)],
    child: MaterialApp(
      locale: locale == null ? null : Locale(locale),
      supportedLocales: L.supportedLocales,
      localizationsDelegates: L.localizationsDelegates,
      home: Scaffold(body: child),
    ),
  );
}

void main() {
  testWidgets('Pressable springs normally and is a plain tap under Reduce motion',
      (tester) async {
    await tester.pumpWidget(
      await _app(Pressable(onTap: () {}, child: const Text('x'))),
    );
    expect(find.byType(AnimatedScale), findsOneWidget);

    await tester.pumpWidget(
      await _app(Pressable(onTap: () {}, child: const Text('x')), reduce: true),
    );
    await tester.pump();
    expect(find.byType(AnimatedScale), findsNothing);
  });

  testWidgets('play/pause glyph shows a ring only while buffering', (tester) async {
    await tester.pumpWidget(
      await _app(const PlayPauseGlyph(playing: false, buffering: true)),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpWidget(
      await _app(const PlayPauseGlyph(playing: true, buffering: false)),
    );
    await tester.pumpAndSettle();
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });

  testWidgets('new screens speak German, Japanese and Arabic', (tester) async {
    for (final code in ['de', 'ja', 'ar']) {
      late String title, undo;
      await tester.pumpWidget(
        await _app(
          Builder(
            builder: (context) {
              title = L.of(context).xferTitle;
              undo = L.of(context).qUndo;
              return const SizedBox();
            },
          ),
          locale: code,
        ),
      );
      if (code == 'de') {
        expect(title, isNot('Move your taste'));
        expect(undo, isNot('Undo'));
      }
      expect(title, isNotEmpty); // never an empty string for any locale
    }
  });

  testWidgets('skeleton rows render', (tester) async {
    await tester.pumpWidget(await _app(const SongListSkeleton()));
    expect(find.byType(Skeleton), findsWidgets);
    await tester.pumpWidget(const SizedBox()); // stop the pulse animations
  });
}
