// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_preview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfilePreviewDTO _$UserProfilePreviewDTOFromJson(
        Map<String, dynamic> json) =>
    UserProfilePreviewDTO(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      email: json['email'] as String,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$UserProfilePreviewDTOToJson(
        UserProfilePreviewDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
    };
