import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show kDebugMode;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';
import 'package:notes/features/notes/domain/repositories/repositories.dart';

part 'category_store_event.dart';
part 'category_store_state.dart';
part 'category_store_bloc.freezed.dart';

class CategoryStoreBloc extends Bloc<CategoryStoreEvent, CategoryStoreState> {
  final CategoryRepository repository;
  CategoryStoreBloc({
    required this.repository,
  }) : super(const CategoryStoreState()) {
    on<_Started>((event, emit) {});
    on<_Changed>((event, emit) {
      emit(
        state.copyWith(
          payload: event.payload,
        ),
      );
    });
    on<_Requested>((event, emit) async {
      try {
        emit(
          state.copyWith(
            inProcess: true,
            success: false,
            failureMessage: '',
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

        final category = await repository.firstOrStore(state.payload);

        emit(
          state.copyWith(
            inProcess: false,
            success: true,
            payload: category,
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
    });
  }
}
