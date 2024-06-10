import 'dart:isolate';

import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

class UsersLocalDataSource {
  Future<void> saveUserToken(String email, String token) async {
    LazyBox usersBox = await Hive.openLazyBox("tokenBox");
    return usersBox.put("token:$email", token);
  }

  Future<String?> getUserToken(String email) async {
    LazyBox<String> usersBox = await Hive.openLazyBox("tokenBox");
    return usersBox.get("token:$email");
  }

  Future<String?> getUserExistingUserToken() async {
    return await Isolate.run(() async {
      LazyBox<String> usersBox = await Hive.openLazyBox("tokenBox");
      return usersBox.getAt(0);
    });
  }

  Future<void> saveUserProfile(SesameUserDTO user) async {
    LazyBox usersBox = await Hive.openLazyBox("usersBox");
    return usersBox.put("profile:${user.email}", user);
  }

  Future<SesameUserDTO?> getUserProfileByEmail(String email) async {
    LazyBox<SesameUserDTO> usersBox =
        await Hive.openLazyBox<SesameUserDTO>("usersBox");
    return usersBox.get("profile:${email}");
  }
}
