import 'package:core/core_data/dtos/sesame_class_dto.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_role_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

import 'sesame_badge_dto.dart';

part 'SesameStudentDTO.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class SesameStudentDTO extends SesameUserDTO {
  @HiveField(11)
  final SesameClassDTO sesameClass;
  @HiveField(12)
  final String? portfolioId;

  SesameStudentDTO(
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.registrationDate,
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
