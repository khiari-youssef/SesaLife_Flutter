import 'package:core/core_data/dtos/sesame_class_dto.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_role_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_user_dto.dart';

import 'sesame_badge_dto.dart';

part 'sesame_teacher_dto.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class SesameTeacherDTO extends SesameUserDTO {
  @HiveField(11)
  final String profBackground;
  @HiveField(12)
  final List<SesameClassDTO> assignedClasses;

  SesameTeacherDTO(
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.birthdate,
      required super.profilePictureUrl,
      required super.role,
      required super.badge,
      required this.profBackground,
      required this.assignedClasses,
      required super.registrationDate});

  factory SesameTeacherDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameTeacherDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SesameTeacherDTOToJson(this);
}
