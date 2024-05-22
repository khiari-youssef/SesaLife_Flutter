import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameClassDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameRoleDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

import 'SesameBadgeDTO.dart';

part 'SesameTeacherDTO.g.dart';

@JsonSerializable()
class SesameTeacherDTO extends SesameUserDTO {
  final String profBackground;
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
      required this.assignedClasses});

  factory SesameTeacherDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameTeacherDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SesameTeacherDTOToJson(this);
}
