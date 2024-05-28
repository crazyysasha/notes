import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:notes/core/widgets/widgets.dart';
import '../../features/notes/presentation/screens/screens.dart';
import 'package:sheet/route.dart';

class NotesRouter {
  final GoRouter config = GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => ShellScaffold(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'Notes',
                path: '/',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'Deleted notes',
                path: '/deleted',
                builder: (context, state) => const DeletedNotesScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: 'note.edit',
        path: '/edit/:id',
        pageBuilder: (context, state) => CupertinoExtendedPage(
          child: NoteEditScreen(
            id: int.parse(state.pathParameters['id']!),
          ),
        ),
      ),
      GoRoute(
        path: '/delete/:id',
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: secondaryAnimation.drive(
              Tween(
                begin: 1,
                end: 0,
              ),
            ),
            child: FadeTransition(
              opacity: animation.drive(
                Tween(
                  begin: 0,
                  end: 1,
                ),
              ),
              child: child,
            ),
          ),
          opaque: false,
          child: NoteDeleteActionSheet(
            id: int.parse(state.pathParameters['id']!),
          ),
        ),
      ),
      GoRoute(
        name: 'note.store',
        path: '/store',
        pageBuilder: (context, state) => const MaterialExtendedPage(
          child: NoteStoreScreen(),
        ),
        routes: [
          GoRoute(
            path: 'category/store',
            pageBuilder: (context, state) => const CupertinoSheetPage(
              // fit: SheetFit.loose,
              child: CategoryStoreScreen(),
            ),
          ),
        ],
      ),
    ],
  );
}
