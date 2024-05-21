import 'package:flutter/material.dart';
import 'package:go_router/src/route.dart';

class ShellScaffold extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  ShellScaffold({
    super.key,
    required this.navigationShell,
  });

  final Map<String, IconData> icons = {
    'default': Icons.home,
    'notes': Icons.notes_outlined,
    'deleted notes': Icons.delete_outline_outlined,
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
              label: branch.defaultRoute!.name ?? 'fuck',
              icon: Icon(icons[branch.defaultRoute?.name] ?? icons['default']),
            ),
        ],
      ),
    );
  }
}
