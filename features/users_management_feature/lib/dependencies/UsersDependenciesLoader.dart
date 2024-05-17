import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/repositories/LoginRepositoryContract.dart';
import 'package:users_management_feature/ui/login/LoginState.dart';

import '../ui/login/LoginStateBloc.dart';
import '../ui/navigation/UsersNavigationConfiguration.gr.dart';

extension UsersDependenciesLoader on GetIt {
  void loadUsersDependencies() {
    registerFactory<LoginState>(() => const LoginState.idle(true));

    registerFactory<LoginStateBloc>(
        () => LoginStateBloc(get(), get(instanceName: "ActualImpl")));

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
