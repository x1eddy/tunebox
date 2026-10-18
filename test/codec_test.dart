import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/data/services/transfer_service.dart';

void main() {
  final sample = {'format': 1, 'songs': [], 'device': 'x'};

  test('codec reads gzip, text, plain JSON and BOM files', () {
    expect(TasteCodec.decode(TasteCodec.gzipJson(sample))['device'], 'x');
    expect(TasteCodec.decodeText(TasteCodec.toText(sample))['device'], 'x');
    expect(
      TasteCodec.decodeText('  look: ${TasteCodec.toText(sample)}\n')['device'],
      'x',
    );
    expect(TasteCodec.decode(utf8.encode(jsonEncode(sample)))['device'], 'x');
    expect(
      TasteCodec.decode(utf8.encode('﻿${jsonEncode(sample)}'))['device'],
      'x',
    );
    expect(() => TasteCodec.decodeText('hello'), throwsFormatException);
  });
}
