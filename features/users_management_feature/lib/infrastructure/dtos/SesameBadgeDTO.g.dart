// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SesameBadgeDTO.dart';

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
