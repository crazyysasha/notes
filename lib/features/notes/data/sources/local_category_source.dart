import 'dart:async';
import 'package:hive/hive.dart';
import 'package:notes/core/exceptions/exceptions.dart';

import 'sources.dart';
import '../models/models.dart';

class LocalCategorySource implements CategorySource {
  final Box<CategoryModel> box;

  LocalCategorySource({required this.box});

  @override
  Future<List<CategoryModel>> get({
    List<int> ids = const [],
  }) async {
    if (ids.isEmpty) {
      return box.values.toList();
    }

    return box.values.where((category) => ids.contains(category.key)).toList();
  }

  @override
  Future<CategoryModel> getById(int id) async {
    final model = box.get(id);
    if (model == null) {
      throw NotFoundException(message: "Category with id: $id not found.");
    }
    return model;
  }

  @override
  Future<int> store(CategoryModel model) async {
    return box.add(model);
  }

  @override
  Future<void> delete(int id) async {
    await box.delete(id);
  }

  @override
  Future<void> update({
    required int id,
    required CategoryModel model,
  }) async {
    await box.put(id, model);
  }

  FutureOr<CategoryModel> firstWhereName(String name) {
    final matches = box.values.where(
      (element) => element.name.toLowerCase() == name.toLowerCase(),
    );

    if (matches.isNotEmpty) {
      return matches.first;
    }
    throw NotFoundException(message: 'category by name: $name not found.');
  }

  @override
  FutureOr<CategoryModel> firstOrStore({
    int? id,
    CategoryModel? findingModel,
  }) async {
    assert(id == null || findingModel == null, '');
    try {
      if (id != null) {
        return getById(id);
      }

      return firstWhereName(findingModel!.name);
    } on NotFoundException catch (_) {
      return getById(
        await store(
          findingModel ?? CategoryModel(name: ''),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
