import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_test.dart';
import 'package:notes/core/exceptions/exceptions.dart';
import 'package:notes/features/notes/data/models/models.dart';
import 'package:notes/features/notes/data/sources/sources.dart';

void main() {
  late LocalNoteSource localNoteSource;

  late Box<NoteModel> noteBox;
  late Box<CategoryModel> categoryBox;
  late Box<TagModel> tagBox;

  setUpAll(() async {
    await setUpTestHive();
    Hive.registerAdapter(NoteModelAdapter());
    Hive.registerAdapter(CategoryModelAdapter());
    Hive.registerAdapter(TagModelAdapter());
  });

  setUp(() async {
    noteBox = await Hive.openBox<NoteModel>('testNoteBox');
    categoryBox = await Hive.openBox<CategoryModel>('testCategoryBox');
    tagBox = await Hive.openBox<TagModel>('testTagsBox');
    localNoteSource = LocalNoteSource(box: noteBox);
  });

  tearDown(() async {
    await noteBox.clear();
    await categoryBox.clear();
    await tagBox.clear();
    await tearDownTestHive();
  });

  group('LocalNoteSource', () {
    late TagModel testTag;
    late NoteModel testNoteModel;
    late CategoryModel testCategory;

    setUp(() async {
      testCategory = CategoryModel(name: 'Test Category');
      await categoryBox.add(testCategory);
      testTag = TagModel(name: 'Test tag');
      await tagBox.add(testTag);

      testNoteModel = NoteModel(
        title: 'Test Note',
        content: 'This is a test note',
        tags: [testTag],
        category: testCategory,
      );
      await noteBox.add(testNoteModel);
    });

    test('store should add note to the box', () async {
      final newNote = NoteModel(
        title: 'New Note',
        content: 'This is a new note',
        tags: [testTag],
        category: testCategory,
      );
      final result = await localNoteSource.store(newNote);

      expect(result, 1);
      expect(noteBox.values.contains(newNote), isTrue);
    });

    test('getById should return note if it exists', () async {
      final result = await localNoteSource.getById(0);

      expect(result, testNoteModel);
    });

    test('getById should throw NotFoundException if note does not exist', () {
      expect(() => localNoteSource.getById(999),
          throwsA(isA<NotFoundException>()));
    });

    test('delete should remove note from the box', () async {
      await localNoteSource.delete(0);

      expect(noteBox.values.contains(testNoteModel), isFalse);
    });

    test('update should put note in the box', () async {
      final updatedNoteModel =
          testNoteModel.copyWith(title: 'Updated Test Note');
      await localNoteSource.update(id: 1, model: updatedNoteModel);

      final result = await localNoteSource.getById(1);
      expect(result.title, 'Updated Test Note');
    });

    group('get', () {
      test('should return all notes when no filters are applied', () async {
        final result = await localNoteSource.get();

        expect(result, [testNoteModel]);
      });

      test('should filter notes by search term', () async {
        final result = await localNoteSource.get(search: 'Test');

        expect(result, [testNoteModel]);
      });

      test('should filter notes by categoryId', () async {
        final result = await localNoteSource.get(categoryId: testCategory.key);

        expect(result, [testNoteModel]);
      });

      test('should filter notes by tagIds', () async {
        final result = await localNoteSource.get(tagIds: [testTag.key]);

        expect(result, [testNoteModel]);
      });
    });
  });
}
