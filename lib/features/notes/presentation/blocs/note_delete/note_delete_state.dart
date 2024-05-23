part of 'note_delete_bloc.dart';

@freezed
class NoteDeleteState with _$NoteDeleteState {
  const factory NoteDeleteState.initial() = _Initial;
  const factory NoteDeleteState.inProcess() = _InProcess;
  const factory NoteDeleteState.success() = _Success;
  const factory NoteDeleteState.failure({required String message}) = _Failure;
}
