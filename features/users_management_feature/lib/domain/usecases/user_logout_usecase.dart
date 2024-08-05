import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:core/core_domain/domain_use_case_protocol.dart';
import 'package:users_management_feature/infrastructure/repositories/user_settings_repository.dart';
import 'package:users_management_feature/domain/ports/repositoryContracts/UserDataRepositoryContract.dart';

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
