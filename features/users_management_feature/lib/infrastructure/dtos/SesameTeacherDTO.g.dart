// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SesameTeacherDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameTeacherDTO _$SesameTeacherDTOFromJson(Map<String, dynamic> json) =>
    SesameTeacherDTO(
      registrationID: json['registrationID'] as String,
      candidatureID: json['candidatureID'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      sex: json['sex'] as String,
      birthdate: json['birthdate'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      role: SesameRoleDTO.fromJson(json['role'] as Map<String, dynamic>),
      badge: SesameBadgeDTO.fromJson(json['badge'] as Map<String, dynamic>),
      profBackground: json['profBackground'] as String,
      assignedClasses: (json['assignedClasses'] as List<dynamic>)
          .map((e) => SesameClassDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SesameTeacherDTOToJson(SesameTeacherDTO instance) =>
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
      'profBackground': instance.profBackground,
      'assignedClasses': instance.assignedClasses,
    };
