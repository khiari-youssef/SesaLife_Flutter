// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sesame_subject_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameSubjectDTO _$SesameSubjectDTOFromJson(Map<String, dynamic> json) =>
    SesameSubjectDTO(
      json['id'] as String,
      json['label'] as String,
      json['description'] as String?,
      json['moduleId'] as String,
      SesameClassDTO.fromJson(json['sesameClass'] as Map<String, dynamic>),
      (json['coefficient'] as num).toDouble(),
    );

Map<String, dynamic> _$SesameSubjectDTOToJson(SesameSubjectDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'moduleId': instance.moduleId,
      'sesameClass': instance.sesameClass,
      'coefficient': instance.coefficient,
    };
