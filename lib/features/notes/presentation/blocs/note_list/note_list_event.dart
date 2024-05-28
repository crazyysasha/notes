part of 'note_list_bloc.dart';

@freezed
class NoteListEvent with _$NoteListEvent {
  const factory NoteListEvent.started() = _Started;
  const factory NoteListEvent.loadRequested({
    String? search,
  }) = _LoadRequested;
}
