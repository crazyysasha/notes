import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:notes/features/notes/domain/entities/entities.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@Freezed(addImplicitFinal: false)
class CategoryModel extends HiveObject with _$CategoryModel {
  CategoryModel._();

  @HiveType(typeId: 1, adapterName: 'CategoryModelAdapter')
  factory CategoryModel({
    @HiveField(0) required String name,
  }) = _CategoryModel;

  Category toEntity() => Category(
        name: name,
        id: key,
      );
}
