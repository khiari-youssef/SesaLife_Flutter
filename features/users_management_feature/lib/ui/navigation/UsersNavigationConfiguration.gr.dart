// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:shared_dependencies/shared_dependencies.dart' as _i9;
import 'package:users_management_feature/domain/entities/SesameBadge.dart'
    as _i10;
import 'package:users_management_feature/ui/enrollment/EnrollmentScreen.dart'
    as _i1;
import 'package:users_management_feature/ui/guest_space/GuestSpace.dart' as _i2;
import 'package:users_management_feature/ui/login/LoginScreen.dart' as _i3;
import 'package:users_management_feature/ui/myprofile/MyBadgeScreen.dart'
    as _i4;
import 'package:users_management_feature/ui/myprofile/MyUserProfileScreen.dart'
    as _i5;
import 'package:users_management_feature/ui/program&privacy/SesamePrivacyAndSecurityPolicy.dart'
    as _i6;
import 'package:users_management_feature/ui/program&privacy/SesameProgramsCatalog.dart'
    as _i7;

abstract class $UsersNavigationConfiguration extends _i8.RootStackRouter {
  $UsersNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    EnrollmentRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EnrollmentScreen(),
      );
    },
    GuestSpaceRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GuestSpace(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    MyBadgeRoute.name: (routeData) {
      final args = routeData.argsAs<MyBadgeRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MyBadgeScreen(
          key: args.key,
          userBadge: args.userBadge,
        ),
      );
    },
    MyUserProfileRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MyUserProfileScreen(),
      );
    },
    SesamePrivacyAndSecurityPolicyRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SesamePrivacyAndSecurityPolicy(),
      );
    },
    SesameProgramsCatalog.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SesameProgramsCatalog(),
      );
    },
  };
}

/// generated route for
/// [_i1.EnrollmentScreen]
class EnrollmentRoute extends _i8.PageRouteInfo<void> {
  const EnrollmentRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EnrollmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GuestSpace]
class GuestSpaceRoute extends _i8.PageRouteInfo<void> {
  const GuestSpaceRoute({List<_i8.PageRouteInfo>? children})
      : super(
          GuestSpaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestSpaceRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MyBadgeScreen]
class MyBadgeRoute extends _i8.PageRouteInfo<MyBadgeRouteArgs> {
  MyBadgeRoute({
    _i9.Key? key,
    required _i10.SesameBadge userBadge,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          MyBadgeRoute.name,
          args: MyBadgeRouteArgs(
            key: key,
            userBadge: userBadge,
          ),
          initialChildren: children,
        );

  static const String name = 'MyBadgeRoute';

  static const _i8.PageInfo<MyBadgeRouteArgs> page =
      _i8.PageInfo<MyBadgeRouteArgs>(name);
}

class MyBadgeRouteArgs {
  const MyBadgeRouteArgs({
    this.key,
    required this.userBadge,
  });

  final _i9.Key? key;

  final _i10.SesameBadge userBadge;

  @override
  String toString() {
    return 'MyBadgeRouteArgs{key: $key, userBadge: $userBadge}';
  }
}

/// generated route for
/// [_i5.MyUserProfileScreen]
class MyUserProfileRoute extends _i8.PageRouteInfo<void> {
  const MyUserProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MyUserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyUserProfileRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SesamePrivacyAndSecurityPolicy]
class SesamePrivacyAndSecurityPolicyRoute extends _i8.PageRouteInfo<void> {
  const SesamePrivacyAndSecurityPolicyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SesamePrivacyAndSecurityPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'SesamePrivacyAndSecurityPolicyRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SesameProgramsCatalog]
class SesameProgramsCatalog extends _i8.PageRouteInfo<void> {
  const SesameProgramsCatalog({List<_i8.PageRouteInfo>? children})
      : super(
          SesameProgramsCatalog.name,
          initialChildren: children,
        );

  static const String name = 'SesameProgramsCatalog';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
