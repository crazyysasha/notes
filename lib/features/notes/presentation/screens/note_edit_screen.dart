import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/core/utils/injector.dart';

import 'package:notes/features/notes/presentation/blocs/note_delete/note_delete_bloc.dart';

import 'package:notes/features/notes/presentation/blocs/note_list/note_list_bloc.dart';

import 'package:notes/features/notes/presentation/blocs/note_update/note_update_bloc.dart';

import 'package:notes/features/notes/presentation/blocs/note_view/note_view_bloc.dart';
import 'package:notes/features/notes/presentation/widgets/note_form.dart';

import '../../domain/entities/entities.dart';

class NoteEditScreen extends StatefulWidget {
  final int id;
  const NoteEditScreen({
    super.key,
    required this.id,
  });

  @override
  State<NoteEditScreen> createState() => _NoteEditScreenState();
}

class _NoteEditScreenState extends State<NoteEditScreen> {
  @override
  void initState() {
    super.initState();
    viewBloc = NoteViewBloc(repository: i.of());
    viewBloc.add(
      NoteViewEvent.started(id: widget.id),
    );
  }

  late final NoteViewBloc viewBloc;

  @override
  void dispose() {
    viewBloc.close();

    if (i.contains<NoteUpdateBloc>()) {
      i.unregister<NoteUpdateBloc>().close();
    }
    if (i.contains<NoteDeleteBloc>()) {
      i.unregister<NoteDeleteBloc>().close();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteViewBloc, NoteViewState>(
      bloc: viewBloc,
      listener: (context, state) => state.whenOrNull(
        success: (data) {
          if (!i.contains<NoteUpdateBloc>()) {
            i.register(
              NoteUpdateBloc(
                repository: i.of(),
                payload: data,
              ),
            );
          }
          if (!i.contains<NoteDeleteBloc>()) {
            i.register(
              NoteDeleteBloc(
                repository: i.of(),
                entity: data,
              ),
            );
          }
          return;
        },
        failure: (message) {
          context.pop();

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
            ),
          );
          return;
        },
      ),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('My note'),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actionsAlignment: MainAxisAlignment.spaceAround,
                    title: const Text(
                      'Delete note?',
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      BlocConsumer<NoteDeleteBloc, NoteDeleteState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            success: () {
                              i.of<NoteListBloc>().add(
                                    NoteListEvent.loadRequested(),
                                  );
                              context.pop();
                              context.pop();
                            },
                            failure: (message) =>
                                ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  message,
                                ),
                              ),
                            ),
                          );
                        },
                        bloc: i.of<NoteDeleteBloc>(),
                        builder: (context, state) {
                          return FilledButton(
                            onPressed: () {
                              i.of<NoteDeleteBloc>().add(
                                    const NoteDeleteEvent.requested(),
                                  );
                            },
                            child: state.maybeWhen(
                              inProcess: () =>
                                  const CircularProgressIndicator.adaptive(),
                              orElse: () => const Text('Yes'),
                            ),
                          );
                        },
                      ),
                      FilledButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text('No'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.delete_outline_rounded),
            ),
          ],
        ),
        body: state.when(
          initial: () {
            return Center(
              child: Column(
                children: [
                  const Text('Something went wrong!'),
                  FilledButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Please try again'),
                  ),
                ],
              ),
            );
          },
          inProcess: () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
          success: (Note data) {
            return BlocBuilder<NoteUpdateBloc, NoteUpdateState>(
              bloc: i.of<NoteUpdateBloc>(),
              builder: (context, updateState) {
                return NoteEditBody(
                  payload: updateState.payload,
                  loading: state.maybeWhen(
                    orElse: () => false,
                    inProcess: () => true,
                  ),
                );
              },
            );
          },
          failure: (String message) {
            return Center(
              child: Column(
                children: [
                  Text(message),
                  FilledButton(
                    onPressed: () {
                      viewBloc.add(
                        NoteViewEvent.loadRequested(
                          id: widget.id,
                        ),
                      );
                    },
                    child: const Text('Please try again'),
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: state.maybeWhen(
          orElse: () => const SizedBox(),
          success: (data) => BlocProvider(
            create: (context) =>
                NoteUpdateBloc(payload: data, repository: i.of()),
            child: BlocConsumer<NoteUpdateBloc, NoteUpdateState>(
              bloc: i.of<NoteUpdateBloc>(),
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
              builder: (context, updateState) {
                return FilledButton(
                  onPressed: () {
                    i.of<NoteUpdateBloc>().add(
                          const NoteUpdateEvent.requested(),
                        );
                  },
                  child: updateState.inProcess
                      ? const CircularProgressIndicator.adaptive()
                      : const Text('Save'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class NoteEditBody extends StatelessWidget {
  NoteEditBody({
    super.key,
    required this.loading,
    required this.payload,
  });

  final bool loading;

  final Note payload;

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                  child: NoteForm(
                    title: payload.title,
                    content: payload.content,
                    onPayloadChanged: (title, content) =>
                        i.of<NoteUpdateBloc>().add(
                              NoteUpdateEvent.payloadChanged(
                                payload: payload.copyWith(
                                  title: title,
                                  content: content,
                                ),
                              ),
                            ),
                    enabled: !loading,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
