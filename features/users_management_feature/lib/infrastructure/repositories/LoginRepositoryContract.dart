import 'package:users_management_feature/domain/entities/SesameBadge.dart';
import 'package:users_management_feature/domain/entities/SesameRole.dart';
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
        profilePictureUrl: "",
        role: SesameRole.defaultRole,
        badge: SesameBadge(
            creationDate: DateTime(2024, 1, 1),
            expirationDate: DateTime(2024, 12, 1),
            signature: "aegdsgsd"));
  }

  @override
  Future<SesameUser> authenticateUserWithToken(String token) async {
    // TODO: implement authenticateUserWithToken
    throw UnimplementedError();
  }
}
