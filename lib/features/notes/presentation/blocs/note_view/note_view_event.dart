part of 'note_view_bloc.dart';

@freezed
class NoteViewEvent with _$NoteViewEvent {
  const factory NoteViewEvent.started({
    required int id,
  }) = _Started;
  const factory NoteViewEvent.loadRequested({
    required int id,
  }) = _LoadRequested;
}
