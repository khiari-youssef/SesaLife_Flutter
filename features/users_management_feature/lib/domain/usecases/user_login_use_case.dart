import 'package:core/core_domain/domain_use_case_protocol.dart';

import 'package:users_management_feature/domain/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../entities/SesameUser.dart';
import '../entities/login_method.dart';

class UserLoginUseCase
    implements DomainUseCaseProtocol<LoginMethod, Future<SesameUser>> {
  final LoginRepositoryContract repositoryContract;
  UserLoginUseCase(this.repositoryContract);

  @override
  Future<SesameUser> execute(LoginMethod input) {
    return input.when(credentialLogin: (email, password) {
      return repositoryContract
          .authenticateUserWithCredentials(email, password)
          .then((value) => value.user);
    }, tokenLogin: () {
      return repositoryContract
          .authenticateUserWithExistingUserToken()
          .then((value) => value.user);
    });
  }
}
