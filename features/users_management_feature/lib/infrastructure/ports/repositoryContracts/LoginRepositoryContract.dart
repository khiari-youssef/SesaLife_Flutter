import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../../../domain/entities/login_result.dart';

abstract interface class LoginRepositoryContract {
  Future<LoginResult> authenticateUserWithCredentials(
      String email, String password);
  Future<LoginResult> authenticateUserWithExistingUserToken();

  Future<void> clearAllUserData();
}
