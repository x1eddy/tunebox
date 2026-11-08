import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/db/database.dart';
import '../data/services/backup_service.dart';
import '../data/services/sync_crypto.dart';
import '../data/services/sync_service.dart';
import 'profiles.dart';
import 'providers.dart';
import 'settings.dart';

/// A stable id for this install, made once.
String _deviceId(SharedPreferences prefs) {
  var id = prefs.getString('deviceId');
  if (id == null) {
    id = base64Url.encode(SyncCrypto.randomBytes(9));
    prefs.setString('deviceId', id);
  }
  return id;
}

String deviceLabel() {
  final host = Platform.localHostname;
  if (host.isNotEmpty && host != 'localhost') return host;
  if (Platform.isAndroid) return 'Android phone';
  if (Platform.isIOS) return 'iPhone';
  return Platform.operatingSystem;
}

/// The taste-sync service. Pairings belong to the device; every profile on
/// it travels, each into the profile with the same id on the other side.
final syncServiceProvider = Provider<SyncService>((ref) {
  final prefs = ref.read(prefsProvider);
  final profiles = ref.read(profilesProvider);
  const key = 'syncPeers';

  // 1.0 stored pairings per profile; the first one found becomes the
  // device's.
  if (prefs.getString(key) == null) {
    for (final k in prefs.getKeys()) {
      if (k.startsWith('$key:')) {
        prefs.setString(key, prefs.getString(k)!);
        break;
      }
    }
  }

  /// Runs [body] on a profile's database: the open one if it is active,
  /// otherwise a short-lived second connection.
  Future<T> withProfileDb<T>(
    String id,
    Future<T> Function(AppDatabase db) body,
  ) async {
    if (id == profiles.active.id) return body(ref.read(dbProvider));
    final db = AppDatabase.named(ProfileController.dbName(id));
    try {
      return await body(db);
    } finally {
      await db.close();
    }
  }

  final service = SyncService(
    deviceId: _deviceId(prefs),
    deviceName: deviceLabel(),
    hooks: SyncHooks(
      loadPeers: () {
        final raw = prefs.getString(key);
        if (raw == null) return const [];
        try {
          return [
            for (final j in jsonDecode(raw) as List)
              SyncPeer.fromJson((j as Map).cast<String, dynamic>()),
          ];
        } catch (_) {
          return const [];
        }
      },
      savePeers: (peers) =>
          prefs.setString(key, jsonEncode([for (final p in peers) p.toJson()])),
      profiles: () => [
        for (final p in profiles.profiles)
          RemoteProfile(p.id, p.name, p.renamedAt),
      ],
      exportTaste: (id) => withProfileDb(
        id ?? profiles.active.id,
        (db) => BackupService(db).buildBackup(),
      ),
      importTaste: (remote, taste) async {
        await profiles.adoptRemote(remote.id, remote.name, remote.renamedAt);
        await withProfileDb(
          remote.id,
          (db) => BackupService(db).importBackup(taste),
        );
      },
    ),
  );
  ref.onDispose(service.dispose);
  return service;
});

/// Bumped whenever peers or tastes changed, for the screens that show them.
final syncChangesProvider = StreamProvider<int>((ref) async* {
  var n = 0;
  yield n;
  await for (final _ in ref.watch(syncServiceProvider).changes) {
    yield ++n;
  }
});

/// Starts the sync server and syncs now and then: shortly after launch,
/// every [SyncService.interval], and when the app comes back to the front.
/// Only on Wi-Fi or a cable, and only when something is paired.
final syncTickerProvider = Provider<void>((ref) {
  final service = ref.read(syncServiceProvider);
  unawaited(service.start());
  var lastRun = DateTime.fromMillisecondsSinceEpoch(0);

  Future<void> run({bool force = false}) async {
    if (service.hooks.loadPeers().isEmpty) return;
    if (!force &&
        DateTime.now().difference(lastRun) < const Duration(minutes: 10)) {
      return;
    }
    if (!await ref.read(downloadServiceProvider).onWifi()) return;
    lastRun = DateTime.now();
    final reached = await service.syncNow();
    if (reached > 0) {
      dropTasteProfileCache();
      ref.invalidate(tasteProfileProvider);
      ref.read(musicProvider).refreshHome();
    }
  }

  final timer = Timer.periodic(
    SyncService.interval + Duration(seconds: Random().nextInt(120)),
    (_) => unawaited(run(force: true)),
  );
  final observer = _ResumeObserver(() => unawaited(run()));
  WidgetsBinding.instance.addObserver(observer);
  ref.onDispose(() {
    timer.cancel();
    WidgetsBinding.instance.removeObserver(observer);
  });
  unawaited(Future<void>.delayed(const Duration(seconds: 20), run));
});

class _ResumeObserver extends WidgetsBindingObserver {
  _ResumeObserver(this.onResume);
  final VoidCallback onResume;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) onResume();
  }
}

/// For the "Synced devices" screen: run one sync and refresh what it shows.
Future<int> syncNowAndRefresh(WidgetRef ref) async {
  final reached = await ref.read(syncServiceProvider).syncNow();
  if (reached > 0) {
    dropTasteProfileCache();
    ref.invalidate(tasteProfileProvider);
    ref.read(musicProvider).refreshHome();
  }
  return reached;
}
