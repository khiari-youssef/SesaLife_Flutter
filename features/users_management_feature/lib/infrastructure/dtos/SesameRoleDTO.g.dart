// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SesameRoleDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesamePermissionDTO _$SesamePermissionDTOFromJson(Map<String, dynamic> json) =>
    SesamePermissionDTO(
      json['id'] as String,
      json['label'] as String,
      json['state'] as String,
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
