import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/domain/entities/note.dart';
import 'package:notes/features/notes/presentation/theme/theme.dart';

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
        centerTitle: false,
        title: Text(
          'Notes',
          style: NoteStyle.screenTitleStyle,
        ),
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
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => Card(
        color: Color(items[index].color ?? 0x00ffff),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => context.push('/edit/${items[index].id}'),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items[index].title,
                  style: NoteStyle.cardTitleStyle,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  items[index].content,
                  maxLines: 6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
