import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/presentation/blocs/note_update/note_update_bloc.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../blocs/blocs.dart';
import '../widgets/widgets.dart';

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
  _onDeleted() {
    context.pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NoteViewBloc(
            repository: i.of(),
          )..add(
              NoteViewEvent.started(
                id: widget.id,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => NoteUpdateBloc(
            repository: i.of(),
          ),
        ),
        BlocProvider.value(
          value: i.of<CategoryListBloc>(),
        ),
      ],
      child: BlocConsumer<NoteViewBloc, NoteViewState>(
        listener: (context, state) => state.whenOrNull(
          success: (data) {
            return context.read<NoteUpdateBloc>().add(
                  NoteUpdateEvent.payloadChanged(
                    payload: data,
                  ),
                );
          },
          failure: (message) {
            context.pop();

            return ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          },
        ),
        builder: (context, state) {
          return BlocBuilder<CategoryListBloc, CategoryListState>(
            builder: (context, categoryListState) {
              return Scaffold(
                appBar: AppBar(
                  title: BlocBuilder<NoteUpdateBloc, NoteUpdateState>(
                    builder: (context, noteUpdateState) {
                      return PullDownButtonWithEntityTitle(
                        titleTextBuilder: (entity) {
                          return state.maybeWhen(
                            orElse: () => 'loading',
                            success: (data) =>
                                entity?.name ??
                                data.category?.name ??
                                'Uncategoried',
                          );
                        },
                        headerTitleText: 'Category',
                        onSelected: (category) {
                          context.read<NoteUpdateBloc>().add(
                                NoteUpdateEvent.payloadChanged(
                                  payload: noteUpdateState.payload.copyWith(
                                    category: category,
                                  ),
                                ),
                              );
                        },
                        entity: noteUpdateState.payload.category,
                        entities: categoryListState.data,
                        additionalItems: [
                          PullDownMenuItem(
                            onTap: () {
                              context.push('/store/category/store');
                            },
                            title: 'create new category',
                          ),
                        ],
                      );
                    },
                  ),
                  actions: [
                    IconButton(
                      onPressed: () async {
                        final result =
                            await context.push('/delete/${widget.id}');
                        if (result is bool && result) {
                          _onDeleted();
                        }
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
                  success: (data) {
                    return BlocBuilder<NoteUpdateBloc, NoteUpdateState>(
                      builder: (context, updateState) {
                        return NoteEditBody(
                          title: updateState.payload.title,
                          content: updateState.payload.content,
                          loading: state.maybeWhen(
                            orElse: () => false,
                            inProcess: () => true,
                          ),
                          onPayloadChanged: (title, content) {
                            i.of<NoteUpdateBloc>().add(
                                  NoteUpdateEvent.payloadChanged(
                                    payload: updateState.payload.copyWith(
                                      title: title,
                                      content: content,
                                    ),
                                  ),
                                );
                          },
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
                              context.read<NoteViewBloc>().add(
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
                  success: (data) =>
                      BlocConsumer<NoteUpdateBloc, NoteUpdateState>(
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
                    builder: (context, updateState) {
                      return FilledButton(
                        onPressed: () {
                          context.read<NoteUpdateBloc>().add(
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
              );
            },
          );
        },
      ),
    );
  }
}
