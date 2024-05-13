// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:shared_dependencies/shared_dependencies.dart' as _i14;
import 'package:users_management_feature/ui/enrollment/EnrollmentIdentifyVerificationStepPage.dart'
    as _i1;
import 'package:users_management_feature/ui/enrollment/EnrollmentResultPage.dart'
    as _i2;
import 'package:users_management_feature/ui/enrollment/EnrollmentScreen.dart'
    as _i3;
import 'package:users_management_feature/ui/enrollment/EnrollmentStep1Page.dart'
    as _i4;
import 'package:users_management_feature/ui/enrollment/EnrollmentStep2Page.dart'
    as _i5;
import 'package:users_management_feature/ui/enrollment/EnrollmentStep3Page.dart'
    as _i6;
import 'package:users_management_feature/ui/enrollment/EnrollmentStep4Page.dart'
    as _i7;
import 'package:users_management_feature/ui/guest_space/GuestSpace.dart' as _i8;
import 'package:users_management_feature/ui/login/LoginScreen.dart' as _i9;
import 'package:users_management_feature/ui/myprofile/MyUserProfileScreen.dart'
    as _i10;
import 'package:users_management_feature/ui/program&privacy/SesamePrivacyAndSecurityPolicy.dart'
    as _i11;
import 'package:users_management_feature/ui/program&privacy/SesameProgramsCatalog.dart'
    as _i12;

abstract class $UsersNavigationConfiguration extends _i13.RootStackRouter {
  $UsersNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    EnrollmentIdentifyVerificationStepRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EnrollmentIdentifyVerificationStep(),
      );
    },
    EnrollmentResultRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnrollmentResultPage(),
      );
    },
    EnrollmentRoute.name: (routeData) {
      final args = routeData.argsAs<EnrollmentRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.EnrollmentScreen(
          key: args.key,
          onExitEnrollment: args.onExitEnrollment,
        ),
      );
    },
    EnrollmentStep1Route.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EnrollmentStep1Page(),
      );
    },
    EnrollmentStep2Route.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EnrollmentStep2Page(),
      );
    },
    EnrollmentStep3Route.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.EnrollmentStep3Page(),
      );
    },
    EnrollmentStep4Route.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EnrollmentStep4Page(),
      );
    },
    GuestSpaceRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.GuestSpace(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginScreen(),
      );
    },
    MyUserProfileRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MyUserProfileScreen(),
      );
    },
    SesamePrivacyAndSecurityPolicyRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SesamePrivacyAndSecurityPolicy(),
      );
    },
    SesameProgramsCatalog.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SesameProgramsCatalog(),
      );
    },
  };
}

/// generated route for
/// [_i1.EnrollmentIdentifyVerificationStep]
class EnrollmentIdentifyVerificationStepRoute extends _i13.PageRouteInfo<void> {
  const EnrollmentIdentifyVerificationStepRoute(
      {List<_i13.PageRouteInfo>? children})
      : super(
          EnrollmentIdentifyVerificationStepRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentIdentifyVerificationStepRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnrollmentResultPage]
class EnrollmentResultRoute extends _i13.PageRouteInfo<void> {
  const EnrollmentResultRoute({List<_i13.PageRouteInfo>? children})
      : super(
          EnrollmentResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentResultRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EnrollmentScreen]
class EnrollmentRoute extends _i13.PageRouteInfo<EnrollmentRouteArgs> {
  EnrollmentRoute({
    _i14.Key? key,
    required void Function() onExitEnrollment,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          EnrollmentRoute.name,
          args: EnrollmentRouteArgs(
            key: key,
            onExitEnrollment: onExitEnrollment,
          ),
          initialChildren: children,
        );

  static const String name = 'EnrollmentRoute';

  static const _i13.PageInfo<EnrollmentRouteArgs> page =
      _i13.PageInfo<EnrollmentRouteArgs>(name);
}

class EnrollmentRouteArgs {
  const EnrollmentRouteArgs({
    this.key,
    required this.onExitEnrollment,
  });

  final _i14.Key? key;

  final void Function() onExitEnrollment;

  @override
  String toString() {
    return 'EnrollmentRouteArgs{key: $key, onExitEnrollment: $onExitEnrollment}';
  }
}

/// generated route for
/// [_i4.EnrollmentStep1Page]
class EnrollmentStep1Route extends _i13.PageRouteInfo<void> {
  const EnrollmentStep1Route({List<_i13.PageRouteInfo>? children})
      : super(
          EnrollmentStep1Route.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentStep1Route';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EnrollmentStep2Page]
class EnrollmentStep2Route extends _i13.PageRouteInfo<void> {
  const EnrollmentStep2Route({List<_i13.PageRouteInfo>? children})
      : super(
          EnrollmentStep2Route.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentStep2Route';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.EnrollmentStep3Page]
class EnrollmentStep3Route extends _i13.PageRouteInfo<void> {
  const EnrollmentStep3Route({List<_i13.PageRouteInfo>? children})
      : super(
          EnrollmentStep3Route.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentStep3Route';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EnrollmentStep4Page]
class EnrollmentStep4Route extends _i13.PageRouteInfo<void> {
  const EnrollmentStep4Route({List<_i13.PageRouteInfo>? children})
      : super(
          EnrollmentStep4Route.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentStep4Route';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.GuestSpace]
class GuestSpaceRoute extends _i13.PageRouteInfo<void> {
  const GuestSpaceRoute({List<_i13.PageRouteInfo>? children})
      : super(
          GuestSpaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestSpaceRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MyUserProfileScreen]
class MyUserProfileRoute extends _i13.PageRouteInfo<void> {
  const MyUserProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MyUserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyUserProfileRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SesamePrivacyAndSecurityPolicy]
class SesamePrivacyAndSecurityPolicyRoute extends _i13.PageRouteInfo<void> {
  const SesamePrivacyAndSecurityPolicyRoute(
      {List<_i13.PageRouteInfo>? children})
      : super(
          SesamePrivacyAndSecurityPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'SesamePrivacyAndSecurityPolicyRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SesameProgramsCatalog]
class SesameProgramsCatalog extends _i13.PageRouteInfo<void> {
  const SesameProgramsCatalog({List<_i13.PageRouteInfo>? children})
      : super(
          SesameProgramsCatalog.name,
          initialChildren: children,
        );

  static const String name = 'SesameProgramsCatalog';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
