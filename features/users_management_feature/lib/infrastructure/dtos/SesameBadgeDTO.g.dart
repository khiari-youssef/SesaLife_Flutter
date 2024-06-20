// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SesameBadgeDTO.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SesameBadgeDTOAdapter extends TypeAdapter<SesameBadgeDTO> {
  @override
  final int typeId = 7;

  @override
  SesameBadgeDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SesameBadgeDTO(
      creationDate: fields[0] as String,
      expirationDate: fields[1] as String,
      signature: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SesameBadgeDTO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.creationDate)
      ..writeByte(1)
      ..write(obj.expirationDate)
      ..writeByte(2)
      ..write(obj.signature);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SesameBadgeDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameBadgeDTO _$SesameBadgeDTOFromJson(Map<String, dynamic> json) =>
    SesameBadgeDTO(
      creationDate: json['creationDate'] as String,
      expirationDate: json['expirationDate'] as String,
      signature: json['signature'] as String,
    );

Map<String, dynamic> _$SesameBadgeDTOToJson(SesameBadgeDTO instance) =>
    <String, dynamic>{
      'creationDate': instance.creationDate,
      'expirationDate': instance.expirationDate,
      'signature': instance.signature,
    };
