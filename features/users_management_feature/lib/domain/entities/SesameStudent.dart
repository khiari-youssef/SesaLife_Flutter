import 'SesameClass.dart';
import 'SesameUser.dart';

class SesameStudent extends SesameUser {
  final SesameClass sesameClass;
  final String portfolioId;
  SesameStudent(
      {required super.registrationID,
      required super.candidatureID,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.sex,
      required super.birthdate,
      required super.profilePictureUrl,
      required this.sesameClass,
      required this.portfolioId,
      required super.role, required super.badge});
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
      required super.portfolioId,
      required this.jobPosition,
      required this.company,
      required this.contractType,
      required super.role, required super.badge});
}
