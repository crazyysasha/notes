import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/features/notes/domain/repositories/note_repository.dart';

import '../../../domain/entities/entities.dart';

part 'note_view_event.dart';
part 'note_view_state.dart';
part 'note_view_bloc.freezed.dart';

class NoteViewBloc extends Bloc<NoteViewEvent, NoteViewState> {
  final NoteRepository repository;
  NoteViewBloc({required this.repository}) : super(const _Initial()) {
    on<_Started>((event, emit) {
      add(
        _LoadRequested(id: event.id),
      );
    });
    on<_LoadRequested>((event, emit) async {
      try {
        emit(const NoteViewState.inProcess());

        // TODO: temp delay
        await Future.delayed(
          const Duration(
            milliseconds: 500,
          ),
        );
        final data = await repository.getById(event.id);

        emit(
          NoteViewState.success(
            data: data,
          ),
        );
      } catch (e) {
        emit(
          NoteViewState.failure(
            message: e.toString(),
          ),
        );
      }
    });
  }
}
