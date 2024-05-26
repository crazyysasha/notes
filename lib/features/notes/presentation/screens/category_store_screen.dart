import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/presentation/blocs/blocs.dart';

class CategoryStoreScreen extends StatelessWidget {
  const CategoryStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryStoreBloc(
        repository: i.of(),
      ),
      child: BlocConsumer<CategoryStoreBloc, CategoryStoreState>(
        listener: (context, state) {
          if (state.success) {
            i.of<CategoryListBloc>().add(
                  const CategoryListEvent.requested(),
                );
            context.pop();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: const CloseButton(),
              title: const Text('new category'),
              actions: [
                TextButton(
                  onPressed: () {
                    context.read<CategoryStoreBloc>().add(
                          const CategoryStoreEvent.requested(),
                        );
                  },
                  child: state.inProcess
                      ? const CircularProgressIndicator.adaptive()
                      : const Text('done'),
                ),
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: TextField(
                    enabled: !state.inProcess,
                    onChanged: (value) => context.read<CategoryStoreBloc>().add(
                          CategoryStoreEvent.changed(
                            payload: state.payload.copyWith(
                              name: value,
                            ),
                          ),
                        ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
