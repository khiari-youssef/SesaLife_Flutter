import 'package:core/core_domain/application_meta_info_facade.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/dataSources_module.dart';
import 'package:users_management_feature/dependencies/mappers_module.dart';

import '../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../infrastructure/ports/repositoryContracts/UserDataRepositoryContract.dart';
import '../infrastructure/repositories/login_repository.dart';
import '../infrastructure/repositories/sesame_classes_repository.dart';
import '../infrastructure/repositories/user_data_repository.dart';
import '../infrastructure/repositories/user_settings_repository.dart';
import '../infrastructure/repositories/users_search_repository.dart';

extension RepositoriesModule on GetIt {
  void loadRepositoryModule() {
    loadDataSourcesModule();
    loadMappersModule();
    registerFactory<LoginRepositoryContract>(
        () => LoginRepository(get(), get(),
            get(instanceName: "UserDomainToExternalEntityMapper")),
        instanceName: "LoginRepository");

    registerFactory<UserSettingsRepositoryContract>(
        () => UserSettingsRepository(get()),
        instanceName: "UserSettingsRepository");

    registerFactory<UserdataRepositoryContract>(
        () => UserDataRepository(
            get(), get(instanceName: "UserDomainToExternalEntityMapper")),
        instanceName: "UserDataRepository");

    registerFactory<UsersSearchRepositoryContract>(
        () => UsersSearchRepository(),
        instanceName: "UsersSearchRepository");
    registerFactory<SesameClassesRepositoryContract>(
        () => SesameClassesRepository(),
        instanceName: "SesameClassesRepository");
    registerSingleton<ApplicationMetaInfoFacade>(ApplicationMetaInfoFacade(
        DefaultAssetBundle.of(get(instanceName: "ApplicationContext")),
        get(instanceName: "AppRulesDomainToExternalEntityMapper")));
  }
}
