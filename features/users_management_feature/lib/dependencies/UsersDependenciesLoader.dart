import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/usecases/GetMyProfileDataUseCase.dart';
import 'package:users_management_feature/infrastructure/ports/repositoryGateway/LoginRepositoryContract.dart';
import 'package:users_management_feature/ui/login/LoginState.dart';

import '../domain/entities/SesameUser.dart';
import '../infrastructure/repositories/LoginRepository.dart';
import '../infrastructure/repositories/UserDataRepository.dart';
import '../ui/login/LoginStateBloc.dart';
import '../ui/myprofile/stateManagement/MyProfileBlocStateManager.dart';
import '../ui/myprofile/stateManagement/MyProfileDataState.dart';
import '../ui/myprofile/stateManagement/MyProfileScreenGlobalState.dart';

extension UsersDependenciesLoader on GetIt {
  void loadUsersDependencies() {
    registerFactory<LoginState>(() => const LoginState.idle(true));

    registerFactory<LoginStateBloc>(
        () => LoginStateBloc(get(), get(instanceName: "ActualImpl")));

    registerFactory<NoInputDomainUseCaseProtocol<Future<SesameUser>>>(
        () => GetMyProfileDataUseCase(UserDataRepository()),
        instanceName: "GetMyProfileDataUseCase");

    registerFactory(() => MyProfileBlocStateManager(
        const MyProfileScreenGlobalState(
            profileDataState: MyProfileDataState.loading(), isLoggedOut: false),
        GetIt.instance.get(instanceName: "GetMyProfileDataUseCase")));

    registerFactory<LoginRepositoryContract>(() => LoginRepository(),
        instanceName: "ActualImpl");

    registerFactory<RouteTransitionsBuilder>(
        () => (BuildContext context, Animation<double> anim1,
                Animation<double> anim2, Widget child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);
              final offsetAnimation = anim1.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
        instanceName: "SlideTransitionBuilder");
  }
}
