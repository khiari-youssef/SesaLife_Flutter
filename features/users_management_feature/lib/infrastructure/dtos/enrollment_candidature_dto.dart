import 'package:shared_dependencies/shared_dependencies.dart';

part 'enrollment_candidature_dto.g.dart';

@JsonSerializable()
class EnrollmentCandidatureDTO {
  final String personalEmail;
  final String? phone;
  final String sex;
  final String birthDate;
  final String firstName;
  final String lastName;
  final String programId;
  final String status;
  EnrollmentCandidatureDTO(
      this.personalEmail,
      this.phone,
      this.sex,
      this.birthDate,
      this.firstName,
      this.lastName,
      this.programId,
      this.status);

  factory EnrollmentCandidatureDTO.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentCandidatureDTOFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentCandidatureDTOToJson(this);
}
