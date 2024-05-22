import 'package:intl/intl.dart';
import 'package:users_management_feature/domain/entities/SesameRole.dart';

import 'SesameBadge.dart';

enum UserSex { male, female }

abstract class SesameUser {
  final String registrationID;
  final String candidatureID;
  final String firstName;
  final String lastName;
  final String email;
  final UserSex sex;
  final DateTime birthdate;
  final String profilePictureUrl;
  final SesameRole role;
  final SesameBadge badge;

  final DateFormat format = DateFormat("dd/MM/yyyy");

  SesameUser(
      {required this.registrationID,
      required this.candidatureID,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.sex,
      required this.birthdate,
      required this.profilePictureUrl,
      required this.role,
      required this.badge});

  String get displayBirthdate {
    return format.format(birthdate);
  }

  String get getFullName {
    return "$firstName $lastName";
  }
}
