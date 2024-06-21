import 'package:core/core_domain/entities/user_sex.dart';

class UserProfilePreview {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final UserSex sex;
  final String profilePicture;
  UserProfilePreview(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.sex,
      required this.profilePicture});

  String get fullName => "$firstName $lastName";
}
