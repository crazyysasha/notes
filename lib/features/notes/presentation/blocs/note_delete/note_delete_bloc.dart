import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show kDebugMode;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:notes/features/notes/domain/repositories/repositories.dart';

part 'note_delete_event.dart';
part 'note_delete_state.dart';
part 'note_delete_bloc.freezed.dart';

class NoteDeleteBloc extends Bloc<NoteDeleteEvent, NoteDeleteState> {
  final NoteRepository repository;

  NoteDeleteBloc({
    required this.repository,
  }) : super(const _Initial()) {
    on<_Started>((event, emit) {
      // TODO: why ?
    });

    on<_Requested>((event, emit) async {
      try {
        emit(const NoteDeleteState.inProcess());

        // TODO: remove delay
        if (kDebugMode) {
          await Future.delayed(
            const Duration(
              milliseconds: 500,
            ),
          );
        }

        await repository.delete(
          event.id,
        );

        emit(const NoteDeleteState.success());
      } catch (e) {
        emit(
          NoteDeleteState.failure(
            message: e.toString(),
          ),
        );
      }
    });
  }
}
