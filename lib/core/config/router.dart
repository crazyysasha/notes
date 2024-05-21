import 'package:go_router/go_router.dart';
import 'package:notes/screens/deleted_notes_screen.dart';
import 'package:notes/screens/home_screen.dart';
import 'package:notes/screens/note_edit_screen.dart';
import 'package:notes/screens/shell_scaffold.dart';

class NotesRouter {
  final GoRouter router = GoRouter(
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
                name: 'notes',
                path: '/',
                builder: (context, state) => const HomeScreen(),
                routes: [],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'deleted notes',
                path: '/deleted',
                builder: (context, state) => const DeletedNotesScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: 'note.edit',
        path: '/edit',
        builder: (context, state) => NotesEditScreen(),
      ),
    ],
  );
}
