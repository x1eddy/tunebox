import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/services/backup_service.dart';
import '../../data/services/transfer_service.dart';
import '../../state/providers.dart';
import '../../ui/common.dart';

/// Every way of moving what the AI knows to another device (or another
/// profile), in one place.
class TransferPage extends ConsumerWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Theme.of(context);
    final profile = ref.watch(profilesProvider).active.name;

    Widget section(String title) => Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
      child: Text(
        title,
        style: t.textTheme.titleSmall?.copyWith(color: t.colorScheme.primary),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Move your taste')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
            child: Text(
              'Likes, plays, playlists-free taste and artist rules of '
              '"$profile". Receiving merges into this profile and is safe to '
              'repeat — nothing is doubled.',
              style: t.textTheme.bodyMedium?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          section('Between devices on the same Wi-Fi'),
          ListTile(
            leading: const Icon(Icons.send_rounded),
            title: const Text('Send to a nearby device'),
            subtitle: const Text('Shows a code; the other device finds this one'),
            onTap: () => showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              showDragHandle: true,
              isDismissible: false,
              builder: (_) => const _SendSheet(),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.radar_rounded),
            title: const Text('Receive from a nearby device'),
            subtitle: const Text('Finds senders automatically — you type the code'),
            onTap: () => showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              showDragHandle: true,
              builder: (_) => const _ReceiveSheet(),
            ),
          ),
          section('With a file'),
          ListTile(
            leading: const Icon(Icons.save_alt_rounded),
            title: const Text('Save to a file'),
            subtitle: const Text('Pick where it goes: Downloads, USB, a chat…'),
            onTap: () => _saveFile(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.folder_open_rounded),
            title: const Text('Load from a file'),
            subtitle: const Text('Any TuneBox taste file, old or new'),
            onTap: () => _loadFile(context, ref),
          ),
          section('As text'),
          ListTile(
            leading: const Icon(Icons.content_copy_rounded),
            title: const Text('Copy as text'),
            subtitle: const Text('One line you can paste into any chat or note'),
            onTap: () => _copyText(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.content_paste_rounded),
            title: const Text('Paste text'),
            subtitle: const Text('From the clipboard'),
            onTap: () => _pasteText(context, ref),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------- actions

Future<void> _saveFile(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  final name = ref.read(profilesProvider).active.name
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '-');
  try {
    final bytes = Uint8List.fromList(
      await ref.read(backupServiceProvider).exportBytes(),
    );
    final saved = await FilePicker.saveFile(
      fileName: 'tunebox-taste-$name.json',
      bytes: bytes,
      mimeType: 'application/json',
      dialogTitle: 'Save your taste',
    );
    if (saved == null) return;
    messenger.showTimed(
      SnackBar(
        content: Text(
          'Saved ${(bytes.length / 1024).toStringAsFixed(0)} KB. On the other '
          'device choose "Load from a file".',
        ),
      ),
    );
  } catch (e) {
    messenger.showTimed(SnackBar(content: Text('Could not save: $e')));
  }
}

Future<void> _loadFile(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  try {
    final picked = await FilePicker.pickFiles(type: FileType.any);
    final path = picked.firstOrNull?.path;
    if (path == null) return;
    final map = TasteCodec.decode(await File(path).readAsBytes());
    if (!context.mounted) return;
    await _confirmAndMerge(context, ref, map, 'the file');
  } catch (e) {
    messenger.showTimed(
      SnackBar(content: Text('That file could not be read as a taste: $e')),
    );
  }
}

Future<void> _copyText(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  try {
    final text = TasteCodec.toText(
      await ref.read(backupServiceProvider).buildBackup(),
    );
    await Clipboard.setData(ClipboardData(text: text));
    messenger.showTimed(
      SnackBar(
        content: Text(
          'Copied (${(text.length / 1024).toStringAsFixed(0)} KB of text). '
          'Paste it on the other device with "Paste text".',
        ),
      ),
    );
  } catch (e) {
    messenger.showTimed(SnackBar(content: Text('Could not copy: $e')));
  }
}

Future<void> _pasteText(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  try {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    final map = TasteCodec.decodeText(data?.text ?? '');
    if (!context.mounted) return;
    await _confirmAndMerge(context, ref, map, 'the clipboard');
  } catch (_) {
    messenger.showTimed(
      const SnackBar(
        content: Text('The clipboard does not hold a TuneBox taste. Copy it on '
            'the other device first.'),
      ),
    );
  }
}

