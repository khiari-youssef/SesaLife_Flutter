import 'package:core/exports.dart';
import 'package:users_management_feature/domain/entities/SesameRole.dart';

abstract class SesameUser {
  final String registrationID;
  final String candidatureID;
  final String firstName;
  final String lastName;
  final String email;
  final UserSex sex;
  final DateTime registrationDate;
  final DateTime birthdate;
  final String profilePictureUrl;
  final SesameRole role;
  final SesameBadge badge;

  SesameUser(
      {required this.registrationID,
      required this.candidatureID,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.sex,
      required this.registrationDate,
      required this.birthdate,
      required this.profilePictureUrl,
      required this.role,
      required this.badge});

  String get displayBirthdate {
    return birthdate.toDisplayDate();
  }

  String get getFullName {
    return "$firstName $lastName";
  }
}
