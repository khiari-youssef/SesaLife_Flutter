// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:sessions_feature/ui/sessions_calendar/home_sessions_calendar.dart'
    as _i1;

abstract class $SessionsNavigationConfiguration extends _i2.RootStackRouter {
  $SessionsNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeCalendarRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeCalendarScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.HomeCalendarScreen]
class HomeCalendarRoute extends _i2.PageRouteInfo<void> {
  const HomeCalendarRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HomeCalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeCalendarRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
