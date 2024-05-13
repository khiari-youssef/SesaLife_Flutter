// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:notifications_feature/ui/home_notifications/HomeNotificationsScreen.dart'
    as _i1;

abstract class $NotificationsNavigationConfiguration
    extends _i2.RootStackRouter {
  $NotificationsNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeNotificationsRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeNotificationsScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.HomeNotificationsScreen]
class HomeNotificationsRoute extends _i2.PageRouteInfo<void> {
  const HomeNotificationsRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HomeNotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNotificationsRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
