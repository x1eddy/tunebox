import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/features/profiles/profile_sheet.dart';
import 'package:tunebox/state/owner.dart';
import 'package:tunebox/state/profiles.dart';

void main() {
  // The test run is a public-style build: no TUNEBOX_OWNER flag. The owner
  // build itself is exercised by `flutter test --dart-define=TUNEBOX_OWNER=true`.
  test('a normal build has no owner mode at all', () {
    expect(kOwnerBuild, isFalse);
    expect(isOwnerProfile(Profile.defaultId), isFalse);
    expect(isOwnerProfile('anyone'), isFalse);
  });

  testWidgets('no crown or Owner tag without the owner build', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Row(
            children: [
              ProfileAvatar(Profile(Profile.defaultId, 'Max')),
              OwnerChip(Profile.defaultId),
            ],
          ),
        ),
      ),
    );
    expect(find.byIcon(Icons.workspace_premium_rounded), findsNothing);
    expect(find.text('Owner'), findsNothing);
  });

  test('the log is not collected in a normal build', () {
    OwnerLog.clear();
    OwnerLog.add('something');
    expect(OwnerLog.lines, isEmpty);
  });
}
