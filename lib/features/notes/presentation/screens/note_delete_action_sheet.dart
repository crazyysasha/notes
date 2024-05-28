import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/presentation/blocs/blocs.dart';

class NoteDeleteActionSheet extends StatelessWidget {
  final int id;

  const NoteDeleteActionSheet({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteDeleteBloc(
        repository: i.of(),
      ),
      child: BlocConsumer<NoteDeleteBloc, NoteDeleteState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              context.pop(true);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black.withOpacity(.5),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: CupertinoActionSheet(
                title: const Text(
                  'Delete note?',
                  textAlign: TextAlign.center,
                ),
                message: const Text(
                  'this action can move note to trash',
                ),
                actions: [
                  CupertinoActionSheetAction(
                    onPressed: () {
                      context.read<NoteDeleteBloc>().add(
                            NoteDeleteEvent.requested(id: id),
                          );
                    },
                    child: const Text('yes'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('No'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
