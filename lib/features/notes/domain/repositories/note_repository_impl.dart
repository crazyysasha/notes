import 'dart:async';
import 'package:notes/core/exceptions/exceptions.dart';

import 'repositories.dart';
import '../../data/models/models.dart';
import '../../data/sources/sources.dart';
import '../entities/entities.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteSource source;

  NoteRepositoryImpl({required this.source});
  @override
  FutureOr<void> delete(Note entity) {
    if (entity.id == null) {
      throw const NotFoundException(message: 'Note can not found on database');
    }
    print(entity.id);
    return source.delete(entity.id!);
  }

  @override
  FutureOr<List<Note>> get({
    String? search,
    int? categoryId,
    List<int> tagIds = const [],
  }) async {
    return (await source.get(
      search: search,
    ))
        .map((e) => e.toEntity())
        .toList();
  }

  @override
  FutureOr<Note> getById(int id) async {
    final model = await source.getById(id);

    return model.toEntity();
  }

  @override
  FutureOr<int> store(Note entity) {
    return source.store(
      NoteModel(
        title: entity.title,
        content: entity.content,
      ),
    );
  }

  @override
  FutureOr<void> update(Note entity) {
    if (entity.id == null) {
      throw NotFoundException(
        message: 'Note with id: ${entity.id} not found in database.',
      );
    }
    return source.update(
      id: entity.id!,
      model: NoteModel(
        title: entity.title,
        content: entity.content,
      ),
    );
  }
}
