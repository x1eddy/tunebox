import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/services/backup_service.dart';
import '../../data/services/transfer_service.dart';
import '../../l10n/app_localizations.dart';
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
      appBar: AppBar(title: Text(L.of(context).xferTitle)),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
            child: Text(
              L.of(context).xferIntro(profile),
              style: t.textTheme.bodyMedium?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          section(L.of(context).xferSectionWifi),
          ListTile(
            leading: const Icon(Icons.send_rounded),
            title: Text(L.of(context).xferSend),
            subtitle: Text(L.of(context).xferSendSub),
            onTap: () => showModalBottomSheet<void>(
              context: context,
    useRootNavigator: true,
              isScrollControlled: true,
              showDragHandle: true,
              isDismissible: false,
              builder: (_) => const _SendSheet(),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.radar_rounded),
            title: Text(L.of(context).xferReceive),
            subtitle: Text(L.of(context).xferReceiveSub),
            onTap: () async {
              final got = await showModalBottomSheet<(Map<String, dynamic>, String)>(
                context: context,
    useRootNavigator: true,
                isScrollControlled: true,
                showDragHandle: true,
                builder: (_) => const _ReceiveSheet(),
              );
              // The sheet is gone by now; merge from this page, which is not.
              if (got != null && context.mounted) {
                await _confirmAndMerge(context, ref, got.$1, got.$2);
              }
            },
          ),
          section(L.of(context).xferSectionFile),
          ListTile(
            leading: const Icon(Icons.save_alt_rounded),
            title: Text(L.of(context).xferSave),
            subtitle: Text(L.of(context).xferSaveSub),
            onTap: () => _saveFile(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.folder_open_rounded),
            title: Text(L.of(context).xferLoad),
            subtitle: Text(L.of(context).xferLoadSub),
            onTap: () => _loadFile(context, ref),
          ),
          section(L.of(context).xferSectionText),
          ListTile(
            leading: const Icon(Icons.content_copy_rounded),
            title: Text(L.of(context).xferCopy),
            subtitle: Text(L.of(context).xferCopySub),
            onTap: () => _copyText(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.content_paste_rounded),
            title: Text(L.of(context).xferPaste),
            subtitle: Text(L.of(context).xferPasteSub),
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
  final l = L.of(context);
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
      dialogTitle: l.xferSaveDialog,
    );
    if (saved == null) return;
    messenger.showTimed(
      SnackBar(
        content: Text(l.xferSaved((bytes.length / 1024).toStringAsFixed(0))),
      ),
    );
  } catch (e) {
    messenger.showTimed(SnackBar(content: Text(l.xferSaveFailed('$e'))));
  }
}

Future<void> _loadFile(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  final l = L.of(context);
  try {
    final picked = await FilePicker.pickFiles(type: FileType.any);
    final path = picked.firstOrNull?.path;
    if (path == null) return;
    final map = TasteCodec.decode(await File(path).readAsBytes());
    if (!context.mounted) return;
    await _confirmAndMerge(context, ref, map, l.xferSourceFile);
  } catch (e) {
    messenger.showTimed(
      SnackBar(content: Text(l.xferFileUnreadable('$e'))),
    );
  }
}

Future<void> _copyText(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  final l = L.of(context);
  try {
    final text = TasteCodec.toText(
      await ref.read(backupServiceProvider).buildBackup(),
    );
    await Clipboard.setData(ClipboardData(text: text));
    messenger.showTimed(
      SnackBar(
        content: Text(l.xferCopied((text.length / 1024).toStringAsFixed(0))),
      ),
    );
  } catch (e) {
    messenger.showTimed(SnackBar(content: Text(l.xferCopyFailed('$e'))));
  }
}

