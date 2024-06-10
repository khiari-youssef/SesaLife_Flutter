// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SesameStudentDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameStudentDTO _$SesameStudentDTOFromJson(Map<String, dynamic> json) =>
    SesameStudentDTO(
      registrationID: json['registrationID'] as String,
      candidatureID: json['candidatureID'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      sex: json['sex'] as String,
      registrationDate: json['registrationDate'] as String,
      birthdate: json['birthdate'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      role: SesameRoleDTO.fromJson(json['role'] as Map<String, dynamic>),
      badge: SesameBadgeDTO.fromJson(json['badge'] as Map<String, dynamic>),
      sesameClass:
          SesameClassDTO.fromJson(json['sesameClass'] as Map<String, dynamic>),
      portfolioId: json['portfolioId'] as String?,
    );

Map<String, dynamic> _$SesameStudentDTOToJson(SesameStudentDTO instance) =>
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
      'sesameClass': instance.sesameClass,
      'portfolioId': instance.portfolioId,
    };

SesameProfessionalStudentDTO _$SesameProfessionalStudentDTOFromJson(
        Map<String, dynamic> json) =>
    SesameProfessionalStudentDTO(
      sesameClass:
          SesameClassDTO.fromJson(json['sesameClass'] as Map<String, dynamic>),
      portfolioId: json['portfolioId'] as String?,
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
      jobPosition: json['jobPosition'] as String,
      company: json['company'] as String,
      contractType: json['contractType'] as String,
      registrationDate: json['registrationDate'] as String,
    );

Map<String, dynamic> _$SesameProfessionalStudentDTOToJson(
        SesameProfessionalStudentDTO instance) =>
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
      'sesameClass': instance.sesameClass,
      'portfolioId': instance.portfolioId,
      'jobPosition': instance.jobPosition,
      'company': instance.company,
      'contractType': instance.contractType,
    };
