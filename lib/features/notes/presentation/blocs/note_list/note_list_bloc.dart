import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/entities.dart';
import '../../../domain/repositories/repositories.dart';

part 'note_list_event.dart';
part 'note_list_state.dart';
part 'note_list_bloc.freezed.dart';

class NoteListBloc extends Bloc<NoteListEvent, NoteListState> {
  final NoteRepository repository;
  NoteListBloc({
    required this.repository,
  }) : //repository = MockNoteRepository(),
        super(
          const NoteListState(),
        ) {
    on(_onStarted);
    on(_onLoadRequested);
  }
  void _onStarted(
    _Started event,
    Emitter<NoteListState> emit,
  ) async {
    add(const _LoadRequested());
  }

  Future<void> _onLoadRequested(
      _LoadRequested event, Emitter<NoteListState> emit) async {
    try {
      emit(
        state.copyWith(
          inProcess: true,
          success: false,
          failureMessage: null,
        ),
      );
      // TODO: remove delay
      if (kDebugMode) {
        await Future.delayed(
          const Duration(
            milliseconds: 500,
          ),
        );
      }
      final data = await repository.get(
        search: event.search,
      );

      emit(
        state.copyWith(
          inProcess: false,
          data: data,
          success: true,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          inProcess: false,
          failureMessage: e.toString(),
        ),
      );
    }
  }
}
