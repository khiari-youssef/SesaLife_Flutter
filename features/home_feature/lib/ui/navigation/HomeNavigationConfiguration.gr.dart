// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:events_management_feature/events_management_feature_exports.dart'
    as _i5;
import 'package:home_feature/ui/navigation/HomeRootScreen.dart' as _i1;
import 'package:notifications_feature/ui/navigation/NotificationsNavigationConfiguration.dart'
    as _i3;
import 'package:sessions_feature/ui/navigation/SessionsNavigationConfiguration.dart'
    as _i4;

abstract class $HomeNavigationConfiguration extends _i2.RootStackRouter {
  $HomeNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRootRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeRootScreen(),
      );
    },
    ..._i3.NotificationsNavigationConfiguration().pagesMap,
    ..._i4.SessionsNavigationConfiguration().pagesMap,
    ..._i5.EventsNavigationConfiguration().pagesMap,
  };
}

/// generated route for
/// [_i1.HomeRootScreen]
class HomeRootRoute extends _i2.PageRouteInfo<void> {
  const HomeRootRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HomeRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRootRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
