import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:users_management_feature/infrastructure/repositories/user_settings_repository.dart';

import '../../infrastructure/ports/repositoryContracts/UserDataRepositoryContract.dart';

class UserLogoutUseCase
    implements NoInputDomainUseCaseProtocol<Future<List<void>>> {
  final UserdataRepositoryContract repositoryContract;
  final UserSettingsRepositoryContract userSettingsRepository;
  final CreditCardSecureLocalStorageInterface
      creditCardSecureLocalStorageInterface;
  UserLogoutUseCase(this.repositoryContract, this.userSettingsRepository,
      this.creditCardSecureLocalStorageInterface);

  @override
  Future<List<void>> execute() {
    return Future.wait([
      creditCardSecureLocalStorageInterface.clearAllCCdata(),
      userSettingsRepository.clearSettings(),
      repositoryContract.clearUserData()
    ]);
  }
}
