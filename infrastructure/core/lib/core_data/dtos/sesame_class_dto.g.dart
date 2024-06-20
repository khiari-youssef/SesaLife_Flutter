// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sesame_class_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SesameClassDTOAdapter extends TypeAdapter<SesameClassDTO> {
  @override
  final int typeId = 6;

  @override
  SesameClassDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SesameClassDTO(
      id: fields[0] as String,
      name: fields[1] as String,
      level: fields[2] as String,
      group: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SesameClassDTO obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.level)
      ..writeByte(3)
      ..write(obj.group);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SesameClassDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameClassDTO _$SesameClassDTOFromJson(Map<String, dynamic> json) =>
    SesameClassDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      level: json['level'] as String,
      group: json['group'] as String,
    );

Map<String, dynamic> _$SesameClassDTOToJson(SesameClassDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'group': instance.group,
    };
