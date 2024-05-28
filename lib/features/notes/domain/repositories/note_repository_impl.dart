import 'dart:async';
import 'package:notes/core/exceptions/exceptions.dart';

import 'repositories.dart';
import '../../data/models/models.dart';
import '../../data/sources/sources.dart';
import '../entities/entities.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteSource source;
  final CategorySource categorySource;

  NoteRepositoryImpl({
    required this.source,
    required this.categorySource,
  });
  @override
  FutureOr<void> delete(int entityId) {
    return source.delete(entityId);
  }

  @override
  FutureOr<List<Note>> get({
    String? search,
    int? categoryId,
    List<int> tagIds = const [],
  }) async {
    return (await source.get(
      search: search,
      categoryId: categoryId,
      tagIds: tagIds,
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
  FutureOr<int> store(Note entity) async {
    return source.store(
      NoteModel(
        title: entity.title,
        content: entity.content,
        color: entity.color,
        category: entity.category != null
            ? await categorySource.firstOrStore(
                id: entity.category?.id,
                findingModel: entity.category?.id == null
                    ? CategoryModel(name: entity.category?.name ?? '')
                    : null,
              )
            : null,
      ),
    );
  }

  @override
  FutureOr<void> update(Note entity) async {
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
        color: entity.color,
        category: await categorySource.firstOrStore(
          id: entity.category?.id,
        ),
      ),
    );
  }
}
