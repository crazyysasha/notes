import 'dart:async';

import '../entities/entities.dart';

abstract interface class CategoryRepository {
  FutureOr<List<Category>> get({List<int> ids = const []});
  FutureOr<Category> getById(int id);
  FutureOr<int> store(Category entity);
  FutureOr<Category> firstOrStore(Category entity);
  FutureOr<void> update(Category entity);
  FutureOr<void> delete(Category entity);
}
