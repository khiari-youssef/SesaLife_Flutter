import 'dart:convert';
import 'dart:isolate';

import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/EnrollmentCandidatureDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

class UsersRemoteDataSource {
  final Dio dio = GetIt.instance.get();

  Future<bool> submitCandidatureRequest(
      EnrollmentCandidatureDTO candidatureForm) async {
    return await Isolate.run(() async {
      Response<dynamic> response = await dio.get("");
      Map<String, dynamic> payload = jsonDecode(response.data.toString());
      return true;
    });
  }

  Future<SesameUserDTO> loginWithCredentials(
      String email, String password) async {
    return await Isolate.run(() async {
      Response<dynamic> response = await dio.get("");
      Map<String, dynamic> payload = jsonDecode(response.data.toString());
      return SesameUserDTO.fromJson(payload);
    });
  }
}
