import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'tag.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const factory Note({
    int? id,
    required String title,
    required String content,
    Category? category,
    @Default([]) List<Tag> tags,
    int? color,
  }) = _Note;
}
