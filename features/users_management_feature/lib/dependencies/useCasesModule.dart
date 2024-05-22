import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../domain/entities/LoginMethod.dart';
import '../domain/entities/SesameUser.dart';
import '../domain/usecases/GetMyProfileDataUseCase.dart';
import '../domain/usecases/UserLoginUseCase.dart';
import '../infrastructure/repositories/UserDataRepository.dart';

extension UseCasesModule on GetIt {
  void loadUseCasesModule() {
    registerFactory<DomainUseCaseProtocol<LoginMethod, Future<SesameUser>>>(
        () => UserLoginUseCase(
            GetIt.instance.get(instanceName: "LoginRepository")),
        instanceName: "UserLoginUseCase");

    registerFactory<NoInputDomainUseCaseProtocol<Future<SesameUser>>>(
        () => GetMyProfileDataUseCase(get(instanceName: "UserDataRepository")),
        instanceName: "GetMyProfileDataUseCase");
  }
}
