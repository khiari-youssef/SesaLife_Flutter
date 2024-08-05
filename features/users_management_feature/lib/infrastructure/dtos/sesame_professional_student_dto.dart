import 'package:core/core_data/dtos/sesame_class_dto.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'sesame_badge_dto.dart';
import 'sesame_role_dto.dart';
import 'sesame_student_dto.dart';

part 'sesame_professional_student_dto.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class SesameProfessionalStudentDTO extends SesameStudentDTO {
  @HiveField(13)
  final String jobPosition;
  @HiveField(14)
  final String company;
  @HiveField(15)
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
      required this.contractType,
      required super.registrationDate});
  factory SesameProfessionalStudentDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameProfessionalStudentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SesameProfessionalStudentDTOToJson(this);
}
