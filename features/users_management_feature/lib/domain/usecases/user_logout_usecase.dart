import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:users_management_feature/infrastructure/repositories/UserSettingsRepository.dart';

import '../../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';

class UserLogoutUseCase
    implements NoInputDomainUseCaseProtocol<Future<List<void>>> {
  final LoginRepositoryContract repositoryContract;
  final UserSettingsRepositoryContract userSettingsRepository;
  final CreditCardSecureLocalStorageInterface
      creditCardSecureLocalStorageInterface;
  UserLogoutUseCase(this.repositoryContract, this.userSettingsRepository,
      this.creditCardSecureLocalStorageInterface);

  @override
  Future<List<void>> execute() {
    return Future.wait([
      creditCardSecureLocalStorageInterface.clearAllCCdata(),
      repositoryContract.clearAllUserData()
    ]);
  }
}