/// Shows what is about to be merged, merges on a yes, and says what changed.
Future<void> _confirmAndMerge(
  BuildContext context,
  WidgetRef ref,
  Map<String, dynamic> map,
  String source,
) async {
  final preview = BackupService.preview(map);
  final profile = ref.read(profilesProvider).active.name;
  if (!preview.supported) {
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Newer than this app'),
        content: const Text(
          'This taste was made by a newer TuneBox. Update this device first.',
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
    return;
  }
  final ok = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(Icons.merge_rounded),
      title: Text('Merge into "$profile"?'),
      content: Text(
        'From $source${preview.device == null ? '' : ' (${preview.device})'}:\n'
        '• ${preview.songs} songs, ${preview.liked} liked\n'
        '• ${preview.plays} plays\n'
        '• ${preview.rules} artist rules\n\n'
        'Your own likes and history stay. Doing this twice changes nothing.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('Merge'),
        ),
      ],
    ),
  );
  if (ok != true || !context.mounted) return;

  final messenger = ScaffoldMessenger.of(context);
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      const SnackBar(
        content: Text('Merging…'),
        duration: Duration(minutes: 5),
      ),
    );
  try {
    final summary = await ref.read(backupServiceProvider).importBackup(map);
    dropTasteProfileCache();
    ref.invalidate(tasteProfileProvider);
    ref.read(musicProvider).refreshHome();
    messenger
      ..hideCurrentSnackBar()
      ..showTimed(SnackBar(content: Text('Merged: $summary')));
  } catch (e) {
    messenger
      ..hideCurrentSnackBar()
      ..showTimed(SnackBar(content: Text('Merge failed: $e')));
  }
}

// ----------------------------------------------------------------- sending

class _SendSheet extends ConsumerStatefulWidget {
  const _SendSheet();

  @override
  ConsumerState<_SendSheet> createState() => _SendSheetState();
}

class _SendSheetState extends ConsumerState<_SendSheet> {
  final _server = TransferServer();
  List<String> _addresses = const [];
  String? _error;
  bool _ready = false;
  bool? _delivered;

  @override
  void initState() {
    super.initState();
    unawaited(_start());
  }

  Future<void> _start() async {
    try {
      final backup = await ref.read(backupServiceProvider).buildBackup();
      final name =
          '${ref.read(profilesProvider).active.name} · ${Platform.localHostname}';
      await _server.start(
        payload: TasteCodec.gzipJson(backup),
        deviceName: name,
      );
      final addresses = await _server.addresses();
      if (!mounted) return;
      setState(() {
        _addresses = addresses;
        _ready = true;
      });
      final delivered = await _server.finished;
      if (mounted) setState(() => _delivered = delivered);
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    }
  }

  @override
  void dispose() {
    unawaited(_server.stop());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    Widget body;
    if (_error != null) {
      body = Text('Could not start: $_error');
    } else if (!_ready) {
      body = const Center(child: CircularProgressIndicator());
    } else if (_delivered == true) {
      body = const Column(
        children: [
          Icon(Icons.check_circle_rounded, size: 56),
          SizedBox(height: 8),
          Text('Sent. The other device has your taste.'),
        ],
      );
    } else if (_delivered == false) {
      body = const Text('Closed — the code expired or was guessed wrong too '
          'often. Start again for a new one.');
    } else {
      body = Column(
        children: [
          Text(
            'On the other device open Settings → Move your taste → Receive, '
            'then pick this device and type:',
            textAlign: TextAlign.center,
            style: t.textTheme.bodyMedium,
          ),
          const SizedBox(height: 14),
          Text(
            _server.pin,
            style: t.textTheme.displayMedium?.copyWith(
              letterSpacing: 8,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 14),
          if (_addresses.isEmpty)
            Text(
              'No Wi-Fi address found — connect both devices to the same '
              'network.',
              style: t.textTheme.bodySmall?.copyWith(color: t.colorScheme.error),
            )
          else
            Text(
              'This device: ${_addresses.join(' · ')} '
              '(port ${_server.listeningPort})',
              style: t.textTheme.bodySmall?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
          const SizedBox(height: 10),
          const LinearProgressIndicator(),
          const SizedBox(height: 6),
          Text(
            'Waiting for the other device… (closes after 5 minutes)',
            style: t.textTheme.labelMedium,
          ),
        ],
      );
    }
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Send your taste', style: t.textTheme.titleLarge),
            const SizedBox(height: 16),
            body,
            const SizedBox(height: 18),
            FilledButton.tonal(
              onPressed: () => Navigator.pop(context),
              child: Text(_delivered == null ? 'Cancel' : 'Done'),
            ),
          ],
        ),
      ),
    );
  }
}

