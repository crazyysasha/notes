import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/utils/injector.dart';
import 'package:notes/features/notes/presentation/blocs/category_list/category_list_bloc.dart';

import '../data/models/models.dart';
import '../data/sources/sources.dart';
import '../domain/repositories/repositories.dart';
import '../presentation/blocs/note_list/note_list_bloc.dart';

Future<void> initNotesDependencies() async {
  Hive.registerAdapter(NoteModelAdapter());
  Hive.registerAdapter(CategoryModelAdapter());

  i.register<NoteSource>(
    LocalNoteSource(
      box: await Hive.openBox<NoteModel>('notes'),
    ),
  );

  i.register<NoteRepository>(
    NoteRepositoryImpl(
      source: i.of(),
    ),
  );

  i.register(
    NoteListBloc(
      repository: i.of(),
    ),
  );

  i.register<CategorySource>(
    LocalCategorySource(
      box: await Hive.openBox<CategoryModel>('categories'),
    ),
  );

  i.registerLazy<CategoryRepository>(
    () => CategoryRepositoryImpl(
      source: i.of(),
    ),
  );

  i.registerLazy(
    () => CategoryListBloc(
      repository: i.of(),
    )..add(const CategoryListEvent.started()),
  );
}
