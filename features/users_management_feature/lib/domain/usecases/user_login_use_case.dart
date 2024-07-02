import 'package:core/core_domain/DomainUseCaseProtocol.dart';

import '../../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../entities/login_method.dart';
import '../entities/SesameUser.dart';

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
