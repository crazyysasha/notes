import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/core/utils/injector.dart';

import 'package:notes/features/notes/presentation/blocs/note_list/note_list_bloc.dart';
import 'package:notes/features/notes/presentation/widgets/note_form.dart';

import '../blocs/note_store/note_store_bloc.dart';

class NoteStoreScreen extends StatelessWidget {
  const NoteStoreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteStoreBloc(repository: i.of()),
      child: BlocConsumer<NoteStoreBloc, NoteStoreState>(
        listener: (context, state) {
          if (state.success) {
            i.of<NoteListBloc>().add(const NoteListEvent.loadRequested());
            context.pop();
          }
          if (state.failureMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failureMessage!),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('New note'),
            ),
            body: NoteStoreBody(
              loading: state.inProcess,
              failureMessage: state.failureMessage,
              onPayloadChanged: (title, content) =>
                  context.read<NoteStoreBloc>().add(
                        NoteStoreEvent.payloadChanged(
                          payload: state.payload.copyWith(
                            title: title,
                            content: content,
                          ),
                        ),
                      ),
            ),
            floatingActionButton: FilledButton(
              onPressed: () {
                context.read<NoteStoreBloc>().add(
                      const NoteStoreEvent.requested(),
                    );
              },
              child: state.inProcess
                  ? const CircularProgressIndicator.adaptive()
                  : const Text(
                      'Store',
                    ),
            ),
          );
        },
      ),
    );
  }
}

class NoteStoreBody extends StatelessWidget {
  final bool loading;
  final String? failureMessage;
  const NoteStoreBody({
    super.key,
    this.loading = false,
    this.failureMessage,
    this.onPayloadChanged,
  });
  final void Function(String title, String content)? onPayloadChanged;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: false,
          child: NoteForm(
            onPayloadChanged: onPayloadChanged,
            enabled: !loading,
          ),
        )
      ],
    );
  }
}
