import 'package:shared_dependencies/shared_dependencies.dart';

import 'UsersNavigationConfiguration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class UsersNavigationConfiguration extends $UsersNavigationConfiguration {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/LoginRoute", page: LoginRoute.page, initial: true),
        AutoRoute(
          path: "/EnrollmentRoute",
          page: EnrollmentRoute.page,
        ),
        AutoRoute(
            path: "/SesamePrivacyAndSecurityPolicyRoute",
            page: SesamePrivacyAndSecurityPolicyRoute.page),
        AutoRoute(
            path: "/SesameProgramsCatalog", page: SesameProgramsCatalog.page)
      ];
}
