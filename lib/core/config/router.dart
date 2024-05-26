import 'package:go_router/go_router.dart';

import 'package:notes/core/widgets/widgets.dart';
import 'package:notes/features/notes/presentation/screens/category_store_screen.dart';
import 'package:notes/features/notes/presentation/screens/screens.dart';
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
                name: 'notes',
                path: '/',
                builder: (context, state) => const HomeScreen(),
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
        path: '/edit/:id',
        builder: (context, state) => NoteEditScreen(
          id: int.parse(state.pathParameters['id']!),
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
