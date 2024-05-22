import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/utils/injector.dart';

import '../data/models/models.dart';
import '../data/sources/sources.dart';
import '../domain/repositories/repositories.dart';
import '../presentation/blocs/note_list_bloc/note_list_bloc.dart';

Future<void> initNotesDependencies() async {
  Hive.registerAdapter(NoteModelAdapter());

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
}
