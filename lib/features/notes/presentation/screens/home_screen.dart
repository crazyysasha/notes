import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/domain/entities/note.dart';

import '../blocs/note_list_bloc/note_list_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    i.of<NoteListBloc>().add(const NoteListEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notes'),
      ),
      body: BlocConsumer<NoteListBloc, NoteListState>(
        bloc: i.of<NoteListBloc>(),
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
          return HomeScreenBody(
            items: state.data,
            loading: state.inProcess,
            success: state.success,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/store');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  // it's loaded Note entity items
  final List<Note> items;

  // loading state getter
  final bool loading;

  // success state getter
  final bool success;

  const HomeScreenBody({
    super.key,
    required this.items,
    required this.loading,
    required this.success,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () => context.push('/edit/${items[index].id}'),
        title: Text(
          items[index].title,
        ),
        subtitle: Text(
          items[index].content,
        ),
        leading: CircleAvatar(
          child: Text(
            items[index].category?.name[0] ?? 'No',
          ),
        ),
      ),
    );
  }
}
