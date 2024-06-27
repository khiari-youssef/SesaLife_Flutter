import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/dependencies/repositories_module.dart';
import 'package:users_management_feature/dependencies/ui_module.dart';
import 'package:users_management_feature/dependencies/use_cases_module.dart';

import '../domain/services/credit_card_input_validation_service.dart';

extension UsersDependenciesLoader on GetIt {
  void loadUsersDependencies() {
    loadRepositoryModule();
    registerSingleton(CreditCardInputValidationService());
    loadUseCasesModule();
    loadUiModule();
  }
}
