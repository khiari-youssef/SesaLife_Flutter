import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dataSources/UsersSettingsLocalDataSource.dart';

import '../infrastructure/dataSources/UsersLocalDataSource.dart';
import '../infrastructure/dataSources/UsersRemoteDataSource.dart';

extension DataSourcesModule on GetIt {
  void loadDataSourcesModule() {
    registerSingleton(UsersLocalDataSource());
    registerSingleton(UsersRemoteDataSource());
    registerSingleton(UsersSettingsLocalDataSource());
  }
}
