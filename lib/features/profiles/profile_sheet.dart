import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/router.dart';
import '../../state/profiles.dart';
import '../../l10n/app_localizations.dart';
import '../../state/providers.dart';

/// The round initial that stands for a profile.
class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar(this.profile, {super.key, this.radius = 16});

  final Profile profile;
  final double radius;

  @override
  Widget build(BuildContext context) => CircleAvatar(
    radius: radius,
    backgroundColor: profile.color,
    child: Text(
      profile.initial,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: radius * 0.95,
      ),
    ),
  );
}

/// Small avatar button for app bars: shows who is listening, opens the sheet.
class ProfileButton extends ConsumerWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profiles = ref.watch(profilesProvider);
    return ListenableBuilder(
      listenable: profiles,
      builder: (context, _) => IconButton(
        tooltip: profiles.active.name,
        onPressed: () => showProfileSheet(context),
        icon: ProfileAvatar(profiles.active, radius: 14),
      ),
    );
  }
}

void showProfileSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    useRootNavigator: true,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) => const _ProfileSheet(),
  );
}

class _ProfileSheet extends ConsumerWidget {
  const _ProfileSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(profilesProvider);
    final t = Theme.of(context);

    return SafeArea(
      child: ListenableBuilder(
        listenable: controller,
        builder: (context, _) => ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.8,
          ),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 12),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 4),
                child: Text(L.of(context).profWho, style: t.textTheme.titleLarge),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                child: Text(
                  L.of(context).profExplain,
                  style: t.textTheme.bodySmall?.copyWith(
                    color: t.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              for (final p in controller.profiles)
                ListTile(
                  leading: ProfileAvatar(p),
                  title: Text(p.name),
                  subtitle: p.id == controller.active.id
                      ? Text(L.of(context).profActive)
                      : null,
                  selected: p.id == controller.active.id,
                  onTap: () async {
                    Navigator.pop(context);
                    await controller.switchTo(p.id);
                    router.go('/home');
                  },
                  trailing: PopupMenuButton<String>(
                    onSelected: (v) async {
                      if (v == 'rename') {
                        final name = await _askName(context, p.name, L.of(context).profRename);
                        if (name != null) await controller.rename(p.id, name);
                      } else if (v == 'delete') {
                        final ok = await _confirmDelete(context, p.name);
                        if (ok) await controller.delete(p.id);
                      }
                    },
                    itemBuilder: (_) => [
                      PopupMenuItem(value: 'rename', child: Text(L.of(context).profRename)),
                      if (p.id != controller.active.id &&
                          controller.profiles.length > 1)
                        PopupMenuItem(
                          value: 'delete',
                          child: Text(L.of(context).profDeleteMenu),
                        ),
                    ],
                  ),
                ),
              ListTile(
                leading: const CircleAvatar(child: Icon(Icons.add_rounded)),
                title: Text(L.of(context).profAdd),
                onTap: () async {
                  final name = await _askName(context, '', L.of(context).profNew);
                  if (name == null || !context.mounted) return;
                  Navigator.pop(context);
                  await controller.create(name);
                  router.go('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<String?> _askName(BuildContext context, String initial, String title) {
  final field = TextEditingController(text: initial);
  return showDialog<String>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: TextField(
        controller: field,
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        maxLength: 24,
        decoration: InputDecoration(labelText: L.of(context).profName),
        onSubmitted: (v) => Navigator.pop(context, v.trim()),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(L.of(context).actionCancel),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, field.text.trim()),
          child: Text(L.of(context).actionOk),
        ),
      ],
    ),
  ).then((v) => v == null || v.isEmpty ? null : v);
}

Future<bool> _confirmDelete(BuildContext context, String name) async {
  final ok = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(Icons.warning_amber_rounded),
      title: Text(L.of(context).profDeleteTitle(name)),
      content: Text(L.of(context).profDeleteBody),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(L.of(context).profKeep),
        ),
        FilledButton.tonal(
          onPressed: () => Navigator.pop(context, true),
          child: Text(L.of(context).actionDelete),
        ),
      ],
    ),
  );
  return ok ?? false;
}
