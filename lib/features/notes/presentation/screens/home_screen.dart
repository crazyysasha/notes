import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/domain/entities/note.dart';

import '../blocs/note_list/note_list_bloc.dart';

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
        title: const Text('notes'),
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
        child: const Icon(Icons.add),
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
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.push('/edit/${items[index].id}'),
        child: Card(
          color: Colors.amberAccent,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(items[index].title),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  items[index].content,
                  maxLines: 4,
                ),
              ],
            ),
          ),
        ),
      ),
      padding: const EdgeInsets.all(10),
    );
  }
}
