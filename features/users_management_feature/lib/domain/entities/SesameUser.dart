import 'package:intl/intl.dart';

enum UserSex { male, female }

class SesameUser {
  final String registrationID;
  final String candidatureID;
  final String firstName;
  final String lastName;
  final String email;
  final UserSex sex;
  final DateTime birthdate;
  final String profilePictureUrl;

  final DateFormat format = DateFormat("dd/MM/yyyy");

  SesameUser(
      {required this.registrationID,
      required this.candidatureID,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.sex,
      required this.birthdate,
      required this.profilePictureUrl});

  String get displayBirthdate {
    return format.format(birthdate);
  }
}
