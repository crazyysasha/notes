import 'dart:async';
import '../../data/models/models.dart';

abstract interface class NoteSource {
  FutureOr<List<NoteModel>> get({
    String? search,
    int? categoryId,
    List<int> tagIds = const [],
  });
  FutureOr<NoteModel> getById(int id);
  FutureOr<int> store(NoteModel model);
  FutureOr<void> delete(int id);
  FutureOr<void> update({
    required int id,
    required NoteModel model,
  });
}
