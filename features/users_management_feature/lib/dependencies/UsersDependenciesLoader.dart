import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/repositoriesModule.dart';
import 'package:users_management_feature/dependencies/uiModule.dart';
import 'package:users_management_feature/dependencies/useCasesModule.dart';

extension UsersDependenciesLoader on GetIt {
  void loadUsersDependencies() {
    loadRepositoryModule();
    loadUseCasesModule();
    loadUiModule();
  }
}
