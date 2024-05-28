import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/core/utils/injector.dart';

import '../blocs/note_list/note_list_bloc.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final NoteListBloc bloc;
  @override
  void initState() {
    bloc = NoteListBloc(repository: i.of())
      ..add(
        const NoteListEvent.started(),
      );

    super.initState();
  }

  @override
  void dispose() {
    bloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notes',
          ),
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SearchBar(
                onChanged: (value) => bloc.add(NoteListEvent.loadRequested(
                  search: value,
                )),
                trailing: [
                  IconButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                    },
                    icon: const Icon(CupertinoIcons.search),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: BlocConsumer<NoteListBloc, NoteListState>(
          listener: (context, state) {
            if (state.failureMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.failureMessage!),
                ),
              );
            }
          },
          builder: (context, state) {
            return HomeBody(
              items: state.data,
              loading: state.inProcess,
              success: state.success,
              onReload: _noteListReloadRequested,
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final result = await context.push('/store');
            if (result is bool && result) {
              _noteListReloadRequested();
            }
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void _noteListReloadRequested() {
    bloc.add(
      const NoteListEvent.loadRequested(),
    );
  }
}
