import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/features/notes/domain/entities/note.dart';

class HomeBody extends StatelessWidget {
  // it's loaded Note entity items
  final List<Note> items;

  // loading state getter
  final bool loading;

  // success state getter
  final bool success;

  // trigers this method on reload button pressed
  final Function()? onReload;

  const HomeBody({
    super.key,
    required this.items,
    required this.loading,
    required this.success,
    required this.onReload,
  });

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (success & items.isEmpty) {
      return const Center(
        child: Text(
          'notes not found, cuz you\'re not create it!',
        ),
      );
    }

    if (success & items.isNotEmpty) {
      return GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) => Card(
          color: Color(items[index].color ?? 0x00ffff),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () async {
              final result = await context.push('/edit/${items[index].id}');
              if (result is bool && result) {
                onReload?.call();
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    items[index].title,
                    // style: NoteStyle.cardTitleStyle,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    items[index].content,
                    maxLines: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Center(
      child: Column(
        children: [
          const Text('something went wrong:'),
          FilledButton(
            onPressed: onReload,
            child: const Text('reload'),
          ),
        ],
      ),
    );
  }
}
