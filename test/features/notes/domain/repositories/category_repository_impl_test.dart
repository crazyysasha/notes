import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_test.dart';
import 'package:notes/features/notes/data/models/models.dart';
import 'package:notes/features/notes/data/sources/sources.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';
import 'package:notes/features/notes/domain/repositories/repositories.dart';

void main() {
  late CategoryRepositoryImpl repository;
  late CategorySource source;
  late Box<CategoryModel> box;

  setUpAll(() async {
    await setUpTestHive();
    Hive.registerAdapter(CategoryModelAdapter());
    box = await Hive.openBox<CategoryModel>('categories');
    source = LocalCategorySource(box: box);
    repository = CategoryRepositoryImpl(source: source);
  });

  tearDownAll(() async {
    await box.clear();
    await box.close();
    await tearDownTestHive();
  });

  group('CategoryRepositoryImpl', () {
    test('get should return list of categories', () async {
      final categoryToAdd = CategoryModel(name: 'Test Category');
      await box.add(categoryToAdd);

      final result = await repository.get();

      expect(result.length, 1);
      expect(result.first.name, 'Test Category');
    });

    test('getById should return category by id', () async {
      final categoryToAdd = CategoryModel(name: 'Test Category');
      final id = await box.add(categoryToAdd);

      final result = await repository.getById(id);

      expect(result.name, 'Test Category');
    });

    test('store should add new category', () async {
      final Category? lastCategory = (await repository.get()).lastOrNull;

      const newCategory = Category(name: 'New Category');

      final result = await repository.store(newCategory);

      expect(result, lastCategory?.id ?? -1 + 1);

      expect(box.get(lastCategory?.id ?? -1 + 1), isNotNull);
    });

    test('update should update existing category', () async {
      final categoryToAdd = CategoryModel(name: 'Test Category');
      final id = await box.add(categoryToAdd);
      final updatedCategory = Category(id: id, name: 'Updated Category');

      await repository.update(updatedCategory);

      final result = box.get(id);

      expect(result!.name, 'Updated Category');
    });

    test('delete should delete category', () async {
      final categoryToAdd = CategoryModel(name: 'Test Category');
      final id = await box.add(categoryToAdd);

      await repository.delete(Category(id: id, name: 'Test Category'));

      final result = box.get(id);

      expect(result, isNull);
    });
  });
}
