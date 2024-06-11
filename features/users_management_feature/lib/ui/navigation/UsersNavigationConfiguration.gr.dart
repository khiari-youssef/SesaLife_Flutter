// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:core/core_domain/entities/SesameBadge.dart' as _i16;
import 'package:shared_dependencies/shared_dependencies.dart' as _i15;
import 'package:users_management_feature/domain/entities/student_subscription_record.dart'
    as _i17;
import 'package:users_management_feature/ui/enrollment/EnrollmentScreen.dart'
    as _i2;
import 'package:users_management_feature/ui/guest_space/GuestSpace.dart' as _i3;
import 'package:users_management_feature/ui/login/LoginScreen.dart' as _i4;
import 'package:users_management_feature/ui/myprofile/BadgeUsageGuidelineScreen.dart'
    as _i1;
import 'package:users_management_feature/ui/myprofile/MyBadgeScreen.dart'
    as _i5;
import 'package:users_management_feature/ui/myprofile/MySettingsScreen.dart'
    as _i6;
import 'package:users_management_feature/ui/myprofile/MyUserProfileScreen.dart'
    as _i8;
import 'package:users_management_feature/ui/program&privacy/SesamePrivacyAndSecurityPolicy.dart'
    as _i9;
import 'package:users_management_feature/ui/program&privacy/SesameProgramsCatalog.dart'
    as _i10;
import 'package:users_management_feature/ui/subscription/my_subscription_screen.dart'
    as _i7;
import 'package:users_management_feature/ui/subscription/subscription_payment_details_screen.dart'
    as _i11;
import 'package:users_management_feature/ui/subscription/subscription_payment_interface.dart'
    as _i12;
import 'package:users_management_feature/ui/subscription/subscription_payment_method.dart'
    as _i13;

abstract class $UsersNavigationConfiguration extends _i14.RootStackRouter {
  $UsersNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    BadgeUsageGuidelineRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BadgeUsageGuidelineScreen(),
      );
    },
    EnrollmentRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnrollmentScreen(),
      );
    },
    GuestSpaceRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.GuestSpace(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    MyBadgeRoute.name: (routeData) {
      final args = routeData.argsAs<MyBadgeRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.MyBadgeScreen(
          key: args.key,
          userBadge: args.userBadge,
        ),
      );
    },
    MySettingsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MySettingsScreen(),
      );
    },
    MySubscriptionRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MySubscriptionScreen(),
      );
    },
    MyUserProfileRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MyUserProfileScreen(),
      );
    },
    SesamePrivacyAndSecurityPolicyRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SesamePrivacyAndSecurityPolicy(),
      );
    },
    SesameProgramsCatalog.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SesameProgramsCatalog(),
      );
    },
    SubscriptionPaymentDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentDetailsRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SubscriptionPaymentDetailsScreen(
          key: args.key,
          paymentRecord: args.paymentRecord,
        ),
      );
    },
    SubscriptionPaymentInterfaceRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SubscriptionPaymentInterface(),
      );
    },
    SubscriptionPaymentMethodRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SubscriptionPaymentMethod(),
      );
    },
  };
}

/// generated route for
/// [_i1.BadgeUsageGuidelineScreen]
class BadgeUsageGuidelineRoute extends _i14.PageRouteInfo<void> {
  const BadgeUsageGuidelineRoute({List<_i14.PageRouteInfo>? children})
      : super(
          BadgeUsageGuidelineRoute.name,
          initialChildren: children,
        );

  static const String name = 'BadgeUsageGuidelineRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnrollmentScreen]
class EnrollmentRoute extends _i14.PageRouteInfo<void> {
  const EnrollmentRoute({List<_i14.PageRouteInfo>? children})
      : super(
          EnrollmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GuestSpace]
class GuestSpaceRoute extends _i14.PageRouteInfo<void> {
  const GuestSpaceRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GuestSpaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestSpaceRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MyBadgeScreen]
class MyBadgeRoute extends _i14.PageRouteInfo<MyBadgeRouteArgs> {
  MyBadgeRoute({
    _i15.Key? key,
    required _i16.SesameBadge userBadge,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          MyBadgeRoute.name,
          args: MyBadgeRouteArgs(
            key: key,
            userBadge: userBadge,
          ),
          initialChildren: children,
        );

  static const String name = 'MyBadgeRoute';

  static const _i14.PageInfo<MyBadgeRouteArgs> page =
      _i14.PageInfo<MyBadgeRouteArgs>(name);
}

class MyBadgeRouteArgs {
  const MyBadgeRouteArgs({
    this.key,
    required this.userBadge,
  });

  final _i15.Key? key;

  final _i16.SesameBadge userBadge;

  @override
  String toString() {
    return 'MyBadgeRouteArgs{key: $key, userBadge: $userBadge}';
  }
}

/// generated route for
/// [_i6.MySettingsScreen]
class MySettingsRoute extends _i14.PageRouteInfo<void> {
  const MySettingsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MySettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySettingsRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MySubscriptionScreen]
class MySubscriptionRoute extends _i14.PageRouteInfo<void> {
  const MySubscriptionRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MySubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySubscriptionRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MyUserProfileScreen]
class MyUserProfileRoute extends _i14.PageRouteInfo<void> {
  const MyUserProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MyUserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyUserProfileRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SesamePrivacyAndSecurityPolicy]
class SesamePrivacyAndSecurityPolicyRoute extends _i14.PageRouteInfo<void> {
  const SesamePrivacyAndSecurityPolicyRoute(
      {List<_i14.PageRouteInfo>? children})
      : super(
          SesamePrivacyAndSecurityPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'SesamePrivacyAndSecurityPolicyRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SesameProgramsCatalog]
class SesameProgramsCatalog extends _i14.PageRouteInfo<void> {
  const SesameProgramsCatalog({List<_i14.PageRouteInfo>? children})
      : super(
          SesameProgramsCatalog.name,
          initialChildren: children,
        );

  static const String name = 'SesameProgramsCatalog';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SubscriptionPaymentDetailsScreen]
class SubscriptionPaymentDetailsRoute
    extends _i14.PageRouteInfo<SubscriptionPaymentDetailsRouteArgs> {
  SubscriptionPaymentDetailsRoute({
    _i15.Key? key,
    required _i17.StudentSubscriptionRecord paymentRecord,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SubscriptionPaymentDetailsRoute.name,
          args: SubscriptionPaymentDetailsRouteArgs(
            key: key,
            paymentRecord: paymentRecord,
          ),
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentDetailsRoute';

  static const _i14.PageInfo<SubscriptionPaymentDetailsRouteArgs> page =
      _i14.PageInfo<SubscriptionPaymentDetailsRouteArgs>(name);
}

class SubscriptionPaymentDetailsRouteArgs {
  const SubscriptionPaymentDetailsRouteArgs({
    this.key,
    required this.paymentRecord,
  });

  final _i15.Key? key;

  final _i17.StudentSubscriptionRecord paymentRecord;

  @override
  String toString() {
    return 'SubscriptionPaymentDetailsRouteArgs{key: $key, paymentRecord: $paymentRecord}';
  }
}

/// generated route for
/// [_i12.SubscriptionPaymentInterface]
class SubscriptionPaymentInterfaceRoute extends _i14.PageRouteInfo<void> {
  const SubscriptionPaymentInterfaceRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SubscriptionPaymentInterfaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentInterfaceRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SubscriptionPaymentMethod]
class SubscriptionPaymentMethodRoute extends _i14.PageRouteInfo<void> {
  const SubscriptionPaymentMethodRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SubscriptionPaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentMethodRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
