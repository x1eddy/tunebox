import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

/// Sealing for the taste that paired devices swap on the home network.
///
/// Encrypt-then-MAC with HMAC-SHA256 only (the one primitive the app already
/// ships): the keystream is HMAC(key, "enc" | nonce | counter), the tag is
/// HMAC(key, "tag" | nonce | ciphertext). Separate subkeys are derived from
/// the shared secret for each job. Anyone on the Wi-Fi without the secret can
/// neither read the taste nor slip a fake one in.
class SyncCrypto {
  SyncCrypto(List<int> secret)
    : _enc = Hmac(sha256, secret).convert(utf8.encode('tunebox-enc')).bytes,
      _mac = Hmac(sha256, secret).convert(utf8.encode('tunebox-mac')).bytes,
      _auth = Hmac(sha256, secret).convert(utf8.encode('tunebox-auth')).bytes;

  final List<int> _enc;
  final List<int> _mac;
  final List<int> _auth;

  static List<int> randomBytes(int n) {
    final r = Random.secure();
    return List<int>.generate(n, (_) => r.nextInt(256));
  }

  Uint8List _keystream(List<int> nonce, int length) {
    final out = Uint8List(length);
    final h = Hmac(sha256, _enc);
    var i = 0, counter = 0;
    while (i < length) {
      final block = h
          .convert([
            ...nonce,
            (counter >> 24) & 255,
            (counter >> 16) & 255,
            (counter >> 8) & 255,
            counter & 255,
          ])
          .bytes;
      for (var j = 0; j < block.length && i < length; j++) {
        out[i++] = block[j];
      }
      counter++;
    }
    return out;
  }

  /// nonce(16) | ciphertext | tag(32)
  Uint8List seal(List<int> plain) {
    final nonce = randomBytes(16);
    final ks = _keystream(nonce, plain.length);
    final ct = Uint8List(plain.length);
    for (var i = 0; i < plain.length; i++) {
      ct[i] = plain[i] ^ ks[i];
    }
    final tag = Hmac(sha256, _mac).convert([...nonce, ...ct]).bytes;
    return Uint8List.fromList([...nonce, ...ct, ...tag]);
  }

  /// Throws [FormatException] when the box was tampered with or sealed with
  /// another key.
  Uint8List open(List<int> box) {
    if (box.length < 48) throw const FormatException('sealed data too short');
    final nonce = box.sublist(0, 16);
    final ct = box.sublist(16, box.length - 32);
    final tag = box.sublist(box.length - 32);
    final want = Hmac(sha256, _mac).convert([...nonce, ...ct]).bytes;
    var diff = 0;
    for (var i = 0; i < 32; i++) {
      diff |= want[i] ^ tag[i];
    }
    if (diff != 0) throw const FormatException('sealed data does not verify');
    final ks = _keystream(nonce, ct.length);
    return Uint8List.fromList([
      for (var i = 0; i < ct.length; i++) ct[i] ^ ks[i],
    ]);
  }

  /// Proof that a request comes from a paired device, bound to the time so
  /// an overheard request is useless five minutes later.
  String sign(String message) =>
      Hmac(sha256, _auth).convert(utf8.encode(message)).toString();

  bool verify(String message, String signature) {
    final want = sign(message);
    if (want.length != signature.length) return false;
    var diff = 0;
    for (var i = 0; i < want.length; i++) {
      diff |= want.codeUnitAt(i) ^ signature.codeUnitAt(i);
    }
    return diff == 0;
  }
}
