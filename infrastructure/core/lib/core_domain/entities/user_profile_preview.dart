import 'package:core/core_domain/entities/user_sex.dart';

import 'SesameClass.dart';

abstract class UserProfilePreview {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String? phone;
  final UserSex sex;
  final String profilePicture;
  UserProfilePreview(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.phone,
      required this.sex,
      required this.profilePicture});

  String get fullName => "$firstName $lastName";

  bool canDisplayExtraData() => (email.isNotEmpty || phone?.isNotEmpty == true);
}

class StudentProfilePreview extends UserProfilePreview {
  final SesameClass sesameClass;
  final String? jobPosition;
  final String? company;
  StudentProfilePreview(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.profilePicture,
      required this.sesameClass,
      this.jobPosition,
      this.company});

  @override
  bool canDisplayExtraData() =>
      super.canDisplayExtraData() &&
      (jobPosition?.isNotEmpty == true || company?.isNotEmpty == true);
}

class TeacherProfilePreview extends UserProfilePreview {
  final String? background;
  final List<SesameClass> assignedClasses;
  TeacherProfilePreview(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.profilePicture,
      this.background,
      required this.assignedClasses});

  @override
  bool canDisplayExtraData() =>
      super.canDisplayExtraData() &&
      (background?.isNotEmpty == true || assignedClasses.isNotEmpty == true);
}

class AdminProfilePreview extends UserProfilePreview {
  final String position;
  AdminProfilePreview(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.profilePicture,
      required this.position});

  @override
  bool canDisplayExtraData() =>
      super.canDisplayExtraData() || position.isNotEmpty == true;
}
