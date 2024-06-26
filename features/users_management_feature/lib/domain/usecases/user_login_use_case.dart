import 'package:core/core_domain/DomainUseCaseProtocol.dart';

import '../../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../entities/LoginMethod.dart';
import '../entities/SesameUser.dart';

class UserLoginUseCase
    implements DomainUseCaseProtocol<LoginMethod, Future<SesameUser>> {
  final LoginRepositoryContract repositoryContract;
  UserLoginUseCase(this.repositoryContract);
  @override
  Future<SesameUser> execute(LoginMethod input) {
    return input.when(credentialLogin: (email, password) {
      return repositoryContract.authenticateUserWithCredentials(
          email, password);
    }, tokenLogin: (token) {
      return repositoryContract.authenticateUserWithExistingUserToken();
    });
  }
}
