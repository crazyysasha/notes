part of 'category_store_bloc.dart';

@freezed
class CategoryStoreEvent with _$CategoryStoreEvent {
  const factory CategoryStoreEvent.started() = _Started;
  const factory CategoryStoreEvent.changed({
    required final Category payload,
  }) = _Changed;
  const factory CategoryStoreEvent.requested() = _Requested;
}
