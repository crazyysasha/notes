part of 'note_store_bloc.dart';

@freezed
class NoteStoreEvent with _$NoteStoreEvent {
  const factory NoteStoreEvent.started() = _Started;
  const factory NoteStoreEvent.payloadChanged({
    required Note payload,
  }) = _PayloadChanged;
  const factory NoteStoreEvent.requested() = _Requested;
}
