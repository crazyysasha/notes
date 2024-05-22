part of 'note_update_bloc.dart';

@freezed
class NoteUpdateEvent with _$NoteUpdateEvent {
  const factory NoteUpdateEvent.started() = _Started;
  const factory NoteUpdateEvent.payloadChanged({
    required Note payload,
  }) = _PayloadChanged;
  const factory NoteUpdateEvent.requested() = _Requested;
}
