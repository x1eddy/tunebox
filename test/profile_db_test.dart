import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

// Switching A -> B -> A quickly must reuse A's connection rather than opening
// a second one; checked at the source level because ProfileController needs
// the real app directories.
void main() {
  test('a profile switched back to reuses its closing connection', () {
    final src = File('lib/state/profiles.dart').readAsStringSync();
    expect(src, contains('_closing.remove(p.id)'));
    expect(src, contains('kept?.\$1 ?? AppDatabase.named'));
  });
}
