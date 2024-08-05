import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_role_dto.dart';

import 'sesame_badge_dto.dart';

part 'SesameUserDTO.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class SesameUserDTO extends HiveObject {
  @HiveField(0)
  final String registrationID;
  @HiveField(1)
  final String candidatureID;
  @HiveField(2)
  final String firstName;
  @HiveField(3)
  final String lastName;
  @HiveField(4)
  final String email;
  @HiveField(5)
  final String sex;
  @HiveField(6)
  final String birthdate;
  @HiveField(7)
  final String profilePictureUrl;
  @HiveField(8)
  final SesameRoleDTO role;
  @HiveField(9)
  final SesameBadgeDTO badge;
  @HiveField(10)
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
