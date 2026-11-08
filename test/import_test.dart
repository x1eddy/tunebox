import 'dart:io';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/db/database.dart';
import 'package:tunebox/data/services/artwork_service.dart';
import 'package:tunebox/data/services/import_service.dart';

void main() {
  late Directory dir;
  setUp(() async {
    dir = await Directory.systemTemp.createTemp('tbimport');
    await File('${dir.path}/01 - Cold Atlas - Sodium Lights.mp3').writeAsBytes(List.filled(4096, 0));
    await Directory('${dir.path}/sub').create();
    await File('${dir.path}/sub/Air - La Femme.flac').writeAsBytes(List.filled(2048, 7));
    await Directory('${dir.path}/.cache').create();
    await File('${dir.path}/.cache/hidden.mp3').writeAsBytes([1, 2, 3]);
    await File('${dir.path}/notes.txt').writeAsString('not audio');
    // a 1 GB "video": sparse, so it costs no disk, but its size is real
    final big = await File('${dir.path}/Concert Film.mp4').open(mode: FileMode.write);
    await big.setPosition(1024 * 1024 * 1024);
    await big.writeByte(0);
    await big.close();
  });
  tearDown(() => dir.delete(recursive: true));

  test('lists audio, skips hidden folders and other files', () {
    final names = listAudioPaths([dir.path]).map((p) => p.split('/').last).toSet();
    expect(names, {
      '01 - Cold Atlas - Sodium Lights.mp3',
      'La Femme.flac'.replaceFirst('La', 'Air - La'),
      'Concert Film.mp4',
    });
  });

  test('huge files are named from the file name, never parsed', () {
    final t = readTagsSafely('${dir.path}/Concert Film.mp4');
    expect(t.title, 'Concert Film');
    expect(t.size, greaterThan(1024 * 1024 * 1024));
  });

  test('broken files fall back to the file name', () {
    final t = readTagsSafely('${dir.path}/01 - Cold Atlas - Sodium Lights.mp3');
    expect(t.title, 'Sodium Lights');
    expect(t.artist, 'Cold Atlas');
  });

  test('a whole folder imports in the background with progress', () async {
    final db = AppDatabase(NativeDatabase.memory());
    final importer = ImportService(db, ArtworkService());
    final steps = await importer.scanFolders([dir.path]).toList();
    expect(steps.last.done, isTrue);
    expect(steps.last.total, 3);
    expect(steps.last.added, 3);
    final again = await importer.scanFolders([dir.path]).toList();
    expect(again.last.added, 0, reason: 'a second scan adds nothing new');
    await db.close();
  });
}
