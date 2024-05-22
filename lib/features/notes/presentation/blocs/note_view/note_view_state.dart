part of 'note_view_bloc.dart';

@freezed
class NoteViewState with _$NoteViewState {
  const factory NoteViewState.initial() = _Initial;
  const factory NoteViewState.inProcess() = _InProcess;
  const factory NoteViewState.success({required Note data}) = _Success;
  const factory NoteViewState.failure({required String message}) = _Failure;
}
