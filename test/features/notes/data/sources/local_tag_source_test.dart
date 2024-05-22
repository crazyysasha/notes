import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_test.dart';
import 'package:notes/core/exceptions/exceptions.dart';
import 'package:notes/features/notes/data/models/models.dart';
import 'package:notes/features/notes/data/sources/sources.dart';

void main() {
  late LocalTagSource localTagSource;
  late Box<TagModel> tagBox;

  setUpAll(() async {
    await setUpTestHive();
    Hive.registerAdapter(TagModelAdapter());
  });

  setUp(() async {
    tagBox = await Hive.openBox<TagModel>('testTagBox');
    localTagSource = LocalTagSource(box: tagBox);
  });

  tearDown(() async {
    await tagBox.clear();
    await tearDownTestHive();
  });

  group('LocalTagSource', () {
    final testTagModel = TagModel(name: 'Test Tag');

    test('store should add tag to the box', () async {
      final result = await localTagSource.store(testTagModel);

      expect(result, 0);
      expect(tagBox.get(0), testTagModel);
    });

    test('getById should return tag if it exists', () async {
      await tagBox.add(testTagModel);
      final result = await localTagSource.getById(0);

      expect(result, testTagModel);
    });

    test('getById should throw NotFoundException if tag does not exist',
        () async {
      expect(
          () => localTagSource.getById(999), throwsA(isA<NotFoundException>()));
    });

    test('delete should remove tag from the box', () async {
      await tagBox.add(testTagModel);
      await localTagSource.delete(0);

      expect(tagBox.get(0), isNull);
    });

    test('update should put tag in the box', () async {
      await tagBox.add(testTagModel);
      final updatedTagModel = testTagModel.copyWith(name: 'Updated Tag');
      await localTagSource.update(id: 0, model: updatedTagModel);

      final result = await localTagSource.getById(0);
      expect(result.name, 'Updated Tag');
    });

    test('get should return all tags when no ids are provided', () async {
      await tagBox.add(testTagModel);

      final result = await localTagSource.get();

      expect(result, [testTagModel]);
    });

    test('get should return tags by ids', () async {
      await tagBox.add(testTagModel);

      final result = await localTagSource.get(ids: [0]);

      expect(result, [testTagModel]);
    });
  });
}
