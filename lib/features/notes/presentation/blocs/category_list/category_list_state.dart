part of 'category_list_bloc.dart';

@freezed
class CategoryListState with _$CategoryListState {
  const factory CategoryListState({
    @Default(false) bool inProcess,
    @Default([]) List<Category> data,
    @Default(false) bool success,
    String? failureMessage,
  }) = _CategoryListState;
}
