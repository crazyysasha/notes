import 'package:go_router/go_router.dart';
import 'package:notes/core/widgets/widgets.dart';
import 'package:notes/features/notes/presentation/screens/screens.dart';

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
                name: 'Notes',
                path: '/',
                builder: (context, state) => const HomeScreen(),
                routes: [],
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
        builder: (context, state) => NoteEditScreen(
          id: int.parse(state.pathParameters['id']!),
        ),
      ),
      GoRoute(
        name: 'note.store',
        path: '/store',
        builder: (context, state) => const NoteStoreScreen(),
      ),
    ],
  );
}
