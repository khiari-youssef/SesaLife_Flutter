// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sesame_role_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SesamePermissionDTOAdapter extends TypeAdapter<SesamePermissionDTO> {
  @override
  final int typeId = 4;

  @override
  SesamePermissionDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SesamePermissionDTO(
      id: fields[0] as String,
      label: fields[1] as String,
      state: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SesamePermissionDTO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.state);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SesamePermissionDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SesameRoleDTOAdapter extends TypeAdapter<SesameRoleDTO> {
  @override
  final int typeId = 5;

  @override
  SesameRoleDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SesameRoleDTO(
      id: fields[3] as String,
      permissions: (fields[4] as List).cast<SesamePermissionDTO>(),
    );
  }

  @override
  void write(BinaryWriter writer, SesameRoleDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.permissions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SesameRoleDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesamePermissionDTO _$SesamePermissionDTOFromJson(Map<String, dynamic> json) =>
    SesamePermissionDTO(
      id: json['id'] as String,
      label: json['label'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$SesamePermissionDTOToJson(
        SesamePermissionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'state': instance.state,
    };

SesameRoleDTO _$SesameRoleDTOFromJson(Map<String, dynamic> json) =>
    SesameRoleDTO(
      id: json['id'] as String,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => SesamePermissionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SesameRoleDTOToJson(SesameRoleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permissions': instance.permissions,
    };
