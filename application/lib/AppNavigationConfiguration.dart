import 'package:home_feature/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/exports.dart';
import 'package:users_management_feature/ui/navigation/UsersNavigationConfiguration.gr.dart';

import 'AppNavigationConfiguration.gr.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Page|Screen,Route',
    modules: [HomeNavigationConfiguration, UsersNavigationConfiguration])
class AppNavigationConfiguration extends $AppNavigationConfiguration {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> routes = [
    ...UsersNavigationConfiguration().routes,
    ...HomeNavigationConfiguration().routes,
    AutoRoute(path: "/MyGuestSpaceRoute", page: GuestSpaceRoute.page)
  ];
}
