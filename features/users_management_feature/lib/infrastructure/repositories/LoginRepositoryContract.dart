import 'package:users_management_feature/domain/entities/SesameUser.dart';

abstract interface class LoginRepositoryContract {
  Future<SesameUser> authenticateUserWithCredentials(
      String email, String password);
  Future<SesameUser> authenticateUserWithToken(String token);
}

class LoginRepository implements LoginRepositoryContract {
  @override
  Future<SesameUser> authenticateUserWithCredentials(
      String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    return SesameUser(
        registrationID: "random",
        candidatureID: "randomcaid",
        firstName: "Youssef",
        lastName: "Khiari",
        email: "khiari.youssef98@gmail.com",
        sex: UserSex.male,
        birthdate: DateTime.now(),
        profilePictureUrl: "");
  }

  @override
  Future<SesameUser> authenticateUserWithToken(String token) async {
    // TODO: implement authenticateUserWithToken
    throw UnimplementedError();
  }
}
