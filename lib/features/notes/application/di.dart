import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/utils/injector.dart';

import '../data/models/models.dart';
import '../data/sources/sources.dart';
import '../domain/repositories/repositories.dart';
import '../presentation/blocs/blocs.dart';

Future<void> initNotesDependencies() async {
  Hive.registerAdapter(NoteModelAdapter());

  Hive.registerAdapter(CategoryModelAdapter());

  i.register<NoteSource>(
    LocalNoteSource(
      box: await Hive.openBox<NoteModel>('notes'),
    ),
  );

  i.register<CategorySource>(
    LocalCategorySource(
      box: await Hive.openBox<CategoryModel>('categories'),
    ),
  );

  i.register<NoteRepository>(
    NoteRepositoryImpl(
      source: i.of(),
      categorySource: i.of(),
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
