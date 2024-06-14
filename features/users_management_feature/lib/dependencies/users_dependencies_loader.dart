import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/repositoriesModule.dart';
import 'package:users_management_feature/dependencies/uiModule.dart';
import 'package:users_management_feature/dependencies/useCasesModule.dart';

import '../domain/services/credit_card_input_validation_service.dart';

extension UsersDependenciesLoader on GetIt {
  void loadUsersDependencies() {
    loadRepositoryModule();
    registerSingleton(CreditCardInputValidationService());
    loadUseCasesModule();
    loadUiModule();
  }
}
