import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/theme.dart';
import '../../data/services/sync_service.dart';
import '../../l10n/app_localizations.dart';
import '../../state/sync.dart';
import '../../ui/common.dart';
import '../../ui/kit/aura_card.dart';
import '../../ui/kit/grouped.dart';

String syncError(L l, String? code) => switch (code) {
  null => '',
  'no-device' => l.syncNoDevice,
  'wrong-code' => l.syncWrongCode,
  'not-paired' => l.syncNotPaired,
  _ => l.syncUnreachable,
};

/// Devices that keep your taste in step by themselves.
class SyncPage extends ConsumerStatefulWidget {
  const SyncPage({super.key});

  @override
  ConsumerState<SyncPage> createState() => _SyncPageState();
}

class _SyncPageState extends ConsumerState<SyncPage> {
  bool _syncing = false;

  Future<void> _syncNow() async {
    final l = L.of(context);
    final messenger = ScaffoldMessenger.of(context);
    setState(() => _syncing = true);
    try {
      final n = await syncNowAndRefresh(ref);
      messenger.showTimed(
        SnackBar(content: Text(n == 0 ? l.syncNoneReached : l.syncDone(n))),
      );
    } finally {
      if (mounted) setState(() => _syncing = false);
    }
  }

  bool _codeOpen = false;

  Future<void> _showCode() async {
    if (_codeOpen) return;
    _codeOpen = true;
    final service = ref.read(syncServiceProvider);
    await showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (_) => _ShowCodeSheet(service: service),
    );
    service.closePairing();
    _codeOpen = false;
    if (mounted) setState(() {});
  }

  Future<void> _enterCode() async {
    final l = L.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final result = await showDialog<(String, String?)>(
      context: context,
      builder: (_) => const _EnterCodeDialog(),
    );
    if (result == null || !mounted) return;
    final (code, host) = result;
    setState(() => _syncing = true);
    try {
      final service = ref.read(syncServiceProvider);
      final peer = await service.pairWith(code, host: host);
      messenger.showTimed(SnackBar(content: Text(l.syncPaired(peer.name))));
      await syncNowAndRefresh(ref);
    } on SyncException catch (e) {
      messenger.showTimed(SnackBar(content: Text(syncError(l, e.code))));
    } catch (_) {
      messenger.showTimed(SnackBar(content: Text(l.syncUnreachable)));
    } finally {
      if (mounted) setState(() => _syncing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    ref.watch(syncChangesProvider);
    final service = ref.watch(syncServiceProvider);
    final peers = service.hooks.loadPeers();
    final loc = MaterialLocalizations.of(context);

    String when(DateTime? d) {
      if (d == null) return l.syncNever;
      final ago = DateTime.now().difference(d);
      if (ago.inMinutes < 1) return l.syncJustNow;
      if (ago.inHours < 1) return l.syncMinutesAgo(ago.inMinutes);
      if (ago.inDays < 1) return l.syncHoursAgo(ago.inHours);
      return loc.formatMediumDate(d);
    }

    return Scaffold(
      appBar: AppBar(title: Text(l.syncTitle)),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: groupSections(context, [
          AuraCard(
            margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.sync_rounded),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(l.syncHeadline, style: t.textTheme.titleLarge),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(l.syncIntro, style: t.textTheme.bodyMedium),
              ],
            ),
          ),
          SectionHeader(
            title: l.syncDevices,
            icon: Icons.devices_rounded,
            trailing: peers.isEmpty
                ? null
                : TextButton.icon(
                    onPressed: _syncing ? null : _syncNow,
                    icon: _syncing
                        ? const SizedBox.square(
                            dimension: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.sync_rounded, size: 18),
                    label: Text(l.syncNow),
                  ),
          ),
          if (peers.isEmpty)
            ListTile(
              leading: const Icon(Icons.link_off_rounded),
              title: Text(l.syncNone),
              subtitle: Text(l.syncNoneSub),
            ),
          for (final p in peers)
            ListTile(
              leading: CircleAvatar(
                backgroundColor: t.colorScheme.primaryContainer,
                child: Icon(
                  p.name.toLowerCase().contains('phone') ||
                          p.name.toLowerCase().contains('android')
                      ? Icons.smartphone_rounded
                      : Icons.laptop_rounded,
                  color: t.colorScheme.onPrimaryContainer,
                ),
              ),
              title: Text(p.name),
              subtitle: Text(
                p.lastError == null
                    ? l.syncLast(when(p.lastSync))
                    : '${l.syncLast(when(p.lastSync))} · ${syncError(l, p.lastError)}',
              ),
              trailing: IconButton(
                tooltip: l.syncForget,
                icon: const Icon(Icons.link_off_rounded),
                onPressed: () async {
                  final ok = await showDialog<bool>(
                    context: context,
                    builder: (d) => AlertDialog(
                      title: Text(l.syncForgetQ(p.name)),
                      content: Text(l.syncForgetBody),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(d, false),
                          child: Text(l.actionCancel),
                        ),
                        FilledButton(
                          onPressed: () => Navigator.pop(d, true),
                          child: Text(l.syncForget),
                        ),
                      ],
                    ),
                  );
                  if (ok == true) await service.forget(p.id);
                },
              ),
            ),
          SectionHeader(title: l.syncAdd, icon: Icons.add_link_rounded),
          ListTile(
            leading: const Icon(Icons.qr_code_rounded),
            title: Text(l.syncShowCode),
            subtitle: Text(l.syncShowCodeSub),
            onTap: _syncing ? null : _showCode,
          ),
          ListTile(
            leading: const Icon(Icons.dialpad_rounded),
            title: Text(l.syncEnterCode),
            subtitle: Text(l.syncEnterCodeSub),
            onTap: _syncing ? null : _enterCode,
          ),
          ListTile(
            leading: const Icon(Icons.lock_outline_rounded),
            title: Text(l.syncPrivate),
            subtitle: Text(l.syncPrivateSub),
          ),
        ]),
      ),
    );
  }
}

