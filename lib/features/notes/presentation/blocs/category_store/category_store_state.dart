part of 'category_store_bloc.dart';

@freezed
class CategoryStoreState with _$CategoryStoreState {
  const factory CategoryStoreState({
    @Default(false) bool inProcess,
    @Default(Category(name: '')) Category payload,
    @Default(false) bool success,
    String? failureMessage,
  }) = _CategoryStoreState;
}
