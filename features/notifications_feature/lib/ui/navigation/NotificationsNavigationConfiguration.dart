import 'package:shared_dependencies/shared_dependencies.dart';

import 'NotificationsNavigationConfiguration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class NotificationsNavigationConfiguration
    extends $NotificationsNavigationConfiguration {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: "HomeNotificationsRoute", page: HomeNotificationsRoute.page)
      ];
}
