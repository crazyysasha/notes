import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_test.dart';
import 'package:notes/core/exceptions/exceptions.dart';
import 'package:notes/features/notes/data/models/models.dart';
import 'package:notes/features/notes/data/sources/local_category_source.dart';

void main() {
  late LocalCategorySource localCategorySource;
  late Box<CategoryModel> categoryBox;

  setUpAll(() async {
    await setUpTestHive();
    Hive.registerAdapter(CategoryModelAdapter());
  });

  setUp(() async {
    categoryBox = await Hive.openBox<CategoryModel>('testCategoryBox');
    localCategorySource = LocalCategorySource(box: categoryBox);
  });

  tearDown(() async {
    await categoryBox.clear();
    await tearDownTestHive();
  });

  group('LocalCategorySource', () {
    final testCategoryModel = CategoryModel(name: 'Test Category');

    test('store should add category to the box', () async {
      final result = await localCategorySource.store(testCategoryModel);

      expect(result, 0);
      expect(categoryBox.get(0), testCategoryModel);
    });

    test('getById should return category if it exists', () async {
      await categoryBox.add(testCategoryModel);
      final result = await localCategorySource.getById(0);

      expect(result, testCategoryModel);
    });

    test('getById should throw NotFoundException if category does not exist',
        () async {
      expect(() => localCategorySource.getById(999),
          throwsA(isA<NotFoundException>()));
    });

    test('delete should remove category from the box', () async {
      await categoryBox.add(testCategoryModel);
      await localCategorySource.delete(0);

      expect(categoryBox.get(0), isNull);
    });

    test('update should put category in the box', () async {
      await categoryBox.add(testCategoryModel);
      final updatedCategoryModel =
          testCategoryModel.copyWith(name: 'Updated Category');
      await localCategorySource.update(id: 0, model: updatedCategoryModel);

      final result = await localCategorySource.getById(0);
      expect(result.name, 'Updated Category');
    });

    test('get should return all categories', () async {
      await categoryBox.add(testCategoryModel);

      final result = await localCategorySource.get();

      expect(result, [testCategoryModel]);
    });
  });
}
