part of 'note_list_bloc.dart';

@freezed
class NoteListState with _$NoteListState {
  const factory NoteListState({
    @Default([]) List<Note> data,
    @Default(false) bool inProcess,
    @Default(false) bool success,
    String? failureMessage,
  }) = _NoteListState;
}
