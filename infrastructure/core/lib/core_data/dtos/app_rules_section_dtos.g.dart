// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_rules_section_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppRulesSubSectionDTO _$AppRulesSubSectionDTOFromJson(
        Map<String, dynamic> json) =>
    AppRulesSubSectionDTO(
      name: json['subsection_name'] as String,
      content:
          (json['content'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AppRulesSubSectionDTOToJson(
        AppRulesSubSectionDTO instance) =>
    <String, dynamic>{
      'subsection_name': instance.name,
      'content': instance.content,
    };

AppRulesSectionDTO _$AppRulesSectionDTOFromJson(Map<String, dynamic> json) =>
    AppRulesSectionDTO(
      name: json['section_name'] as String,
      subSections: (json['sub_sections'] as List<dynamic>)
          .map((e) => AppRulesSubSectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppRulesSectionDTOToJson(AppRulesSectionDTO instance) =>
    <String, dynamic>{
      'section_name': instance.name,
      'sub_sections': instance.subSections,
    };
