import 'package:flutter/foundation.dart';

/// True only in a build made for the owner's own devices:
///
///   flutter build apk --release --dart-define=TUNEBOX_OWNER=true
///
/// Public releases never pass the flag, so the compiler removes everything
/// behind it: no rank, no tools, no hidden gesture. Because it is a build
/// choice and not a setting, nobody can switch it on from inside the app.
const kOwnerBuild = bool.fromEnvironment('TUNEBOX_OWNER');

/// The profile that carries the Owner rank: the first one, which holds the
/// library that existed before profiles did.
bool isOwnerProfile(String profileId) => kOwnerBuild && profileId == 'default';

/// A small in-memory trail of what went wrong, for the owner tools. It is
/// cheap and never leaves the device; only an owner build can show it.
class OwnerLog {
  static const _max = 400;
  static final _lines = <String>[];

  /// Bumped on every change so the page can rebuild.
  static final changes = ValueNotifier<int>(0);

  static List<String> get lines => List.unmodifiable(_lines);

  static void add(String message) {
    if (!kOwnerBuild) return;
    final n = DateTime.now();
    String two(int v) => v.toString().padLeft(2, '0');
    _lines.add('${two(n.hour)}:${two(n.minute)}:${two(n.second)}  $message');
    if (_lines.length > _max) _lines.removeRange(0, _lines.length - _max);
    changes.value++;
  }

  static void clear() {
    _lines.clear();
    changes.value++;
  }
}

/// Prints like [debugPrint] and also keeps the line for the owner log.
void logEvent(String message) {
  debugPrint(message);
  OwnerLog.add(message);
}
