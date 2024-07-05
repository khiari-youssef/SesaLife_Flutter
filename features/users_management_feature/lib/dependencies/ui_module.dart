import 'package:shared_dependencies/shared_dependencies.dart';

import '../ui/login/login_state.dart';
import '../ui/login/login_state_bloc.dart';
import '../ui/myprofile/stateManagement/profile/my_profile_bloc_state_manager.dart';
import '../ui/myprofile/stateManagement/profile/my_profile_data_state.dart';
import '../ui/myprofile/stateManagement/profile/my_profile_screen_global_state.dart';

extension UIModule on GetIt {
  void loadUiModule() {
    registerFactory<LoginState>(() => const LoginState.idle(true));

    registerFactory<LoginStateBloc>(
        () => LoginStateBloc(get(), get(instanceName: "UserLoginUseCase")));

    registerFactory(() => MyProfileBlocStateManager(
        const MyProfileScreenGlobalState(
            profileDataState: MyProfileDataState.loading(), isLoggedOut: false),
        GetIt.instance.get(instanceName: "GetMyProfileDataUseCase"),
        get(instanceName: "UserLogoutUseCase")));

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
