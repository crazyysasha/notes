// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteModelAdapter extends TypeAdapter<_$NoteModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$NoteModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NoteModelImpl(
      title: fields[0] as String,
      content: fields[1] as String,
      category: fields[2] as CategoryModel?,
      tags: (fields[4] as List).cast<TagModel>(),
      color: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$NoteModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.color)
      ..writeByte(4)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
