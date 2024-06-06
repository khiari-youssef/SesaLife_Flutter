import 'package:core/core_data/dtos/sesame_class_dto.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameRoleDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

import 'SesameBadgeDTO.dart';

part 'SesameStudentDTO.g.dart';

@JsonSerializable()
class SesameStudentDTO extends SesameUserDTO {
  final SesameClassDTO sesameClass;
  final String? portfolioId;

  SesameStudentDTO(
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
      required this.sesameClass,
      this.portfolioId});

  factory SesameStudentDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameStudentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SesameStudentDTOToJson(this);
}

@JsonSerializable()
class SesameProfessionalStudentDTO extends SesameStudentDTO {
  final String jobPosition;
  final String company;
  final String contractType;
  SesameProfessionalStudentDTO(
      {required super.sesameClass,
      super.portfolioId,
      required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.birthdate,
      required super.profilePictureUrl,
      required super.role,
      required super.badge,
      required this.jobPosition,
      required this.company,
      required this.contractType});
  factory SesameProfessionalStudentDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameProfessionalStudentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SesameStudentDTOToJson(this);
}