class _ShowCodeSheet extends StatefulWidget {
  const _ShowCodeSheet({required this.service});
  final SyncService service;

  @override
  State<_ShowCodeSheet> createState() => _ShowCodeSheetState();
}

class _ShowCodeSheetState extends State<_ShowCodeSheet> {
  late String _code;
  String? _paired;
  List<String> _addresses = const [];
  Timer? _tick;

  @override
  void initState() {
    super.initState();
    _code = widget.service.openPairing(
      onPaired: (p) {
        if (mounted) setState(() => _paired = p.name);
      },
    );
    unawaited(_loadAddresses());
    // the window closes by itself after five minutes; show that
    _tick = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
  }

  Future<void> _loadAddresses() async {
    final out = <String>[];
    try {
      for (final i in await NetworkInterface.list(type: InternetAddressType.IPv4)) {
        for (final a in i.addresses) {
          if (!a.isLoopback) out.add(a.address);
        }
      }
    } catch (_) {}
    if (mounted) setState(() => _addresses = out);
  }

  @override
  void dispose() {
    _tick?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final t = Theme.of(context);
    final open = widget.service.pairing;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_paired != null) ...[
              Icon(Icons.check_circle_rounded, size: 56, color: t.colorScheme.primary),
              const SizedBox(height: 12),
              Text(l.syncPaired(_paired!), style: t.textTheme.titleLarge, textAlign: TextAlign.center),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l.actionDone),
              ),
            ] else if (!open) ...[
              Text(l.syncCodeExpired, style: t.textTheme.titleMedium),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => setState(
                  () => _code = widget.service.openPairing(
                    onPaired: (p) {
                      if (mounted) setState(() => _paired = p.name);
                    },
                  ),
                ),
                child: Text(l.syncNewCode),
              ),
            ] else ...[
              Text(l.syncTypeThis, style: t.textTheme.titleMedium, textAlign: TextAlign.center),
              const SizedBox(height: 14),
              GestureDetector(
                onLongPress: () => Clipboard.setData(ClipboardData(text: _code)),
                child: Text(
                  '${_code.substring(0, 3)} ${_code.substring(3)}',
                  style: t.textTheme.displayMedium?.copyWith(
                    fontFamily: 'JetBrainsMono',
                    letterSpacing: 6,
                    color: t.colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const LinearProgressIndicator(),
              const SizedBox(height: 14),
              Text(l.syncWaiting, textAlign: TextAlign.center),
              if (_addresses.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(
                  l.syncAddress(_addresses.join(', ')),
                  textAlign: TextAlign.center,
                  style: t.textTheme.bodySmall?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

class _EnterCodeDialog extends StatefulWidget {
  const _EnterCodeDialog();

  @override
  State<_EnterCodeDialog> createState() => _EnterCodeDialogState();
}

class _EnterCodeDialogState extends State<_EnterCodeDialog> {
  final _code = TextEditingController();
  final _host = TextEditingController();
  bool _manual = false;

  @override
  void dispose() {
    _code.dispose();
    _host.dispose();
    super.dispose();
  }

  void _submit() {
    final code = _code.text.replaceAll(RegExp(r'\D'), '');
    if (code.length != 6) return;
    final host = _host.text.trim();
    Navigator.pop(context, (code, host.isEmpty ? null : host));
  }

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    return AlertDialog(
      title: Text(l.syncEnterCode),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _code,
            autofocus: true,
            keyboardType: TextInputType.number,
            maxLength: 7,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'JetBrainsMono',
              fontSize: 28,
              letterSpacing: 6,
            ),
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9 ]'))],
            onSubmitted: (_) => _submit(),
            decoration: const InputDecoration(counterText: '', hintText: '000 000'),
          ),
          if (_manual)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: TextField(
                controller: _host,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: l.syncAddressLabel),
              ),
            )
          else
            TextButton(
              onPressed: () => setState(() => _manual = true),
              child: Text(l.syncNotFound),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l.actionCancel),
        ),
        FilledButton(onPressed: _submit, child: Text(l.syncPair)),
      ],
    );
  }
}

/// A small status row for Settings: how many devices, when last synced.
class SyncSettingsTile extends ConsumerWidget {
  const SyncSettingsTile({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L.of(context);
    ref.watch(syncChangesProvider);
    final peers = ref.watch(syncServiceProvider).hooks.loadPeers();
    return ListTile(
      leading: const Icon(Icons.sync_rounded),
      title: Text(l.syncTitle),
      subtitle: Text(
        peers.isEmpty
            ? l.syncSettingsOff
            : l.syncSettingsOn(peers.map((p) => p.name).join(', ')),
      ),
      trailing: Icon(Icons.chevron_right_rounded, color: Theme.of(context).colorScheme.onSurfaceVariant),
      shape: RoundedRectangleBorder(borderRadius: R.card),
      onTap: onTap,
    );
  }
}
