import 'dart:async';

import '../models/models.dart';

abstract interface class CategorySource {
  FutureOr<List<CategoryModel>> get({
    List<int> ids,
  });
  FutureOr<CategoryModel> getById(int id);
  FutureOr<int> store(CategoryModel model);
  FutureOr<void> delete(int id);
  FutureOr<void> update({
    required int id,
    required CategoryModel model,
  });

  FutureOr<CategoryModel> firstOrStore({
    int? id,
    CategoryModel? findingModel,
  });
}
