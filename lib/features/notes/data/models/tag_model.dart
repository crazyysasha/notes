import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
class TagModel extends HiveObject with _$TagModel {
  TagModel._();
  @HiveType(typeId: 2, adapterName: 'TagModelAdapter')
  factory TagModel({
    @HiveField(0) required String name,
  }) = _TagModel;

  Tag toEntity() => Tag(
        name: name,
        id: key,
      );
}
