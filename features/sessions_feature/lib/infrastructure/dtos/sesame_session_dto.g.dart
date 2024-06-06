// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sesame_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SesameSessionDTO _$SesameSessionDTOFromJson(Map<String, dynamic> json) =>
    SesameSessionDTO(
      id: json['id'] as String,
      subject:
          SesameSubjectDTO.fromJson(json['subject'] as Map<String, dynamic>),
      teacher: UserProfilePreviewDTO.fromJson(
          json['teacher'] as Map<String, dynamic>),
      startDateTime: json['startDateTime'] as String,
      endDateTime: json['endDateTime'] as String,
      toleratedDelayInMinutes:
          (json['toleratedDelayInMinutes'] as num?)?.toInt(),
      roomID: json['roomID'] as String,
      sessionClass:
          SesameClassDTO.fromJson(json['sessionClass'] as Map<String, dynamic>),
      presentStudents: (json['presentStudents'] as List<dynamic>?)
          ?.map(
              (e) => UserProfilePreviewDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      eliminatedStudents: (json['eliminatedStudents'] as List<dynamic>?)
          ?.map(
              (e) => UserProfilePreviewDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      sessionQrCode: json['sessionQrCode'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => SesameAttachmentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      uploadRepository: json['uploadRepository'] == null
          ? null
          : SesameUploadRepositoryDTO.fromJson(
              json['uploadRepository'] as Map<String, dynamic>),
      sessionTypeData: json['sessionTypeData'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SesameSessionDTOToJson(SesameSessionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'startDateTime': instance.startDateTime,
      'endDateTime': instance.endDateTime,
      'toleratedDelayInMinutes': instance.toleratedDelayInMinutes,
      'roomID': instance.roomID,
      'sessionClass': instance.sessionClass,
      'presentStudents': instance.presentStudents,
      'eliminatedStudents': instance.eliminatedStudents,
      'sessionQrCode': instance.sessionQrCode,
      'attachments': instance.attachments,
      'uploadRepository': instance.uploadRepository,
      'sessionTypeData': instance.sessionTypeData,
    };
