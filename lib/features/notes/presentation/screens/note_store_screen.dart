import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:notes/core/utils/injector.dart';

import 'package:notes/features/notes/presentation/blocs/blocs.dart';

import 'package:notes/features/notes/presentation/widgets/note_form.dart';
import 'package:pull_down_button/pull_down_button.dart';

class NoteStoreScreen extends StatefulWidget {
  const NoteStoreScreen({super.key});

  @override
  State<NoteStoreScreen> createState() => _NoteStoreScreenState();
}

class _NoteStoreScreenState extends State<NoteStoreScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(vsync: this);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteStoreBloc(
        repository: i.of(),
      ),
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
              title: BlocProvider.value(
                value: i.of<CategoryListBloc>(),
                child: BlocBuilder<CategoryListBloc, CategoryListState>(
                  builder: (context, catState) {
                    context.watch<NoteStoreBloc>();
                    context.watch<CategoryListBloc>();
                    return PullDownButton(
                      onCanceled: () {},
                      itemBuilder: (context) {
                        return [
                          const PullDownMenuHeader(
                            leading: Icon(CupertinoIcons.bars),
                            title: 'Category',
                          ),

                          PullDownMenuItem.selectable(
                            onTap: () {
                              context.read<NoteStoreBloc>().add(
                                    NoteStoreEvent.payloadChanged(
                                      payload: state.payload.copyWith(
                                        category: null,
                                      ),
                                    ),
                                  );
                            },
                            title: 'Uncategoried',
                            selected: state.payload.category == null,
                          ),
                          for (final cat in catState.data)
                            PullDownMenuItem.selectable(
                              onTap: () {
                                context.read<NoteStoreBloc>().add(
                                      NoteStoreEvent.payloadChanged(
                                        payload: state.payload.copyWith(
                                          category: cat,
                                        ),
                                      ),
                                    );
                              },
                              title: cat.name,
                              selected: state.payload.category == cat,
                            ),
                          PullDownMenuItem(
                            onTap: () {
                              context.push('/store/category/store');
                            },
                            title: 'create new category',
                          ),

                          // const PullDownMenuDivider.large(),
                          // const PullDownMenuHeader(
                          //   leading: Icon(CupertinoIcons.tag),
                          //   title: 'Tags',
                          // ),
                          // PullDownMenuItem.selectable(
                          //   onTap: () {},
                          //   title: 'Uncategoried',
                          //   selected: true,
                          // ),
                          // PullDownMenuItem(
                          //   tapHandler: (context, onTap) => onTap?.call(),
                          //   onTap: () {},
                          //   title: 'create new tag',
                          // ),
                        ];
                      },
                      buttonBuilder: (context, showMenu) => TextButton(
                        onPressed: showMenu,
                        onLongPress: showMenu,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                state.payload.category?.name ?? 'Uncategoried'),
                            const SizedBox.square(
                              dimension: 12,
                            ),
                            const Icon(
                              CupertinoIcons.ellipsis_circle,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
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
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<NoteStoreBloc>().add(
                      const NoteStoreEvent.requested(),
                    );
              },
              child: state.inProcess
                  ? const CircularProgressIndicator.adaptive()
                  : const Text(
                      'store',
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
