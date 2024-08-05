// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:events_management_feature/ui/home_news/home_news_screen.dart'
    as _i1;

abstract class $EventsNavigationConfiguration extends _i2.RootStackRouter {
  $EventsNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeNewsRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeNewsScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.HomeNewsScreen]
class HomeNewsRoute extends _i2.PageRouteInfo<void> {
  const HomeNewsRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HomeNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNewsRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
