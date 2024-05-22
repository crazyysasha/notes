import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';
import 'package:notes/features/notes/domain/repositories/note_repository.dart';
import 'package:notes/features/notes/domain/repositories/repositories.dart';

part 'note_update_event.dart';
part 'note_update_state.dart';
part 'note_update_bloc.freezed.dart';

class NoteUpdateBloc extends Bloc<NoteUpdateEvent, NoteUpdateState> {
  final NoteRepository repository;
  NoteUpdateBloc({required Note payload, required this.repository})
      : //repository = MockNoteRepository(),
        super(
          NoteUpdateState(
            payload: payload,
          ),
        ) {
    on<NoteUpdateEvent>((event, emit) {});
  }
}
