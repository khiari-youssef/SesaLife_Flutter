// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:sessions_feature/ui/session_details/SessionDetailsBaseScreen.dart'
    as _i2;
import 'package:sessions_feature/ui/sessions_calendar/home_sessions.dart'
    as _i1;

abstract class $SessionsNavigationConfiguration extends _i3.RootStackRouter {
  $SessionsNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeSessionsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeSessionsScreen(),
      );
    },
    SessionDetailsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SessionDetailsBaseScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeSessionsScreen]
class HomeSessionsRoute extends _i3.PageRouteInfo<void> {
  const HomeSessionsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeSessionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeSessionsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SessionDetailsBaseScreen]
class SessionDetailsRoute extends _i3.PageRouteInfo<void> {
  const SessionDetailsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          SessionDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SessionDetailsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
