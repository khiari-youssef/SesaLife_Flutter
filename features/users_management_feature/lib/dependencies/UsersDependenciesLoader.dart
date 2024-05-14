import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/repositories/LoginRepositoryContract.dart';
import 'package:users_management_feature/ui/login/LoginState.dart';
import 'package:designsystem/components/menus/ProfileMenuItem.dart';

import '../ui/login/LoginStateBloc.dart';
import '../ui/navigation/UsersNavigationConfiguration.gr.dart';

extension UsersDependenciesLoader on GetIt {
  void loadUsersDependencies() {
    BuildContext context =
        get<BuildContext>(instanceName: "ApplicationContext");
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

    registerFactory<List<AutoRoute>>(
        () => [
              AutoRoute(
                  path: "EnrollmentRoute/EnrollmentStep1Route",
                  page: EnrollmentStep1Route.page,
                  title: (context, data) => S.of(context).my_personal_details,
                  initial: true),
              CustomRoute(
                path: "EnrollmentRoute/EnrollmentIdentifyVerificationStepRoute",
                page: EnrollmentIdentifyVerificationStepRoute.page,
                title: (context, data) => S.of(context).identity_verification,
                transitionsBuilder:
                    GetIt.instance.get(instanceName: "SlideTransitionBuilder"),
              ),
              CustomRoute(
                path: "EnrollmentRoute/EnrollmentStep2Route",
                title: (context, data) => S.of(context).my_personal_details,
                page: EnrollmentStep2Route.page,
                transitionsBuilder:
                    GetIt.instance.get(instanceName: "SlideTransitionBuilder"),
              ),
              CustomRoute(
                path: "EnrollmentRoute/EnrollmentStep3Route",
                page: EnrollmentStep3Route.page,
                title: (context, data) => S.of(context).program_selection,
                transitionsBuilder:
                    GetIt.instance.get(instanceName: "SlideTransitionBuilder"),
              ),
              CustomRoute(
                path: "EnrollmentRoute/EnrollmentStep4Route",
                title: (context, data) => S.of(context).program_selection,
                page: EnrollmentStep4Route.page,
                transitionsBuilder:
                    GetIt.instance.get(instanceName: "SlideTransitionBuilder"),
              ),
              CustomRoute(
                path: "EnrollmentRoute/EnrollmentResultRoute",
                page: EnrollmentResultRoute.page,
                title: null,
                transitionsBuilder:
                    GetIt.instance.get(instanceName: "SlideTransitionBuilder"),
              )
            ],
        instanceName: "EnrollmentScreenChildren");
  }
}
