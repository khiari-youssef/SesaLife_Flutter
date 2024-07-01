import 'dart:isolate';

import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

class UsersLocalDataSource {
  final String _UserTokenBoxName = "tokenBox";
  final String _UsersBoxName = "usersBox";
  final String _LoggedInUserKey = "LoggedInUserKey";

  Future<void> saveUserToken(String email, String token) async {
    LazyBox usersBox = await Hive.openLazyBox(_UserTokenBoxName);
    return usersBox.put("token:$email", token);
  }

  Future<String?> getUserToken(String email) async {
    LazyBox<String> usersBox = await Hive.openLazyBox(_UserTokenBoxName);
    return usersBox.get("token:$email");
  }

  Future<String?> getUserExistingUserToken() async {
    return await Isolate.run(() async {
      LazyBox<String> usersBox = await Hive.openLazyBox(_UserTokenBoxName);
      return usersBox.getAt(0);
    });
  }

  Future<void> saveUserProfile(SesameUserDTO user, bool isLoggedIn) async {
    LazyBox<SesameUserDTO> usersBox = await Hive.openLazyBox(_UsersBoxName);
    if (isLoggedIn) {
      return usersBox.put(_LoggedInUserKey, user);
    } else {
      return usersBox.put("profile:${user.email}", user);
    }
  }

  Future<void> deleteUserData() async {
    LazyBox<SesameUserDTO> usersBox = await Hive.openLazyBox(_UsersBoxName);
    LazyBox<String> usersTokenBox = await Hive.openLazyBox(_UserTokenBoxName);
    await Future.wait(
        [usersBox.delete(_LoggedInUserKey), usersTokenBox.clear()]);
  }

  Future<SesameUserDTO?> getLoggedInUserProfile() async {
    LazyBox<SesameUserDTO> usersBox =
        await Hive.openLazyBox<SesameUserDTO>(_UsersBoxName);
    return usersBox.get(_LoggedInUserKey);
  }

  Future<SesameUserDTO?> getUserProfileByEmail(String email) async {
    LazyBox<SesameUserDTO> usersBox =
        await Hive.openLazyBox<SesameUserDTO>(_UsersBoxName);
    return usersBox.get("profile:$email");
  }
}
