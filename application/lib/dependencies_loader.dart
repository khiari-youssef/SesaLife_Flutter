import 'package:core/exports.dart';
import 'package:home_feature/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/users_dependencies_loader.dart';

import 'app_navigation_configuration.dart';

void loadRuntimeDependencies(BuildContext ctx) {
  if (!GetIt.instance
      .isRegistered<BuildContext>(instanceName: "ApplicationContext")) {
    GetIt.instance.registerSingleton<BuildContext>(ctx,
        instanceName: "ApplicationContext");
    GetIt.instance.registerFactory<SesameDeviceAuthManager>(
        () => SesameDeviceAuthManager());
    GetIt.instance.loadDataAccessConfiguration();
    GetIt.instance.loadUsersDependencies();
    GetIt.instance.loadEventsDependencies();
    GetIt.instance.loadSessionDependencies();
    GetIt.instance.registerFactory<AppNavigationConfiguration>(
        () => AppNavigationConfiguration());
  }
}
