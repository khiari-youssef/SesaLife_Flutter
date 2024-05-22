import 'package:shared_dependencies/shared_dependencies.dart';

import '../infrastructure/dataSources/UsersLocalDataSource.dart';
import '../infrastructure/dataSources/UsersRemoteDataSource.dart';

extension DataSourcesModule on GetIt {
  void loadDataSourcesModule() {
    registerSingleton(UsersLocalDataSource());
    registerSingleton(UsersRemoteDataSource());
  }
}
