import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/dataSources_module.dart';
import 'package:users_management_feature/dependencies/mappers_module.dart';

import '../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../infrastructure/ports/repositoryContracts/UserDataRepositoryContract.dart';
import '../infrastructure/repositories/LoginRepository.dart';
import '../infrastructure/repositories/UserDataRepository.dart';
import '../infrastructure/repositories/UserSettingsRepository.dart';
import '../infrastructure/repositories/UsersSearchRepository.dart';

extension RepositoriesModule on GetIt {
  void loadRepositoryModule() {
    loadDataSourcesModule();
    loadMappersModule();
    registerFactory<LoginRepositoryContract>(
        () => LoginRepository(get(), get(),
            get(instanceName: "UserDomainToExternalEntityMapper")),
        instanceName: "LoginRepository");
    registerFactory<UserdataRepositoryContract>(
        () => UserDataRepository(
            get(), get(instanceName: "UserDomainToExternalEntityMapper")),
        instanceName: "UserDataRepository");
    registerFactory<UserSettingsRepositoryContract>(
        () => UserSettingsRepository(get()),
        instanceName: "UserSettingsRepository");
    registerFactory<UsersSearchRepositoryContract>(
        () => UsersSearchRepository(),
        instanceName: "UsersSearchRepository");
  }
}
