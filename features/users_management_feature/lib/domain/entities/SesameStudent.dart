import 'package:core/core_domain/entities/SesameClass.dart';

import 'SesameUser.dart';

class SesameStudent extends SesameUser {
  final SesameClass sesameClass;
  final String? portfolioId;
  SesameStudent(
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.registrationDate,
      required super.birthdate,
      required super.profilePictureUrl,
      required this.sesameClass,
      this.portfolioId,
      required super.role,
      required super.badge});
}

class SesameProfessionalStudent extends SesameStudent {
  final String jobPosition;
  final String company;
  final String contractType;
  SesameProfessionalStudent(
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.birthdate,
      required super.profilePictureUrl,
      required super.sesameClass,
      super.portfolioId,
      required this.jobPosition,
      required this.company,
      required this.contractType,
      required super.role,
      required super.badge,
      required super.registrationDate});
}
