// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i1;
import 'package:home_feature/exports.dart' as _i2;
import 'package:users_management_feature/exports.dart' as _i3;

abstract class $AppNavigationConfiguration extends _i1.RootStackRouter {
  $AppNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ..._i2.HomeNavigationConfiguration().pagesMap,
    ..._i3.UsersNavigationConfiguration().pagesMap,
  };
}
