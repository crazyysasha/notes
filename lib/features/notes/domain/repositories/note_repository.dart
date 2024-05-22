import 'dart:async';
import '../entities/entities.dart';

abstract interface class NoteRepository {
  FutureOr<List<Note>> get({
    String? search,
    int? categoryId,
    List<int> tagIds = const [],
  });
  FutureOr<Note> getById(int id);
  FutureOr<int> store(Note entity);
  FutureOr<void> delete(Note entity);
  FutureOr<void> update(Note entity);
}

class MockNoteRepository implements NoteRepository {
  final items = [
    const Note(title: 'test 1', content: 'test content 1'),
  ];
  @override
  FutureOr<void> delete(Note entity) {
    items.remove(entity);
  }

  @override
  FutureOr<List<Note>> get({
    String? search,
    int? categoryId,
    List<int> tagIds = const [],
  }) {
    return items;
  }

  @override
  FutureOr<Note> getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  FutureOr<int> store(Note entity) {
    // TODO: implement store
    throw UnimplementedError();
  }

  @override
  FutureOr<void> update(Note entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
