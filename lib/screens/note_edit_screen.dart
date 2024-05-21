import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class NotesEditScreen extends StatelessWidget {
  NotesEditScreen({super.key});

  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actionsAlignment: MainAxisAlignment.spaceAround,
                  title: const Text(
                    'delete note?',
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    FilledButton(
                      onPressed: () {},
                      child: const Text('yes'),
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('no'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.cancel_outlined),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          focusNode.requestFocus();
        },
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                scrollBehavior: const CupertinoScrollBehavior(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    fillOverscroll: true,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            bottom: 40,
                            left: 20,
                            right: 20,
                          ),
                          child: TextField(
                            decoration: InputDecoration(hintText: 'title'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 40,
                            left: 20,
                            right: 20,
                          ),
                          child: TextField(
                            focusNode: focusNode,
                            maxLines: 9999,
                            minLines: 1,
                            decoration: const InputDecoration(
                              hintText: 'note text',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FilledButton(
        onPressed: () {},
        child: const Text('save'),
      ),
    );
  }
}
