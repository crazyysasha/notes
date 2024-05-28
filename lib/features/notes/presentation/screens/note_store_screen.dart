import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:notes/core/utils/injector.dart';

import 'package:notes/features/notes/presentation/blocs/blocs.dart';

import 'package:notes/features/notes/presentation/widgets/note_store_body.dart';
import 'package:notes/features/notes/presentation/widgets/pull_down_button_with_entity_title.dart';
import 'package:pull_down_button/pull_down_button.dart';

class NoteStoreScreen extends StatelessWidget {
  const NoteStoreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NoteStoreBloc(
            repository: i.of(),
          ),
        ),
        BlocProvider.value(
          value: i.of<CategoryListBloc>(),
        ),
      ],
      child: BlocConsumer<NoteStoreBloc, NoteStoreState>(
        listener: (context, state) {
          if (state.success) {
            context.pop(true);
          }

          if (state.failureMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failureMessage!),
              ),
            );
          }
        },
        builder: (context, noteStoreState) {
          final categoryListState = context.watch<CategoryListBloc>().state;

          return Scaffold(
            appBar: AppBar(
              title: PullDownButtonWithEntityTitle(
                titleTextBuilder: (entity) {
                  return entity?.name ?? 'Uncategoried';
                },
                headerTitleText: 'Category',
                onSelected: (category) {
                  context.read<NoteStoreBloc>().add(
                        NoteStoreEvent.payloadChanged(
                          payload: noteStoreState.payload.copyWith(
                            category: category,
                          ),
                        ),
                      );
                },
                entity: noteStoreState.payload.category,
                entities: categoryListState.data,
                additionalItems: [
                  PullDownMenuItem(
                    onTap: () {
                      context.push('/store/category/store');
                    },
                    title: 'create new category',
                  ),
                ],
              ),
            ),
            body: NoteStoreBody(
              loading: noteStoreState.inProcess,
              failureMessage: noteStoreState.failureMessage,
              onPayloadChanged: (title, content) {
                context.read<NoteStoreBloc>().add(
                      NoteStoreEvent.payloadChanged(
                        payload: noteStoreState.payload.copyWith(
                          title: title,
                          content: content,
                        ),
                      ),
                    );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<NoteStoreBloc>().add(
                      const NoteStoreEvent.requested(),
                    );
              },
              child: noteStoreState.inProcess
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
