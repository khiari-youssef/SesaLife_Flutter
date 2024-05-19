// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SesameUserDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameUserDTO _$SesameUserDTOFromJson(Map<String, dynamic> json) =>
    SesameUserDTO(
      SesameBadgeDTO.fromJson(json['badge'] as Map<String, dynamic>),
      registrationID: json['registrationID'] as String,
      candidatureID: json['candidatureID'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      sex: json['sex'] as String,
      birthdate: json['birthdate'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      role: SesameRoleDTO.fromJson(json['role'] as Map<String, dynamic>),
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
    };
