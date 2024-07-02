import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

class UsersLocalDataSource {
  final String _userTokenBoxName = "tokenBox";
  final String _usersBoxName = "usersBox";
  final String _loggedInUserKey = "LoggedInUserKey";

  void init() async {
    await Hive.openBox<String>(_userTokenBoxName);
    await Hive.openBox<SesameUserDTO>(_usersBoxName);
  }

  Future<void> saveUserToken(String email, String token) async {
    Box usersBox = Hive.box<String>(_userTokenBoxName);
    usersBox.put("token:$email", token);
  }

  Future<String?> getUserToken(String email) async {
    Box<String> usersBox = Hive.box<String>(_userTokenBoxName);
    String? token = usersBox.get("token:$email");
    return token;
  }

  Future<String?> getUserExistingUserToken() async {
    Box<String> usersBox = Hive.box<String>(_userTokenBoxName);
    try {
      String? token = usersBox.getAt(0);
      return token;
    } catch (e) {
      return null;
    }
  }

  Future<void> saveUserProfile(SesameUserDTO user, bool isLoggedIn) async {
    Box<SesameUserDTO> usersBox = Hive.box<SesameUserDTO>(_usersBoxName);
    if (isLoggedIn) {
      usersBox.put(_loggedInUserKey, user);
    } else {
      usersBox.put("profile:${user.email}", user);
    }
  }

  Future<void> deleteUserData() async {
    Box<SesameUserDTO> usersBox = Hive.box<SesameUserDTO>(_usersBoxName);
    Box<String> usersTokenBox = Hive.box<String>(_userTokenBoxName);
    await Future.wait([usersBox.clear(), usersTokenBox.clear()]);
  }

  Future<SesameUserDTO?> getLoggedInUserProfile() async {
    Box<SesameUserDTO> usersBox = Hive.box<SesameUserDTO>(_usersBoxName);
    SesameUserDTO? user = usersBox.get(_loggedInUserKey);
    return user;
  }

  Future<SesameUserDTO?> getUserProfileByEmail(String email) async {
    Box<SesameUserDTO> usersBox = Hive.box<SesameUserDTO>(_usersBoxName);
    SesameUserDTO? user = usersBox.get("profile:$email");
    return user;
  }
}
