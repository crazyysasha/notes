part of 'note_delete_bloc.dart';

@freezed
class NoteDeleteEvent with _$NoteDeleteEvent {
  const factory NoteDeleteEvent.started() = _Started;
  const factory NoteDeleteEvent.requested() = _Requested;
}
