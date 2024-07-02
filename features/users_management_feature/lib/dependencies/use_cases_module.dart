import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_domain/entities/user_profile_preview.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../domain/entities/SesameUser.dart';
import '../domain/entities/login_method.dart';
import '../domain/entities/sesame_class_groups.dart';
import '../domain/entities/subscription_payment_result.dart';
import '../domain/usecases/credit_card_payment_use_case.dart';
import '../domain/usecases/get_my_profile_data_use_case.dart';
import '../domain/usecases/sesame_classes_search_usecase.dart';
import '../domain/usecases/user_login_use_case.dart';
import '../domain/usecases/user_logout_usecase.dart';
import '../domain/usecases/user_search_usecase.dart';

extension UseCasesModule on GetIt {
  void loadUseCasesModule() {
    registerFactory<DomainUseCaseProtocol<LoginMethod, Future<SesameUser>>>(
        () => UserLoginUseCase(
            GetIt.instance.get(instanceName: "LoginRepository")),
        instanceName: "UserLoginUseCase");

    registerFactory<NoInputDomainUseCaseProtocol<Future<SesameUser>>>(
        () => GetMyProfileDataUseCase(get(instanceName: "UserDataRepository")),
        instanceName: "GetMyProfileDataUseCase");
    registerFactory<
            DomainUseCaseProtocol<CreditCardDetails,
                Future<SubscriptionPaymentResult>>>(
        () => CreditCardPaymentUseCase(),
        instanceName: "CreditCardPaymentUseCase");
    registerFactory<NoInputDomainUseCaseProtocol<Future<List<void>>>>(
        () => UserLogoutUseCase(
            get(instanceName: "UserDataRepository"),
            get(instanceName: "UserSettingsRepository"),
            get(instanceName: "CreditCardSecureStorageImpl")),
        instanceName: "UserLogoutUseCase");
    registerFactory<
            DomainUseCaseProtocol<UserSearchQuery,
                Future<List<UserProfilePreview>>>>(
        () => UserSearchUseCase(get(instanceName: "UsersSearchRepository")),
        instanceName: "UserSearchUseCase");
    registerFactory<
            DomainUseCaseProtocol<SesameClassesSearchQuery,
                Future<List<SesameClassGroups>>>>(
        () => SesameClassesSearchUseCase(
            get(instanceName: "SesameClassesRepository")),
        instanceName: "SesameClassesSearchUseCase");
  }
}
