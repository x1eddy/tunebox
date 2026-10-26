@TestOn('vm')
library;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/features/profiles/profile_sheet.dart';
import 'package:tunebox/state/owner.dart';
import 'package:tunebox/state/profiles.dart';

// Only meaningful with --dart-define=TUNEBOX_OWNER=true; skipped otherwise.
void main() {
  final skip = kOwnerBuild ? null : 'needs --dart-define=TUNEBOX_OWNER=true';

  testWidgets('the crown is on the first profile only', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Row(
            children: [
              ProfileAvatar(Profile(Profile.defaultId, 'Max')),
              ProfileAvatar(Profile('guest', 'Guest')),
              OwnerChip(Profile.defaultId),
              OwnerChip('guest'),
            ],
          ),
        ),
      ),
    );
    expect(find.byIcon(Icons.workspace_premium_rounded), findsOneWidget);
    expect(find.text('Owner'), findsOneWidget);
  }, skip: skip != null);

  test('the log keeps the newest 400 lines', () {
    OwnerLog.clear();
    for (var i = 0; i < 450; i++) {
      OwnerLog.add('line $i');
    }
    expect(OwnerLog.lines.length, 400);
    expect(OwnerLog.lines.last, endsWith('line 449'));
    OwnerLog.clear();
    expect(OwnerLog.lines, isEmpty);
  }, skip: skip != null);
}
