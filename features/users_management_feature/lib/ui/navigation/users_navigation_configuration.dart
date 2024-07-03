import 'package:shared_dependencies/shared_dependencies.dart';

import 'users_navigation_configuration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class UsersNavigationConfiguration extends $UsersNavigationConfiguration {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/LoginRoute", page: LoginRoute.page),
        AutoRoute(
            path: "/AutoLoginLoadingRoute", page: AutoLoginLoadingRoute.page),
        AutoRoute(
          path: "/EnrollmentRoute",
          page: EnrollmentRoute.page,
        ),
        AutoRoute(
            path: "/SesamePolicyAndTermsRoute",
            page: SesamePolicyAndTermsRoute.page),
        AutoRoute(path: "/MySettingsRoute", page: MySettingsRoute.page),
        AutoRoute(
          path: "/SubscriptionPaymentMethodRoute",
          page: SubscriptionPaymentMethodRoute.page,
        ),
        AutoRoute(
            path: "/SubscriptionPaymentInterfaceRoute",
            page: SubscriptionPaymentInterfaceRoute.page),
        AutoRoute(
            path: "/SubscriptionPaymentResultRoute",
            page: SubscriptionPaymentResultRoute.page),
        AutoRoute(path: "/UsersListRoute", page: UsersListRoute.page),
        AutoRoute(path: "/SesameClassesRoute", page: SesameClassesRoute.page),
        AutoRoute(path: "/MySubscriptionRoute", page: MySubscriptionRoute.page),
        AutoRoute(path: "/MyBadgeRoute", page: MyBadgeRoute.page)
      ];
}
