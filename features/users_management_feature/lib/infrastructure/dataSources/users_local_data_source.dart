import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dataSources/users_hive_boxes_init.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

class UsersLocalDataSource {
  final String _loggedInUserKey = "LoggedInUserKey";

  Future<void> saveUserToken(String email, String token) async {
    Hive.lazyBox<String>(userTokenBoxName).put("token:$email", token);
  }

  Future<String?> getUserToken(String email) async {
    String? token =
        await Hive.lazyBox<String>(userTokenBoxName).get("token:$email");
    return token;
  }

  Future<String?> getUserExistingUserToken() async {
    try {
      String? token = await Hive.lazyBox<String>(userTokenBoxName).getAt(0);
      return token;
    } catch (e) {
      return null;
    }
  }

  Future<void> saveUserProfile(SesameUserDTO user, bool isLoggedIn) async {
    if (isLoggedIn) {
      Hive.lazyBox<SesameUserDTO>(usersBoxName).put(_loggedInUserKey, user);
    } else {
      Hive.lazyBox<SesameUserDTO>(usersBoxName)
          .put("profile:${user.email}", user);
    }
  }

  Future<void> deleteUserData() async {
    await Future.wait([
      Hive.lazyBox<SesameUserDTO>(usersBoxName).clear(),
      Hive.lazyBox<String>(userTokenBoxName).clear()
    ]);
  }

  Future<SesameUserDTO?> getLoggedInUserProfile() async {
    SesameUserDTO? user =
        await Hive.lazyBox<SesameUserDTO>(usersBoxName).get(_loggedInUserKey);
    return user;
  }

  Future<SesameUserDTO?> getUserProfileByEmail(String email) async {
    SesameUserDTO? user =
        await Hive.lazyBox<SesameUserDTO>(usersBoxName).get("profile:$email");
    return user;
  }
}
