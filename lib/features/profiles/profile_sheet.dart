import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/router.dart';
import '../../state/profiles.dart';
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
                child: Text('Who is listening?', style: t.textTheme.titleLarge),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                child: Text(
                  'Each profile has its own library, likes, playlists and '
                  'taste.',
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
                      ? const Text('Active')
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
                        final name = await _askName(context, p.name, 'Rename');
                        if (name != null) await controller.rename(p.id, name);
                      } else if (v == 'delete') {
                        final ok = await _confirmDelete(context, p.name);
                        if (ok) await controller.delete(p.id);
                      }
                    },
                    itemBuilder: (_) => [
                      const PopupMenuItem(value: 'rename', child: Text('Rename')),
                      if (p.id != controller.active.id &&
                          controller.profiles.length > 1)
                        const PopupMenuItem(
                          value: 'delete',
                          child: Text('Delete profile'),
                        ),
                    ],
                  ),
                ),
              ListTile(
                leading: const CircleAvatar(child: Icon(Icons.add_rounded)),
                title: const Text('Add profile'),
                onTap: () async {
                  final name = await _askName(context, '', 'New profile');
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
        decoration: const InputDecoration(labelText: 'Name'),
        onSubmitted: (v) => Navigator.pop(context, v.trim()),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, field.text.trim()),
          child: const Text('OK'),
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
      title: Text('Delete "$name"?'),
      content: const Text(
        'Its library, likes, playlists and learned taste are removed for '
        'good. Music files stay on the device.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Keep'),
        ),
        FilledButton.tonal(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('Delete'),
        ),
      ],
    ),
  );
  return ok ?? false;
}
