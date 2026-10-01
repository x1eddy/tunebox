import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart' show Value;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/db/database.dart';
import '../playback/audio_handler.dart';
import '../playback/stream_proxy.dart';

/// One listener's separate library, likes, playlists and taste.
class Profile {
  const Profile(this.id, this.name);

  final String id;
  final String name;

  /// The profile every install starts with; it owns the pre-profiles
  /// database, so nobody loses anything when this ships.
  static const defaultId = 'default';

  String get initial =>
      name.trim().isEmpty ? '?' : name.trim().characters.first.toUpperCase();

  /// A stable colour per profile, so avatars are told apart at a glance.
  Color get color {
    final hue = (id.codeUnits.fold<int>(7, (a, b) => a * 31 + b) % 360)
        .toDouble();
    return HSLColor.fromAHSL(1, hue, 0.55, 0.45).toColor();
  }

  Map<String, Object?> toJson() => {'id': id, 'name': name};

  static Profile fromJson(Map<String, dynamic> j) =>
      Profile(j['id'] as String, j['name'] as String? ?? 'Me');
}

/// Appended to preference keys that belong to the active profile (the queue to
/// resume, the daily auto-download counter). Empty for the default profile so
/// existing installs keep their saved values.
String profileSuffix = '';
String profileKey(String key) => '$key$profileSuffix';

/// Owns the list of profiles and the database of the active one. Switching
/// swaps the database underneath the player and bumps [generation], which the
/// app root uses to rebuild every provider against the new data.
class ProfileController extends ChangeNotifier {
  ProfileController({required this.prefs, required this.proxy});

  final SharedPreferences prefs;
  final StreamProxy proxy;

  /// Built after the first database exists, since the player needs one.
  TuneBoxAudioHandler? handler;

  /// Called just before everything is rebuilt for a new profile, to drop
  /// caches that were computed from the old one.
  void Function()? onSwitching;

  late AppDatabase db;
  var generation = 0;
  var _profiles = <Profile>[];

  List<Profile> get profiles => List.unmodifiable(_profiles);
  late Profile active;

  static String dbName(String id) =>
      id == Profile.defaultId ? 'tunebox' : 'tunebox_$id';

  /// Reads the saved profiles and opens the active database.
  void load() {
    final raw = prefs.getString('profiles');
    if (raw != null) {
      try {
        _profiles = [
          for (final j in (jsonDecode(raw) as List))
            Profile.fromJson((j as Map).cast<String, dynamic>()),
        ];
      } catch (_) {}
    }
    if (_profiles.isEmpty) _profiles = const [Profile(Profile.defaultId, 'Me')];
    final id = prefs.getString('activeProfile') ?? Profile.defaultId;
    active = _profiles.firstWhere(
      (p) => p.id == id,
      orElse: () => _profiles.first,
    );
    _open(active);
  }

  void _open(Profile p) {
    profileSuffix = p.id == Profile.defaultId ? '' : ':${p.id}';
    db = AppDatabase.named(dbName(p.id));
    handler?.useDatabase(db);
    proxy.onDuration = (videoId, durationMs) => db.patchSong(
      videoId,
      SongsCompanion(durationMs: Value(durationMs)),
    );
  }

  Future<void> _save() async {
    await prefs.setString(
      'profiles',
      jsonEncode([for (final p in _profiles) p.toJson()]),
    );
    await prefs.setString('activeProfile', active.id);
  }

  Future<void> switchTo(String id) async {
    if (id == active.id) return;
    final next = _profiles.firstWhere((p) => p.id == id);
    // Whatever was playing belongs to the profile being left.
    await handler?.stop();
    onSwitching?.call();
    final old = db;
    active = next;
    _open(next);
    await _save();
    generation++;
    notifyListeners();
    // Let in-flight work on the old database finish failing quietly first.
    Future<void>.delayed(const Duration(seconds: 2), () {
      try {
        old.close();
      } catch (_) {}
    });
  }

  Future<void> create(String name) async {
    final clean = name.trim();
    if (clean.isEmpty) return;
    final id = DateTime.now().millisecondsSinceEpoch.toRadixString(36);
    _profiles = [..._profiles, Profile(id, clean)];
    await switchTo(id);
    await _save();
  }

  Future<void> rename(String id, String name) async {
    final clean = name.trim();
    if (clean.isEmpty) return;
    _profiles = [
      for (final p in _profiles) p.id == id ? Profile(p.id, clean) : p,
    ];
    if (active.id == id) active = Profile(id, clean);
    await _save();
    notifyListeners();
  }

  Future<void> delete(String id) async {
    if (id == active.id || _profiles.length < 2) return;
    _profiles = _profiles.where((p) => p.id != id).toList();
    await _save();
    try {
      final dir = await getApplicationDocumentsDirectory();
      for (final ext in ['sqlite', 'sqlite-wal', 'sqlite-shm']) {
        final f = File('${dir.path}/${dbName(id)}.$ext');
        if (f.existsSync()) await f.delete();
      }
    } catch (_) {}
    notifyListeners();
  }
}
