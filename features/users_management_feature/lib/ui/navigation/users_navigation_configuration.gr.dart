// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:core/core_domain/entities/SesameBadge.dart' as _i16;
import 'package:core/exports.dart' as _i17;
import 'package:shared_dependencies/shared_dependencies.dart' as _i15;
import 'package:users_management_feature/domain/entities/student_subscription_record.dart'
    as _i18;
import 'package:users_management_feature/domain/entities/subscription_payment_result.dart'
    as _i19;
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
import 'package:users_management_feature/ui/program_privacy/sesame_policy_and_terms.dart'
    as _i9;
import 'package:users_management_feature/ui/program_privacy/sesame_programs_catalog.dart'
    as _i10;
import 'package:users_management_feature/ui/subscription/screens/my_subscription_screen.dart'
    as _i7;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_interface.dart'
    as _i11;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart'
    as _i12;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_result_screen.dart'
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
    SesamePolicyAndTermsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SesamePolicyAndTermsScreen(),
      );
    },
    SesameProgramsCatalog.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SesameProgramsCatalog(),
      );
    },
    SubscriptionPaymentInterfaceRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentInterfaceRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SubscriptionPaymentInterface(
          key: args.key,
          paymentRecord: args.paymentRecord,
          paymentMethod: args.paymentMethod,
        ),
      );
    },
    SubscriptionPaymentMethodRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentMethodRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SubscriptionPaymentMethod(
          key: args.key,
          paymentRecord: args.paymentRecord,
        ),
      );
    },
    SubscriptionPaymentResultRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentResultRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SubscriptionPaymentResultScreen(
          key: args.key,
          paymentMethod: args.paymentMethod,
          paymentTransactionResult: args.paymentTransactionResult,
        ),
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
/// [_i9.SesamePolicyAndTermsScreen]
class SesamePolicyAndTermsRoute extends _i14.PageRouteInfo<void> {
  const SesamePolicyAndTermsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SesamePolicyAndTermsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SesamePolicyAndTermsRoute';

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
/// [_i11.SubscriptionPaymentInterface]
class SubscriptionPaymentInterfaceRoute
    extends _i14.PageRouteInfo<SubscriptionPaymentInterfaceRouteArgs> {
  SubscriptionPaymentInterfaceRoute({
    _i17.Key? key,
    required _i18.StudentSubscriptionRecord paymentRecord,
    required _i12.PaymentMethod paymentMethod,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SubscriptionPaymentInterfaceRoute.name,
          args: SubscriptionPaymentInterfaceRouteArgs(
            key: key,
            paymentRecord: paymentRecord,
            paymentMethod: paymentMethod,
          ),
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentInterfaceRoute';

  static const _i14.PageInfo<SubscriptionPaymentInterfaceRouteArgs> page =
      _i14.PageInfo<SubscriptionPaymentInterfaceRouteArgs>(name);
}

class SubscriptionPaymentInterfaceRouteArgs {
  const SubscriptionPaymentInterfaceRouteArgs({
    this.key,
    required this.paymentRecord,
    required this.paymentMethod,
  });

  final _i17.Key? key;

  final _i18.StudentSubscriptionRecord paymentRecord;

  final _i12.PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceRouteArgs{key: $key, paymentRecord: $paymentRecord, paymentMethod: $paymentMethod}';
  }
}

/// generated route for
/// [_i12.SubscriptionPaymentMethod]
class SubscriptionPaymentMethodRoute
    extends _i14.PageRouteInfo<SubscriptionPaymentMethodRouteArgs> {
  SubscriptionPaymentMethodRoute({
    _i15.Key? key,
    required _i18.StudentSubscriptionRecord paymentRecord,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SubscriptionPaymentMethodRoute.name,
          args: SubscriptionPaymentMethodRouteArgs(
            key: key,
            paymentRecord: paymentRecord,
          ),
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentMethodRoute';

  static const _i14.PageInfo<SubscriptionPaymentMethodRouteArgs> page =
      _i14.PageInfo<SubscriptionPaymentMethodRouteArgs>(name);
}

class SubscriptionPaymentMethodRouteArgs {
  const SubscriptionPaymentMethodRouteArgs({
    this.key,
    required this.paymentRecord,
  });

  final _i15.Key? key;

  final _i18.StudentSubscriptionRecord paymentRecord;

  @override
  String toString() {
    return 'SubscriptionPaymentMethodRouteArgs{key: $key, paymentRecord: $paymentRecord}';
  }
}

/// generated route for
/// [_i13.SubscriptionPaymentResultScreen]
class SubscriptionPaymentResultRoute
    extends _i14.PageRouteInfo<SubscriptionPaymentResultRouteArgs> {
  SubscriptionPaymentResultRoute({
    _i17.Key? key,
    required _i12.PaymentMethod paymentMethod,
    required _i19.SubscriptionPaymentResult? paymentTransactionResult,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SubscriptionPaymentResultRoute.name,
          args: SubscriptionPaymentResultRouteArgs(
            key: key,
            paymentMethod: paymentMethod,
            paymentTransactionResult: paymentTransactionResult,
          ),
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentResultRoute';

  static const _i14.PageInfo<SubscriptionPaymentResultRouteArgs> page =
      _i14.PageInfo<SubscriptionPaymentResultRouteArgs>(name);
}

class SubscriptionPaymentResultRouteArgs {
  const SubscriptionPaymentResultRouteArgs({
    this.key,
    required this.paymentMethod,
    required this.paymentTransactionResult,
  });

  final _i17.Key? key;

  final _i12.PaymentMethod paymentMethod;

  final _i19.SubscriptionPaymentResult? paymentTransactionResult;

  @override
  String toString() {
    return 'SubscriptionPaymentResultRouteArgs{key: $key, paymentMethod: $paymentMethod, paymentTransactionResult: $paymentTransactionResult}';
  }
}