// --------------------------------------------------------------- receiving

class _ReceiveSheet extends ConsumerStatefulWidget {
  const _ReceiveSheet();

  @override
  ConsumerState<_ReceiveSheet> createState() => _ReceiveSheetState();
}

class _ReceiveSheetState extends ConsumerState<_ReceiveSheet> {
  var _searching = true;
  var _devices = <NearbyDevice>[];
  final _address = TextEditingController();
  String? _status;
  var _busy = false;

  @override
  void initState() {
    super.initState();
    unawaited(_search());
  }

  @override
  void dispose() {
    _address.dispose();
    super.dispose();
  }

  Future<void> _search() async {
    setState(() {
      _searching = true;
      _status = null;
    });
    final found = await TransferClient.discover();
    if (!mounted) return;
    setState(() {
      _devices = found;
      _searching = false;
    });
  }

  Future<String?> _askPin(String name) {
    final field = TextEditingController();
    return showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Code shown on $name'),
        content: TextField(
          controller: field,
          autofocus: true,
          keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: const InputDecoration(labelText: '6-digit code'),
          onSubmitted: (v) => Navigator.pop(context, v),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, field.text),
            child: const Text('Receive'),
          ),
        ],
      ),
    );
  }

  Future<void> _receive(NearbyDevice device) async {
    final pin = await _askPin(device.name);
    if (pin == null || pin.trim().isEmpty || !mounted) return;
    setState(() {
      _busy = true;
      _status = 'Receiving from ${device.name}…';
    });
    try {
      final map = await TransferClient.fetch(device, pin);
      if (!mounted) return;
      final navigator = Navigator.of(context);
      final outer = navigator.context;
      navigator.pop();
      // ignore: use_build_context_synchronously
      await _confirmAndMerge(outer, ref, map, device.name);
    } on FormatException catch (e) {
      if (mounted) {
        setState(() {
          _busy = false;
          _status = e.message == 'wrong code'
              ? 'Wrong code. Check the number on the other device.'
              : 'That was not a TuneBox taste.';
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _busy = false;
          _status = 'Could not reach it: $e';
        });
      }
    }
  }

  Future<void> _manual() async {
    final host = _address.text.trim();
    if (host.isEmpty) return;
    setState(() {
      _busy = true;
      _status = 'Looking for $host…';
    });
    final parts = host.split(':');
    final device = await TransferClient.probe(
      parts.first,
      port: parts.length > 1
          ? int.tryParse(parts[1]) ?? TransferServer.port
          : TransferServer.port,
    );
    if (!mounted) return;
    setState(() => _busy = false);
    if (device == null) {
      setState(() => _status = 'Nothing answered at $host. Is Send open there?');
      return;
    }
    await _receive(device);
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          24,
          0,
          24,
          20 + MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Receive a taste', style: t.textTheme.titleLarge),
              const SizedBox(height: 4),
              Text(
                'Open Send on the other device first (same Wi-Fi).',
                style: t.textTheme.bodySmall?.copyWith(
                  color: t.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 12),
              if (_searching)
                const Row(
                  children: [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    SizedBox(width: 12),
                    Text('Looking for nearby devices…'),
                  ],
                )
              else if (_devices.isEmpty)
                const Text('No sender found yet.')
              else
                for (final d in _devices)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.devices_rounded),
                    title: Text(d.name),
                    subtitle: Text(d.host),
                    onTap: _busy ? null : () => _receive(d),
                  ),
              if (!_searching)
                TextButton.icon(
                  onPressed: _busy ? null : _search,
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Search again'),
                ),
              const Divider(height: 24),
              Text('Not listed? Type its address', style: t.textTheme.titleSmall),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _address,
                      keyboardType: TextInputType.url,
                      decoration: const InputDecoration(
                        hintText: '192.168.1.23',
                        isDense: true,
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (_) => _manual(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  FilledButton.tonal(
                    onPressed: _busy ? null : _manual,
                    child: const Text('Connect'),
                  ),
                ],
              ),
              if (_status != null) ...[
                const SizedBox(height: 12),
                Text(_status!, style: t.textTheme.bodyMedium),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
