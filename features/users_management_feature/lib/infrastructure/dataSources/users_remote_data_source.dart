import 'dart:convert';
import 'dart:isolate';

import 'package:core/core_data/dtos/dtos.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/EnrollmentCandidatureDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameBadgeDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameRoleDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameTeacherDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

import '../dtos/SesameStudentDTO.dart';
import '../dtos/login_response_dto.dart';

class UsersRemoteDataSource {
  final Dio dio = GetIt.instance.get();

  List<SesameUserDTO> users = [
    SesameStudentDTO(
        registrationID: "random",
        candidatureID: "randomcaid",
        firstName: "Youssef",
        registrationDate: DateTime(2021, 1, 1).toIso8601String(),
        lastName: "Khiari",
        email: "khiari.youssef98@gmail.com",
        sex: "m",
        birthdate: DateTime(1998, 4, 18).toIso8601String(),
        profilePictureUrl: "",
        role: SesameRoleDTO.defaultRole,
        badge: SesameBadgeDTO(
            creationDate: DateTime(2024, 1, 1).toIso8601String(),
            expirationDate: DateTime(2024, 12, 1).toIso8601String(),
            signature: "aegdsgsd"),
        sesameClass: SesameClassDTO(
            id: 'ingta4c', name: "ingta", group: "C", level: "4")),
    SesameTeacherDTO(
        registrationID: 'random-#',
        candidatureID: 'randomcaid-',
        firstName: 'Ahmed',
        lastName: 'Prof',
        email: 'ahmed.prof@sesame.com.tn',
        sex: "m",
        registrationDate: DateTime(2021, 1, 1).toIso8601String(),
        birthdate: DateTime(1998, 4, 18).toIso8601String(),
        profilePictureUrl: '',
        assignedClasses: [
          SesameClassDTO(id: 'ingta4c', name: "ingta", group: "C", level: "4"),
          SesameClassDTO(id: 'ingta4a', name: "ingta", group: "A", level: "4")
        ],
        role: SesameRoleDTO.defaultRole,
        badge: SesameBadgeDTO(
            creationDate: DateTime(2024, 1, 1).toIso8601String(),
            expirationDate: DateTime(2024, 12, 1).toIso8601String(),
            signature: "aegdsgsd"),
        profBackground: 'R&D professor in Artificial intelligence')
  ];

  Map<String, String> tokens = {
    "khiari.youssef98@gmail.com": "token1",
    "ahmed.prof@sesame.com.tn": "token2"
  };

  Future<bool> submitCandidatureRequest(
      EnrollmentCandidatureDTO candidatureForm) async {
    return await Isolate.run(() async {
      Response<dynamic> response = await dio.get("");
      Map<String, dynamic> payload = jsonDecode(response.data.toString());
      return true;
    });
  }

  Future<LoginResponseDTO> loginWithCredentials(
      String email, String password) async {
    return await Isolate.run(() async {
      /*
      Response<dynamic> response = await dio.get("");
      Map<String, dynamic> payload = jsonDecode(response.data.toString());
      return SesameUserDTO.fromJson(payload);
      */
      SesameUserDTO user = users.firstWhere((user) =>
          user.email.replaceAll(' ', '') == email.replaceAll(' ', ''));
      return LoginResponseDTO(token: tokens[email], user: user);
    });
  }

  Future<LoginResponseDTO> loginWithToken(String token) async {
    String email =
        tokens.entries.firstWhere((entry) => entry.value == token).key;
    SesameUserDTO user = users.firstWhere(
        (user) => user.email.replaceAll(' ', '') == email.replaceAll(' ', ''));
    return LoginResponseDTO(token: tokens[email], user: user);
    /*
    return await Isolate.run(() async {
      Response<dynamic> response = await dio.get("");
      Map<String, dynamic> payload = jsonDecode(response.data.toString());
      return LoginResponseDTO(
          user: SesameUserDTO.fromJson(payload), token: "${token}v2");
    });
     */
  }
}
