import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';
import 'package:notes/features/notes/domain/repositories/repositories.dart';

part 'category_list_event.dart';
part 'category_list_state.dart';
part 'category_list_bloc.freezed.dart';

class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  final CategoryRepository repository;
  CategoryListBloc({
    required this.repository,
  }) : super(
          const CategoryListState(),
        ) {
    on<_Started>((event, emit) {
      add(
        const _Requested(),
      );
    });
    on<_Requested>((event, emit) async {
      try {
        emit(
          state.copyWith(
            inProcess: true,
            success: false,
            failureMessage: null,
          ),
        );

        final data = await repository.get();
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
    });
  }
}
