import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

class UsersLocalDataSource {
  final String _userTokenBoxName = "tokenBox";
  final String _usersBoxName = "usersBox";
  final String _loggedInUserKey = "LoggedInUserKey";

  void init() async {
    await Hive.openLazyBox<String>(_userTokenBoxName);
    await Hive.openLazyBox<SesameUserDTO>(_usersBoxName);
  }

  Future<void> saveUserToken(String email, String token) async {
    Hive.lazyBox<String>(_userTokenBoxName).put("token:$email", token);
  }

  Future<String?> getUserToken(String email) async {
    String? token =
        await Hive.lazyBox<String>(_userTokenBoxName).get("token:$email");
    return token;
  }

  Future<String?> getUserExistingUserToken() async {
    try {
      String? token = await Hive.lazyBox<String>(_userTokenBoxName).getAt(0);
      return token;
    } catch (e) {
      return null;
    }
  }

  Future<void> saveUserProfile(SesameUserDTO user, bool isLoggedIn) async {
    if (isLoggedIn) {
      Hive.lazyBox<SesameUserDTO>(_usersBoxName).put(_loggedInUserKey, user);
    } else {
      Hive.lazyBox<SesameUserDTO>(_usersBoxName)
          .put("profile:${user.email}", user);
    }
  }

  Future<void> deleteUserData() async {
    await Future.wait([
      Hive.lazyBox<SesameUserDTO>(_usersBoxName).clear(),
      Hive.lazyBox<String>(_userTokenBoxName).clear()
    ]);
  }

  Future<SesameUserDTO?> getLoggedInUserProfile() async {
    SesameUserDTO? user =
        await Hive.lazyBox<SesameUserDTO>(_usersBoxName).get(_loggedInUserKey);
    return user;
  }

  Future<SesameUserDTO?> getUserProfileByEmail(String email) async {
    SesameUserDTO? user =
        await Hive.lazyBox<SesameUserDTO>(_usersBoxName).get("profile:$email");
    return user;
  }
}
