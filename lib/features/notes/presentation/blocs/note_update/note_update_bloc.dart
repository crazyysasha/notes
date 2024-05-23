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
    on(_onStarted);
    on(_onPayloadChanged);
    on(_onRequested);
  }

  void _onStarted(
    _Started event,
    Emitter<NoteUpdateState> emit,
  ) async {}

  void _onPayloadChanged(
    _PayloadChanged event,
    Emitter<NoteUpdateState> emit,
  ) async {
    emit(
      state.copyWith(
        payload: event.payload,
      ),
    );
  }

  void _onRequested(
    _Requested event,
    Emitter<NoteUpdateState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          inProcess: true,
          success: false,
          failureMessage: null,
        ),
      );

      await Future.delayed(const Duration(milliseconds: 500));

      final _ = await repository.update(state.payload);

      emit(
        state.copyWith(
          inProcess: false,
          success: true,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          failureMessage: e.toString(),
          inProcess: false,
        ),
      );
    }
  }
}
