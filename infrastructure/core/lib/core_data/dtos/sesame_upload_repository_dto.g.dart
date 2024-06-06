// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sesame_upload_repository_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameUploadRepositoryDTO _$SesameUploadRepositoryDTOFromJson(
        Map<String, dynamic> json) =>
    SesameUploadRepositoryDTO(
      baseUrl: json['baseUrl'] as String,
      moduleBucket: json['moduleBucket'] as String,
      subjectBucket: json['subjectBucket'] as String,
      classBucket: json['classBucket'] as String,
      contentName: json['contentName'] as String,
    );

Map<String, dynamic> _$SesameUploadRepositoryDTOToJson(
        SesameUploadRepositoryDTO instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'moduleBucket': instance.moduleBucket,
      'subjectBucket': instance.subjectBucket,
      'classBucket': instance.classBucket,
      'contentName': instance.contentName,
    };
