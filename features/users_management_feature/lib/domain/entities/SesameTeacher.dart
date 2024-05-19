import 'package:users_management_feature/domain/entities/SesameUser.dart';

import 'SesameClass.dart';

class SesameTeacher extends SesameUser {
  final String profBackground;
  final List<SesameClass> assignedClasses;
  SesameTeacher(
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.birthdate,
      required super.profilePictureUrl,
      required this.profBackground,
      required this.assignedClasses,
      required super.role,
      required super.badge});
}
