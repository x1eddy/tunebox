import 'dart:io';
import 'dart:math' as math;

import 'package:drift/drift.dart' show Value;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ai/blend.dart';
import '../../data/db/database.dart';
import '../../data/services/backup_service.dart';
import '../../data/services/transfer_service.dart';
import '../../l10n/app_localizations.dart';
import '../../state/profiles.dart';
import '../../state/providers.dart';
import '../../state/settings.dart';
import '../../ui/common.dart';
import '../../ui/kit/aura_card.dart';
import '../../ui/kit/grouped.dart';

/// Two tastes, one queue: for a party, a car or a shared speaker. The other
/// taste is only read, never merged into yours.
class BlendPage extends ConsumerStatefulWidget {
  const BlendPage({super.key});

  @override
  ConsumerState<BlendPage> createState() => _BlendPageState();
}

class _BlendPageState extends ConsumerState<BlendPage> {
  BlendResult? _result;
  String? _with;
  bool _busy = false;

  Future<void> _blendWith(String name, Map<String, dynamic> backup) async {
    setState(() => _busy = true);
    try {
      final mine = await BackupService(ref.read(dbProvider)).buildBackup();
      final me = ref.read(profilesProvider).active.name;
      final result = blend(
        TasteSnapshot.fromBackup(me, mine),
        TasteSnapshot.fromBackup(name, backup),
      );
      if (!mounted) return;
      setState(() {
        _result = result;
        _with = name;
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showTimed(
          SnackBar(content: Text(L.of(context).blendBad)),
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _fromProfile(Profile p) async {
    final db = AppDatabase.named(ProfileController.dbName(p.id));
    try {
      final backup = await BackupService(db).buildBackup();
      await _blendWith(p.name, backup);
    } finally {
      await db.close();
    }
  }

  Future<void> _fromClipboard() async {
    final friend = L.of(context).blendFriend;
    final data = await Clipboard.getData('text/plain');
    try {
      final backup = TasteCodec.decodeText(data?.text ?? '');
      await _blendWith(
        (backup['device'] as String?) ?? friend,
        backup,
      );
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showTimed(
          SnackBar(content: Text(L.of(context).blendBad)),
        );
      }
    }
  }

  Future<void> _fromFile() async {
    final picked = await FilePicker.pickFiles();
    final path = picked.isEmpty ? null : picked.first.path;
    if (path == null) return;
    try {
      final backup = TasteCodec.decode(await File(path).readAsBytes());
      if (!mounted) return;
      await _blendWith(
        (backup['device'] as String?) ?? L.of(context).blendFriend,
        backup,
      );
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showTimed(
          SnackBar(content: Text(L.of(context).blendBad)),
        );
      }
    }
  }

  /// The other person's songs may not be on this device yet: they are added
  /// as plain search results (not to your library), then played.
  Future<List<Song>> _songs(BlendResult r) async {
    final db = ref.read(dbProvider);
    await db.cacheSongs([
      for (final s in r.queue)
        SongsCompanion.insert(
          id: s['id'] as String,
          title: '${s['title'] ?? ''}',
          artist: Value('${s['artist'] ?? ''}'),
          album: Value('${s['album'] ?? ''}'),
          artworkUrl: Value(s['artworkUrl'] as String?),
          durationMs: Value((s['durationMs'] as num? ?? 0).toInt()),
          year: Value(s['year'] as int?),
          tags: Value('${s['tags'] ?? ''}'),
          source: SongSource.youtube,
        ),
    ]);
    return db.songsByIds([for (final s in r.queue) s['id'] as String]);
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    final profiles = ref.watch(profilesProvider);
    final others = profiles.profiles
        .where((p) => p.id != profiles.active.id)
        .toList();
    final prefs = ref.watch(prefsProvider);
    final result = _result;

    return Scaffold(
      appBar: AppBar(title: Text(l.blendTitle)),
      body: _busy
          ? const Center(child: CircularProgressIndicator())
          : result == null
          ? ListView(
              padding: const EdgeInsets.only(bottom: 32),
              children: groupSections(context, [
                AuraCard(
                  margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l.blendTitle, style: t.textTheme.headlineSmall),
                      const SizedBox(height: 6),
                      Text(l.blendIntro, style: t.textTheme.bodyMedium),
                    ],
                  ),
                ),
                SectionHeader(title: l.blendWith, icon: Icons.people_alt_outlined),
                for (final p in others)
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: p.color,
                      child: Text(
                        p.initial,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(p.name),
                    subtitle: Text(l.blendProfile),
                    onTap: () => _fromProfile(p),
                  ),
                ListTile(
                  leading: const Icon(Icons.content_paste_rounded),
                  title: Text(l.blendPaste),
                  subtitle: Text(l.blendPasteSub),
                  onTap: _fromClipboard,
                ),
                ListTile(
                  leading: const Icon(Icons.file_open_outlined),
                  title: Text(l.blendFile),
                  onTap: _fromFile,
                ),
              ]),
            )
          : ListView(
              padding: const EdgeInsets.only(bottom: 32),
              children: [
                AuraCard(
                  margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Row(
                    children: [
                      _MatchRing(percent: result.match),
                      const SizedBox(width: 18),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l.blendYouAnd(_with ?? ''),
                              style: t.textTheme.titleLarge,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              result.match >= 70
                                  ? l.blendHigh
                                  : result.match >= 40
                                  ? l.blendMid
                                  : l.blendLow,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      FilledButton.icon(
                        onPressed: result.queue.isEmpty
                            ? null
                            : () async {
                                final songs = await _songs(result);
                                await ref
                                    .read(musicProvider)
                                    .playAll(songs, origin: 'blend');
                              },
                        icon: const Icon(Icons.play_arrow_rounded),
                        label: Text(l.blendPlay),
                      ),
                      OutlinedButton.icon(
                        onPressed: () => setState(() => _result = null),
                        icon: const Icon(Icons.swap_horiz_rounded),
                        label: Text(l.blendOther),
                      ),
                    ],
                  ),
                ),
                SwitchListTile(
                  value: prefs.getBool('blendLearns') ?? false,
                  onChanged: (v) async {
                    await prefs.setBool('blendLearns', v);
                    setState(() {});
                  },
                  title: Text(l.blendLearn),
                  subtitle: Text(l.blendLearnSub),
                ),
                if (result.sharedArtists.isNotEmpty) ...[
                  SectionHeader(title: l.blendBothArtists, icon: Icons.favorite_border),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final a in result.sharedArtists) Chip(label: Text(a)),
                      ],
                    ),
                  ),
                ],
                SectionHeader(
                  title: l.blendQueue,
                  subtitle: l.libSongCount(result.queue.length),
                  icon: Icons.queue_music_rounded,
                ),
                for (final (i, s) in result.queue.take(30).indexed)
                  ListTile(
                    dense: true,
                    leading: Icon(
                      switch (result.fromA[i]) {
                        null => Icons.favorite_rounded,
                        true => Icons.person_rounded,
                        false => Icons.person_outline_rounded,
                      },
                      color: result.fromA[i] == null
                          ? t.colorScheme.primary
                          : null,
                    ),
                    title: Text(
                      '${s['title']}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '${s['artist']} · ${switch (result.fromA[i]) {
                        null => l.blendBoth,
                        true => l.blendYours,
                        false => _with ?? '',
                      }}',
                      maxLines: 1,
                    ),
                  ),
              ],
            ),
    );
  }
}

class _MatchRing extends StatelessWidget {
  const _MatchRing({required this.percent});
  final int percent;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final t = Theme.of(context).textTheme;
    return SizedBox.square(
      dimension: 92,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: percent / 100),
        duration: const Duration(milliseconds: 1100),
        curve: Curves.easeOutCubic,
        builder: (context, v, _) => CustomPaint(
          painter: _RingPainter(v, cs.primary, cs.onSurface.withValues(alpha: 0.12)),
          child: Center(
            child: Text('${(v * 100).round()}%', style: t.headlineSmall),
          ),
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter(this.v, this.fill, this.track);
  final double v;
  final Color fill;
  final Color track;

  @override
  void paint(Canvas canvas, Size size) {
    final r = (Offset.zero & size).deflate(6);
    final p = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(r, 0, math.pi * 2, false, p..color = track);
    canvas.drawArc(r, -math.pi / 2, math.pi * 2 * v, false, p..color = fill);
  }

  @override
  bool shouldRepaint(_RingPainter old) => old.v != v || old.fill != fill;
}
