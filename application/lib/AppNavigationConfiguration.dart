import 'package:home_feature/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/exports.dart';
import 'package:users_management_feature/ui/navigation/users_navigation_configuration.gr.dart';

import 'AppNavigationConfiguration.gr.dart';
import 'AuthGuard.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Page|Screen,Route',
    modules: [HomeNavigationConfiguration, UsersNavigationConfiguration])
class AppNavigationConfiguration extends $AppNavigationConfiguration {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> routes = [
    CustomRoute(
        page: SesameUnauthorizedDeviceRoute.page,
        initial: true,
        guards: [AuthGuard()]),
    ...UsersNavigationConfiguration().routes,
    ...HomeNavigationConfiguration().routes,
    AutoRoute(path: "/MyGuestSpaceRoute", page: GuestSpaceRoute.page)
  ];
}
