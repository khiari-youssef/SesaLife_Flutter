// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment_candidature_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnrollmentCandidatureDTO _$EnrollmentCandidatureDTOFromJson(
        Map<String, dynamic> json) =>
    EnrollmentCandidatureDTO(
      json['personalEmail'] as String,
      json['phone'] as String?,
      json['sex'] as String,
      json['birthDate'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['programId'] as String,
      json['status'] as String,
    );

Map<String, dynamic> _$EnrollmentCandidatureDTOToJson(
        EnrollmentCandidatureDTO instance) =>
    <String, dynamic>{
      'personalEmail': instance.personalEmail,
      'phone': instance.phone,
      'sex': instance.sex,
      'birthDate': instance.birthDate,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'programId': instance.programId,
      'status': instance.status,
    };
