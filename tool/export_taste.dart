// ignore_for_file: avoid_print
// Writes this machine's taste to a transfer file:
//   flutter test tool/export_taste.dart
import 'dart:convert';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/backup_service.dart';

void main() {
  test('export the desktop library and model', () async {
    final home = Platform.environment['HOME'];
    final db = AppDatabase(NativeDatabase(File('$home/Documents/tunebox.sqlite')));
    final backup = await BackupService(db).buildBackup();

    final out = File('$home/temp/tunebox-taste.json');
    await out.writeAsString(
      const JsonEncoder.withIndent('  ').convert(backup),
      flush: true,
    );

    print('songs:     ${(backup['songs'] as List).length}');
    print('weights:   ${(backup['affinities'] as List).length}');
    print('plays:     ${(backup['events'] as List).length}');
    print('rules:     ${(backup['artistRules'] as List).length}');
    print('written:   ${out.path} '
        '(${(out.lengthSync() / 1024).toStringAsFixed(0)} KB)');
    await db.close();
  });
}
