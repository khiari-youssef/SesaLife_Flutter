import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameRoleDTO.dart';

import 'SesameBadgeDTO.dart';

part 'SesameUserDTO.g.dart';

@JsonSerializable()
class SesameUserDTO extends HiveObject {
  final String registrationID;
  final String candidatureID;
  final String firstName;
  final String lastName;
  final String email;
  final String sex;
  final String birthdate;
  final String profilePictureUrl;
  final SesameRoleDTO role;
  final SesameBadgeDTO badge;
  final String registrationDate;
  SesameUserDTO(
      {required this.registrationID,
      required this.candidatureID,
      required this.registrationDate,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.sex,
      required this.birthdate,
      required this.profilePictureUrl,
      required this.role,
      required this.badge});

  factory SesameUserDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameUserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SesameUserDTOToJson(this);
}
