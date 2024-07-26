import '../../entities/login_result.dart';

abstract interface class LoginRepositoryContract {
  Future<LoginResult> authenticateUserWithCredentials(
      String email, String password);
  Future<LoginResult> authenticateUserWithExistingUserToken();
}
