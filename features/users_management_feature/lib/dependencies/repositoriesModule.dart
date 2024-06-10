import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/dataSourcesModule.dart';
import 'package:users_management_feature/dependencies/mappersModule.dart';

import '../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../infrastructure/ports/repositoryContracts/UserDataRepositoryContract.dart';
import '../infrastructure/repositories/LoginRepository.dart';
import '../infrastructure/repositories/UserDataRepository.dart';
import '../infrastructure/repositories/UserSettingsRepository.dart';

extension RepositoriesModule on GetIt {
  void loadRepositoryModule() {
    loadDataSourcesModule();
    loadMappersModule();
    registerFactory<LoginRepositoryContract>(
        () => LoginRepository(get(), get(),
            get(instanceName: "UserDomainToExternalEntityMapper")),
        instanceName: "LoginRepository");
    registerFactory<UserdataRepositoryContract>(() => UserDataRepository(),
        instanceName: "UserDataRepository");
    registerFactory<UserSettingsRepository>(
        () => UserSettingsRepository(get()));
  }
}
