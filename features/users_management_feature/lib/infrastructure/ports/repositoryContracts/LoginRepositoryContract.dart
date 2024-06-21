import 'package:users_management_feature/domain/entities/SesameUser.dart';

abstract interface class LoginRepositoryContract {
  Future<SesameUser> authenticateUserWithCredentials(
      String email, String password);
  Future<SesameUser> authenticateUserWithExistingUserToken();

  Future<void> clearAllUserData();
}
