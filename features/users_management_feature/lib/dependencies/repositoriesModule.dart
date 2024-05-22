import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/dataSourcesModule.dart';
import 'package:users_management_feature/dependencies/mappersModule.dart';

import '../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../infrastructure/ports/repositoryContracts/UserDataRepositoryContract.dart';
import '../infrastructure/repositories/LoginRepository.dart';
import '../infrastructure/repositories/UserDataRepository.dart';

extension RepositoriesModule on GetIt {
  void loadRepositoryModule() {
    loadDataSourcesModule();
    loadMappersModule();
    registerFactory<LoginRepositoryContract>(() => LoginRepository(),
        instanceName: "LoginRepository");
    registerFactory<UserdataRepositoryContract>(() => UserDataRepository(),
        instanceName: "UserDataRepository");
  }
}
