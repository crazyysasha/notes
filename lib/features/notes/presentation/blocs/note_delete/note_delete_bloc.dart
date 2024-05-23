import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';
import 'package:notes/features/notes/domain/repositories/repositories.dart';

import '../../../domain/entities/note.dart';

part 'note_delete_event.dart';
part 'note_delete_state.dart';
part 'note_delete_bloc.freezed.dart';

class NoteDeleteBloc extends Bloc<NoteDeleteEvent, NoteDeleteState> {
  final NoteRepository repository;
  final Note entity;
  NoteDeleteBloc({required this.repository, required this.entity})
      : super(const _Initial()) {
    on<_Started>((event, emit) {
      add(const _Requested());
    });

    on<_Requested>((event, emit) async {
      try {
        emit(const NoteDeleteState.inProcess());

        // TODO: remove delay
        await Future.delayed(const Duration(milliseconds: 500));

        await repository.delete(entity);

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
