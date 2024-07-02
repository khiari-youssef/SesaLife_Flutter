import 'package:core/core_domain/entities/user_sex.dart';

class EnrollmentCandidature {
  final String personalEmail;
  final String? phone;
  final UserSex sex;
  final DateTime birthDate;
  final String firstName;
  final String lastName;
  final String program_id;
  final String status;
  EnrollmentCandidature(
      this.personalEmail,
      this.phone,
      this.sex,
      this.birthDate,
      this.firstName,
      this.lastName,
      this.program_id,
      this.status);
}
