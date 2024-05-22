import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameClassDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameRoleDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

import 'SesameBadgeDTO.dart';

part 'SesameStudentDTO.g.dart';

@JsonSerializable()
class SesameStudentDTO extends SesameUserDTO {
  final SesameClassDTO sesameClass;
  final String portfolioId;

  SesameStudentDTO(this.sesameClass, this.portfolioId,
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.birthdate,
      required super.profilePictureUrl,
      required super.role,
      required super.badge});

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
  SesameProfessionalStudentDTO(this.jobPosition, this.company,
      this.contractType, super.sesameClass, super.portfolioId,
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.birthdate,
      required super.profilePictureUrl,
      required super.role,
      required super.badge});
  factory SesameProfessionalStudentDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameProfessionalStudentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SesameStudentDTOToJson(this);
}