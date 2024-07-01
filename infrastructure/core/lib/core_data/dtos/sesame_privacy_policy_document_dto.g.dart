// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sesame_privacy_policy_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesamePrivacyPolicyDocumentDTO _$SesamePrivacyPolicyDocumentDTOFromJson(
        Map<String, dynamic> json) =>
    SesamePrivacyPolicyDocumentDTO(
      json['local'] as String,
      json['last_time_updated'] as String?,
      json['description'] as String,
      (json['summary'] as List<dynamic>).map((e) => e as String).toList(),
      (json['sections'] as List<dynamic>)
          .map((e) => AppRulesSectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SesamePrivacyPolicyDocumentDTOToJson(
        SesamePrivacyPolicyDocumentDTO instance) =>
    <String, dynamic>{
      'local': instance.local,
      'last_time_updated': instance.lastTimeUpdated,
      'description': instance.description,
      'summary': instance.summary,
      'sections': instance.sections,
    };
