import 'dart:async';
import 'package:hive/hive.dart';
import 'package:notes/core/exceptions/exceptions.dart';

import 'sources.dart';
import '../../data/models/models.dart';

class LocalNoteSource implements NoteSource {
  final Box<NoteModel> box;

  LocalNoteSource({required this.box});

  @override
  Future<void> delete(int id) {
    return box.delete(id);
  }

  @override
  Future<List<NoteModel>> get({
    String? search,
    int? categoryId,
    List<int> tagIds = const [],
  }) async {
    var filtered = box.values;

    if (search != null) {
      filtered = filtered.where(
        (element) => element.title.toLowerCase().replaceAll(' ', '').contains(
              search.toLowerCase().replaceAll(
                    ' ',
                    '',
                  ),
            ),
      );
    }

    if (categoryId != null) {
      filtered = filtered.where(
        (element) => element.category?.key == categoryId,
      );
    }

    if (tagIds.isNotEmpty) {
      filtered = filtered.where(
        (element) => element.tags.any(
          (tag) => tagIds.contains(
            tag.key,
          ),
        ),
      );
    }

    return filtered.toList();
  }

  @override
  FutureOr<NoteModel> getById(int id) {
    final model = box.get(id);

    if (model == null) {
      throw NotFoundException(message: "Note with id: $id not found.");
    }
    return model;
  }

  @override
  FutureOr<int> store(NoteModel model) {
    return box.add(model);
  }

  @override
  FutureOr<void> update({
    required int id,
    required NoteModel model,
  }) {
    return box.put(id, model);
  }
}
