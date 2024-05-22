// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TagModelAdapter extends TypeAdapter<_$TagModelImpl> {
  @override
  final int typeId = 2;

  @override
  _$TagModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TagModelImpl(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$TagModelImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TagModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
