import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/data_sources/users_settings_local_data_source.dart';

import '../infrastructure/data_sources/users_local_data_source.dart';
import '../infrastructure/data_sources/users_remote_data_source.dart';

extension DataSourcesModule on GetIt {
  void loadDataSourcesModule() {
    registerSingleton(UsersLocalDataSource());
    registerSingleton(UsersRemoteDataSource());
    registerSingleton(UsersSettingsLocalDataSource());
    registerFactory<CreditCardSecureLocalStorageInterface>(
        () => CreditCardSecureStorageImpl(),
        instanceName: "CreditCardSecureStorageImpl");
  }
}
