// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sesame_user_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SesameUserDTOAdapter extends TypeAdapter<SesameUserDTO> {
  @override
  final int typeId = 0;

  @override
  SesameUserDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SesameUserDTO(
      registrationID: fields[0] as String,
      candidatureID: fields[1] as String,
      registrationDate: fields[10] as String,
      firstName: fields[2] as String,
      lastName: fields[3] as String,
      email: fields[4] as String,
      sex: fields[5] as String,
      birthdate: fields[6] as String,
      profilePictureUrl: fields[7] as String,
      role: fields[8] as SesameRoleDTO,
      badge: fields[9] as SesameBadgeDTO,
    );
  }

  @override
  void write(BinaryWriter writer, SesameUserDTO obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.registrationID)
      ..writeByte(1)
      ..write(obj.candidatureID)
      ..writeByte(2)
      ..write(obj.firstName)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.sex)
      ..writeByte(6)
      ..write(obj.birthdate)
      ..writeByte(7)
      ..write(obj.profilePictureUrl)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.badge)
      ..writeByte(10)
      ..write(obj.registrationDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SesameUserDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameUserDTO _$SesameUserDTOFromJson(Map<String, dynamic> json) =>
    SesameUserDTO(
      registrationID: json['registrationID'] as String,
      candidatureID: json['candidatureID'] as String,
      registrationDate: json['registrationDate'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      sex: json['sex'] as String,
      birthdate: json['birthdate'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      role: SesameRoleDTO.fromJson(json['role'] as Map<String, dynamic>),
      badge: SesameBadgeDTO.fromJson(json['badge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SesameUserDTOToJson(SesameUserDTO instance) =>
    <String, dynamic>{
      'registrationID': instance.registrationID,
      'candidatureID': instance.candidatureID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'sex': instance.sex,
      'birthdate': instance.birthdate,
      'profilePictureUrl': instance.profilePictureUrl,
      'role': instance.role,
      'badge': instance.badge,
      'registrationDate': instance.registrationDate,
    };
