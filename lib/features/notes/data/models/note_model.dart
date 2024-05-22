import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';

import 'models.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@Freezed(addImplicitFinal: false)
class NoteModel extends HiveObject with _$NoteModel {
  NoteModel._();

  @HiveType(typeId: 0, adapterName: 'NoteModelAdapter')
  factory NoteModel({
    @HiveField(0) required String title,
    @HiveField(1) required String content,
    @HiveField(2) CategoryModel? category,
    @HiveField(4) @Default([]) List<TagModel> tags,
  }) = _NoteModel;

  Note toEntity() {
    return Note(
      id: key,
      title: title,
      content: content,
      category: category?.toEntity(),
      tags: tags
          .map(
            (TagModel e) => e.toEntity(),
          )
          .toList(),
    );
  }
}
