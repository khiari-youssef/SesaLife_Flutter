// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:home_feature/exports.dart' as _i3;
import 'package:Sesalife/SesameUnauthorizedDeviceScreen.dart' as _i1;
import 'package:users_management_feature/exports.dart' as _i4;

abstract class $AppNavigationConfiguration extends _i2.RootStackRouter {
  $AppNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SesameUnauthorizedDeviceRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SesameUnauthorizedDeviceScreen(),
      );
    },
    ..._i3.HomeNavigationConfiguration().pagesMap,
    ..._i4.UsersNavigationConfiguration().pagesMap,
  };
}

/// generated route for
/// [_i1.SesameUnauthorizedDeviceScreen]
class SesameUnauthorizedDeviceRoute extends _i2.PageRouteInfo<void> {
  const SesameUnauthorizedDeviceRoute({List<_i2.PageRouteInfo>? children})
      : super(
          SesameUnauthorizedDeviceRoute.name,
          initialChildren: children,
        );

  static const String name = 'SesameUnauthorizedDeviceRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