Future<void> _pasteText(BuildContext context, WidgetRef ref) async {
  final messenger = ScaffoldMessenger.of(context);
  final l = L.of(context);
  try {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    final map = TasteCodec.decodeText(data?.text ?? '');
    if (!context.mounted) return;
    await _confirmAndMerge(context, ref, map, l.xferSourceClipboard);
  } catch (_) {
    messenger.showTimed(
      SnackBar(content: Text(l.xferClipboardEmpty)),
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
  final l = L.of(context);
  final preview = BackupService.preview(map);
  final profile = ref.read(profilesProvider).active.name;
  if (!preview.supported) {
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l.xferNewerTitle),
        content: Text(l.xferNewerBody),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l.actionOk),
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
      title: Text(l.xferMergeTitle(profile)),
      content: Text(
        l.xferMergeBody(
          '$source${preview.device == null ? '' : ' (${preview.device})'}',
          preview.songs,
          preview.liked,
          preview.plays,
          preview.rules,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(l.actionCancel),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(l.xferMerge),
        ),
      ],
    ),
  );
  if (ok != true || !context.mounted) return;

  final messenger = ScaffoldMessenger.of(context);
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(l.xferMerging),
        duration: const Duration(minutes: 5),
      ),
    );
  try {
    final summary = await ref.read(backupServiceProvider).importBackup(map);
    dropTasteProfileCache();
    ref.invalidate(tasteProfileProvider);
    ref.read(musicProvider).refreshHome();
    messenger
      ..hideCurrentSnackBar()
      ..showTimed(SnackBar(content: Text(l.xferMerged('$summary'))));
  } catch (e) {
    messenger
      ..hideCurrentSnackBar()
      ..showTimed(SnackBar(content: Text(l.xferMergeFailed('$e'))));
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
      body = Text(L.of(context).xferCouldNotStart('$_error'));
    } else if (!_ready) {
      body = const Center(child: CircularProgressIndicator());
    } else if (_delivered == true) {
      body = Column(
        children: [
          const Icon(Icons.check_circle_rounded, size: 56),
          const SizedBox(height: 8),
          Text(L.of(context).xferSent),
        ],
      );
    } else if (_delivered == false) {
      body = Text(L.of(context).xferClosed);
    } else {
      body = Column(
        children: [
          Text(
            L.of(context).xferSendHow,
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
              L.of(context).xferNoWifi,
              style: t.textTheme.bodySmall?.copyWith(color: t.colorScheme.error),
            )
          else
            Text(
              L.of(context).xferThisDevice(
                _addresses.join(' · '),
                _server.listeningPort,
              ),
              style: t.textTheme.bodySmall?.copyWith(
                color: t.colorScheme.onSurfaceVariant,
              ),
            ),
          const SizedBox(height: 10),
          const LinearProgressIndicator(),
          const SizedBox(height: 6),
          Text(
            L.of(context).xferWaiting,
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
            Text(L.of(context).xferSendTitle, style: t.textTheme.titleLarge),
            const SizedBox(height: 16),
            body,
            const SizedBox(height: 18),
            FilledButton.tonal(
              onPressed: () => Navigator.pop(context),
              child: Text(
                _delivered == null
                    ? L.of(context).actionCancel
                    : L.of(context).actionDone,
              ),
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
        title: Text(L.of(context).xferCodeFor(name)),
        content: TextField(
          controller: field,
          autofocus: true,
          keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: InputDecoration(labelText: L.of(context).xferCodeLabel),
          onSubmitted: (v) => Navigator.pop(context, v),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(L.of(context).actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, field.text),
            child: Text(L.of(context).xferReceiveAction),
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
      _status = L.of(context).xferReceivingFrom(device.name);
    });
    try {
      final map = await TransferClient.fetch(device, pin);
      if (!mounted) return;
      Navigator.of(context).pop((map, device.name));
    } on FormatException catch (e) {
      if (mounted) {
        setState(() {
          _busy = false;
          _status = e.message == 'wrong code'
              ? L.of(context).xferWrongCode
              : L.of(context).xferNotTaste;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _busy = false;
          _status = L.of(context).xferCouldNotReach('$e');
        });
      }
    }
  }

  Future<void> _manual() async {
    final host = _address.text.trim();
    if (host.isEmpty) return;
    setState(() {
      _busy = true;
      _status = L.of(context).xferLooking(host);
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
      setState(() => _status = L.of(context).xferNothingAt(host));
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
              Text(L.of(context).xferReceiveTitle, style: t.textTheme.titleLarge),
              const SizedBox(height: 4),
              Text(
                L.of(context).xferOpenSendFirst,
                style: t.textTheme.bodySmall?.copyWith(
                  color: t.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 12),
              if (_searching)
                Row(
                  children: [
                    const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    const SizedBox(width: 12),
                    Text(L.of(context).xferSearching),
                  ],
                )
              else if (_devices.isEmpty)
                Text(L.of(context).xferNoSender)
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
                  label: Text(L.of(context).xferSearchAgain),
                ),
              const Divider(height: 24),
              Text(L.of(context).xferTypeAddress, style: t.textTheme.titleSmall),
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
                    child: Text(L.of(context).xferConnect),
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
