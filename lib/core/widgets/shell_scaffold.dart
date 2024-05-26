import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellScaffold extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  ShellScaffold({
    super.key,
    required this.navigationShell,
  });

  final Map<String, IconData> icons = {
    'Default': Icons.home,
    'Notes': Icons.notes_outlined,
    'Deleted notes': Icons.delete_outline_outlined,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigationShell.goBranch,
        currentIndex: navigationShell.currentIndex,
        items: [
          for (final branch in navigationShell.route.branches)
            BottomNavigationBarItem(
              label: branch.defaultRoute!.name ?? 'default',
              icon: Icon(icons[branch.defaultRoute?.name] ?? icons['default']),
            ),
        ],
      ),
    );
  }
}
