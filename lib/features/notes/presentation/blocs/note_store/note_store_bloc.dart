import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/features/notes/domain/repositories/repositories.dart';

import '../../../domain/entities/entities.dart';

part 'note_store_event.dart';
part 'note_store_state.dart';
part 'note_store_bloc.freezed.dart';

class NoteStoreBloc extends Bloc<NoteStoreEvent, NoteStoreState> {
  final NoteRepository repository;
  NoteStoreBloc({
    required this.repository,
  }) : super(
          const NoteStoreState(),
        ) {
    on(_onStarted);
    on(_onPayloadChanged);
    on(_onRequested);
  }

  void _onStarted(
    _Started event,
    Emitter<NoteStoreState> emit,
  ) async {
    // TODO: implement event handler
  }

  void _onPayloadChanged(
    _PayloadChanged event,
    Emitter<NoteStoreState> emit,
  ) async {
    emit(
      state.copyWith(
        payload: event.payload,
      ),
    );
  }

  void _onRequested(
    _Requested event,
    Emitter<NoteStoreState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          inProcess: true,
          success: false,
          failureMessage: null,
        ),
      );
      // TODO: temp delay
      await Future.delayed(const Duration(milliseconds: 500));
      final _ = await repository.store(state.payload);
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
