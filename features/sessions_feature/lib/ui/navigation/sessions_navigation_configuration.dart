import 'package:shared_dependencies/shared_dependencies.dart';

import 'sessions_navigation_configuration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class SessionsNavigationConfiguration extends $SessionsNavigationConfiguration {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "HomeSessionsRoute", page: HomeSessionsRoute.page),
        AutoRoute(path: "/SessionDetailsRoute", page: SessionDetailsRoute.page)
      ];
}
