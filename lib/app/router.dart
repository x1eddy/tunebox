import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/detail/artist_page.dart';
import '../features/detail/playlist_page.dart';
import '../features/home/home_page.dart';
import '../features/import/import_page.dart';
import '../features/library/library_page.dart';
import '../features/player/player_page.dart';
import '../features/player/queue_page.dart';
import '../features/search/search_page.dart';
import '../features/settings/settings_page.dart';
import '../ui/tab_scroll.dart';
import '../features/taste/taste_page.dart';
import '../state/settings.dart';
import 'shell.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

/// Detail screens live under every tab so the mini player and the navigation
/// bar never disappear.
List<RouteBase> _details() => [
  GoRoute(
    path: 'playlist/:id',
    builder: (_, s) => PlaylistPage(id: s.pathParameters['id']!),
  ),
  GoRoute(
    path: 'artist/:name',
    builder: (_, s) =>
        ArtistPage(name: Uri.decodeComponent(s.pathParameters['name']!)),
  ),
  GoRoute(path: 'import', builder: (_, _) => const ImportPage()),
  GoRoute(path: 'queue', builder: (_, _) => const QueuePage()),
];

/// Pushes a detail screen inside whichever tab is currently open.
void pushDetail(BuildContext context, String sub) {
  final path = GoRouterState.of(context).uri.path;
  final branch = path
      .split('/')
      .firstWhere((e) => e.isNotEmpty, orElse: () => 'home');
  context.push('/$branch/$sub');
}

void goToTab(BuildContext context, String path) => context.go(path);

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => AppShell(shell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (_, _) => const TabScroll(index: 0, child: HomePage()),
              routes: _details(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/explore',
              builder: (_, _) => const TabScroll(index: 1, child: SearchPage()),
              routes: _details(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/library',
              builder: (_, _) =>
                  const TabScroll(index: 2, child: LibraryPage()),
              routes: _details(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/taste',
              builder: (_, _) => const TabScroll(index: 3, child: TastePage()),
              routes: _details(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (_, _) =>
                  const TabScroll(index: 4, child: SettingsPage()),
              routes: _details(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/player',
      parentNavigatorKey: rootNavigatorKey,
      pageBuilder: (context, state) {
        final reduce = ProviderScope.containerOf(
          context,
        ).read(settingsProvider).reduceMotion;
        return CustomTransitionPage(
          key: state.pageKey,
          opaque: false,
          barrierColor: Colors.transparent,
          transitionDuration: Duration(milliseconds: reduce ? 0 : 380),
          reverseTransitionDuration: Duration(milliseconds: reduce ? 0 : 300),
          child: const PlayerPage(),
          transitionsBuilder: (_, animation, _, child) => SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: Offset.zero)
                .animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutCubic,
                    reverseCurve: Curves.easeInCubic,
                  ),
                ),
            child: child,
          ),
        );
      },
    ),
  ],
);
