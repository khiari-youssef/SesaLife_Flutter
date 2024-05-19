import 'dart:isolate';

import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

class UsersLocalDataSource {
  Future<void> saveUserToken(String email, String token) async {
    await Isolate.run(() async {
      LazyBox usersBox = await Hive.openLazyBox("usersBox");
      return usersBox.put("token:$email", token);
    });
  }

  Future<void> saveUserProfile(SesameUserDTO user) async {
    await Isolate.run(() async {
      LazyBox usersBox = await Hive.openLazyBox("usersBox");
      return usersBox.put("profile:${user.email}", user);
    });
  }
}
