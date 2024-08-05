import 'package:shared_dependencies/shared_dependencies.dart';

import 'events_navigation_configuration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class EventsNavigationConfiguration extends $EventsNavigationConfiguration {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(path: "HomeNewsRoute", page: HomeNewsRoute.page)];
}
