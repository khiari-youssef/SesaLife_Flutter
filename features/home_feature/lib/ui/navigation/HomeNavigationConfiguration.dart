import 'package:events_management_feature/events_management_feature_exports.dart';
import 'package:events_management_feature/ui/EventsNavigationConfiguration.gr.dart';
import 'package:notifications_feature/ui/navigation/NotificationsNavigationConfiguration.dart';
import 'package:notifications_feature/ui/navigation/NotificationsNavigationConfiguration.gr.dart';
import 'package:sessions_feature/ui/navigation/sessions_navigation_configuration.dart';
import 'package:sessions_feature/ui/navigation/sessions_navigation_configuration.gr.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/exports.dart';
import 'package:users_management_feature/ui/navigation/UsersNavigationConfiguration.gr.dart';

import 'HomeNavigationConfiguration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route', modules: [
  UsersNavigationConfiguration,
  NotificationsNavigationConfiguration,
  SessionsNavigationConfiguration,
  EventsNavigationConfiguration
])
class HomeNavigationConfiguration extends $HomeNavigationConfiguration {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/HomeRootRoute', page: HomeRootRoute.page, children: [
          AutoRoute(path: "HomeNewsRoute", page: HomeNewsRoute.page),
          AutoRoute(path: "HomeSessionsRoute", page: HomeSessionsRoute.page),
          AutoRoute(
              path: "HomeNotificationsRoute",
              page: HomeNotificationsRoute.page),
          AutoRoute(path: "HomeUserProfileRoute", page: MyUserProfileRoute.page)
        ]),
        AutoRoute(path: "/MyBadgeRoute", page: MyBadgeRoute.page),
        AutoRoute(path: "/SessionDetailsRoute", page: SessionDetailsRoute.page),
      ];
}
