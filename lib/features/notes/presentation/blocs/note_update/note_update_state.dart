part of 'note_update_bloc.dart';

@freezed
class NoteUpdateState with _$NoteUpdateState {
  const factory NoteUpdateState({
    @Default(false) bool inProcess,
    @Default(Note(title: '', content: '')) Note payload,
    @Default(false) success,
    String? failureMessage,
  }) = _NoteUpdateState;
}
