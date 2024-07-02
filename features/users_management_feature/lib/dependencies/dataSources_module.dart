import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dataSources/UsersSettingsLocalDataSource.dart';

import '../infrastructure/dataSources/UsersLocalDataSource.dart';
import '../infrastructure/dataSources/UsersRemoteDataSource.dart';

extension DataSourcesModule on GetIt {
  void loadDataSourcesModule() {
    registerSingleton(UsersLocalDataSource()..init());
    registerSingleton(UsersRemoteDataSource());
    registerSingleton(UsersSettingsLocalDataSource());
    registerFactory<CreditCardSecureLocalStorageInterface>(
        () => CreditCardSecureStorageImpl(),
        instanceName: "CreditCardSecureStorageImpl");
  }
}
