part of 'note_store_bloc.dart';

@freezed
class NoteStoreState with _$NoteStoreState {
  const factory NoteStoreState({
    @Default(false) inProcess,
    @Default(
      Note(
        title: '',
        content: '',
      ),
    )
    Note payload,
    @Default(false) bool success,
    String? failureMessage,
  }) = _NoteStoreState;
}
