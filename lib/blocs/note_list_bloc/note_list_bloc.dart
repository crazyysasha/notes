import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/features/feature1/application/services/services.dart';
import 'package:notes/features/feature1/data/models/models.dart';

part 'note_list_event.dart';
part 'note_list_state.dart';
part 'note_list_bloc.freezed.dart';

class NoteListBloc extends Bloc<NoteListEvent, NoteListState> {
  final NotesDataSeriveInterface service;
  NoteListBloc({
    required this.service,
  }) : super(
          const NoteListState(),
        ) {
    on(_onLoadRequested);
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

      emit(state.copyWith(data: []));
    } catch (e) {
      emit(
        state.copyWith(
          failureMessage: e.toString(),
        ),
      );
    }
  }
}
