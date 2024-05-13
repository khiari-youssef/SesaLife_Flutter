import 'package:shared_dependencies/shared_dependencies.dart';

import 'SessionsNavigationConfiguration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class SessionsNavigationConfiguration extends $SessionsNavigationConfiguration {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(path: "HomeNotificationsRoute", page: HomeCalendarRoute.page)];
}
