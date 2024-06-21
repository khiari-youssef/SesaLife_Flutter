import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:users_management_feature/infrastructure/repositories/UserSettingsRepository.dart';

import '../../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';

class UserLogoutUseCase
    implements NoInputDomainUseCaseProtocol<Future<List<void>>> {
  final LoginRepositoryContract repositoryContract;
  final UserSettingsRepositoryContract userSettingsRepository;
  UserLogoutUseCase(this.repositoryContract, this.userSettingsRepository);

  @override
  Future<List<void>> execute() {
    return Future.wait([repositoryContract.clearAllUserData()]);
  }
}
