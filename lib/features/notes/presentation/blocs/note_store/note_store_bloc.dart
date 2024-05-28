import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';

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
  List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.blueGrey.shade100,
  ];

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
      // TODO: remove delay
      if (kDebugMode) {
        await Future.delayed(
          const Duration(
            milliseconds: 500,
          ),
        );
      }

      final random = Random();
      final _ = await repository.store(
        state.payload.copyWith(
          color: cardsColor[random.nextInt(cardsColor.length)].value,
        ),
      );
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
