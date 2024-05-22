import 'dart:async';

import 'repositories.dart';
import '../entities/entities.dart';
import '../../data/models/models.dart';
import '../../data/sources/sources.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategorySource source;

  CategoryRepositoryImpl({required this.source});

  @override
  Future<List<Category>> get({List<int> ids = const []}) async {
    return (await source.get(ids: ids)).map((e) => e.toEntity()).toList();
  }

  @override
  Future<Category> getById(int id) async {
    return (await source.getById(id)).toEntity();
  }

  @override
  Future<int> store(Category entity) async {
    return source.store(
      CategoryModel(
        name: entity.name,
      ),
    );
  }

  @override
  Future<Category> firstOrStore(Category entity) async {
    final model = await source.firstOrStore(
      id: entity.id,
      findingModel: CategoryModel(
        name: entity.name,
      ),
    );

    return model.toEntity();
  }

  @override
  Future<void> update(Category entity) async {
    await source.update(
      id: entity.id!,
      model: CategoryModel(
        name: entity.name,
      ),
    );
  }

  @override
  Future<void> delete(Category entity) async {
    await source.delete(entity.id!);
  }
}
