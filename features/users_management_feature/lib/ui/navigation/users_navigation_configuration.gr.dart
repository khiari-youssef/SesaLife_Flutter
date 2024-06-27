// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:core/core_domain/entities/SesameBadge.dart' as _i18;
import 'package:core/exports.dart' as _i19;
import 'package:shared_dependencies/shared_dependencies.dart' as _i17;
import 'package:users_management_feature/domain/entities/student_subscription_record.dart'
    as _i20;
import 'package:users_management_feature/domain/entities/subscription_payment_result.dart'
    as _i21;
import 'package:users_management_feature/domain/usecases/user_search_usecase.dart'
    as _i22;
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
    as _i10;
import 'package:users_management_feature/ui/program_privacy/sesame_programs_catalog.dart'
    as _i11;
import 'package:users_management_feature/ui/sesameClasses/sesame_classes_screen.dart'
    as _i9;
import 'package:users_management_feature/ui/subscription/screens/my_subscription_screen.dart'
    as _i7;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_interface.dart'
    as _i12;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart'
    as _i13;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_result_screen.dart'
    as _i14;
import 'package:users_management_feature/ui/users/users_list_screen.dart'
    as _i15;

abstract class $UsersNavigationConfiguration extends _i16.RootStackRouter {
  $UsersNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    BadgeUsageGuidelineRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BadgeUsageGuidelineScreen(),
      );
    },
    EnrollmentRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnrollmentScreen(),
      );
    },
    GuestSpaceRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.GuestSpace(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    MyBadgeRoute.name: (routeData) {
      final args = routeData.argsAs<MyBadgeRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.MyBadgeScreen(
          key: args.key,
          userBadge: args.userBadge,
        ),
      );
    },
    MySettingsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MySettingsScreen(),
      );
    },
    MySubscriptionRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MySubscriptionScreen(),
      );
    },
    MyUserProfileRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MyUserProfileScreen(),
      );
    },
    SesameClassesRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SesameClassesScreen(),
      );
    },
    SesamePolicyAndTermsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SesamePolicyAndTermsScreen(),
      );
    },
    SesameProgramsCatalog.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SesameProgramsCatalog(),
      );
    },
    SubscriptionPaymentInterfaceRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentInterfaceRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SubscriptionPaymentInterface(
          key: args.key,
          paymentRecord: args.paymentRecord,
          paymentMethod: args.paymentMethod,
        ),
      );
    },
    SubscriptionPaymentMethodRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentMethodRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SubscriptionPaymentMethod(
          key: args.key,
          paymentRecord: args.paymentRecord,
        ),
      );
    },
    SubscriptionPaymentResultRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentResultRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.SubscriptionPaymentResultScreen(
          key: args.key,
          paymentMethod: args.paymentMethod,
          paymentTransactionResult: args.paymentTransactionResult,
        ),
      );
    },
    UsersListRoute.name: (routeData) {
      final args = routeData.argsAs<UsersListRouteArgs>(
          orElse: () => const UsersListRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.UsersListScreen(
          key: args.key,
          initialData: args.initialData,
          userRoleSearchFilter: args.userRoleSearchFilter,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.BadgeUsageGuidelineScreen]
class BadgeUsageGuidelineRoute extends _i16.PageRouteInfo<void> {
  const BadgeUsageGuidelineRoute({List<_i16.PageRouteInfo>? children})
      : super(
          BadgeUsageGuidelineRoute.name,
          initialChildren: children,
        );

  static const String name = 'BadgeUsageGuidelineRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnrollmentScreen]
class EnrollmentRoute extends _i16.PageRouteInfo<void> {
  const EnrollmentRoute({List<_i16.PageRouteInfo>? children})
      : super(
          EnrollmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GuestSpace]
class GuestSpaceRoute extends _i16.PageRouteInfo<void> {
  const GuestSpaceRoute({List<_i16.PageRouteInfo>? children})
      : super(
          GuestSpaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestSpaceRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MyBadgeScreen]
class MyBadgeRoute extends _i16.PageRouteInfo<MyBadgeRouteArgs> {
  MyBadgeRoute({
    _i17.Key? key,
    required _i18.SesameBadge userBadge,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          MyBadgeRoute.name,
          args: MyBadgeRouteArgs(
            key: key,
            userBadge: userBadge,
          ),
          initialChildren: children,
        );

  static const String name = 'MyBadgeRoute';

  static const _i16.PageInfo<MyBadgeRouteArgs> page =
      _i16.PageInfo<MyBadgeRouteArgs>(name);
}

class MyBadgeRouteArgs {
  const MyBadgeRouteArgs({
    this.key,
    required this.userBadge,
  });

  final _i17.Key? key;

  final _i18.SesameBadge userBadge;

  @override
  String toString() {
    return 'MyBadgeRouteArgs{key: $key, userBadge: $userBadge}';
  }
}

/// generated route for
/// [_i6.MySettingsScreen]
class MySettingsRoute extends _i16.PageRouteInfo<void> {
  const MySettingsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MySettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySettingsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MySubscriptionScreen]
class MySubscriptionRoute extends _i16.PageRouteInfo<void> {
  const MySubscriptionRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MySubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySubscriptionRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MyUserProfileScreen]
class MyUserProfileRoute extends _i16.PageRouteInfo<void> {
  const MyUserProfileRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MyUserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyUserProfileRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SesameClassesScreen]
class SesameClassesRoute extends _i16.PageRouteInfo<void> {
  const SesameClassesRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SesameClassesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SesameClassesRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SesamePolicyAndTermsScreen]
class SesamePolicyAndTermsRoute extends _i16.PageRouteInfo<void> {
  const SesamePolicyAndTermsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SesamePolicyAndTermsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SesamePolicyAndTermsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SesameProgramsCatalog]
class SesameProgramsCatalog extends _i16.PageRouteInfo<void> {
  const SesameProgramsCatalog({List<_i16.PageRouteInfo>? children})
      : super(
          SesameProgramsCatalog.name,
          initialChildren: children,
        );

  static const String name = 'SesameProgramsCatalog';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SubscriptionPaymentInterface]
class SubscriptionPaymentInterfaceRoute
    extends _i16.PageRouteInfo<SubscriptionPaymentInterfaceRouteArgs> {
  SubscriptionPaymentInterfaceRoute({
    _i19.Key? key,
    required _i20.StudentSubscriptionRecord paymentRecord,
    required _i13.PaymentMethod paymentMethod,
    List<_i16.PageRouteInfo>? children,
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

  static const _i16.PageInfo<SubscriptionPaymentInterfaceRouteArgs> page =
      _i16.PageInfo<SubscriptionPaymentInterfaceRouteArgs>(name);
}

class SubscriptionPaymentInterfaceRouteArgs {
  const SubscriptionPaymentInterfaceRouteArgs({
    this.key,
    required this.paymentRecord,
    required this.paymentMethod,
  });

  final _i19.Key? key;

  final _i20.StudentSubscriptionRecord paymentRecord;

  final _i13.PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceRouteArgs{key: $key, paymentRecord: $paymentRecord, paymentMethod: $paymentMethod}';
  }
}

/// generated route for
/// [_i13.SubscriptionPaymentMethod]
class SubscriptionPaymentMethodRoute
    extends _i16.PageRouteInfo<SubscriptionPaymentMethodRouteArgs> {
  SubscriptionPaymentMethodRoute({
    _i17.Key? key,
    required _i20.StudentSubscriptionRecord paymentRecord,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SubscriptionPaymentMethodRoute.name,
          args: SubscriptionPaymentMethodRouteArgs(
            key: key,
            paymentRecord: paymentRecord,
          ),
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentMethodRoute';

  static const _i16.PageInfo<SubscriptionPaymentMethodRouteArgs> page =
      _i16.PageInfo<SubscriptionPaymentMethodRouteArgs>(name);
}

class SubscriptionPaymentMethodRouteArgs {
  const SubscriptionPaymentMethodRouteArgs({
    this.key,
    required this.paymentRecord,
  });

  final _i17.Key? key;

  final _i20.StudentSubscriptionRecord paymentRecord;

  @override
  String toString() {
    return 'SubscriptionPaymentMethodRouteArgs{key: $key, paymentRecord: $paymentRecord}';
  }
}

/// generated route for
/// [_i14.SubscriptionPaymentResultScreen]
class SubscriptionPaymentResultRoute
    extends _i16.PageRouteInfo<SubscriptionPaymentResultRouteArgs> {
  SubscriptionPaymentResultRoute({
    _i19.Key? key,
    required _i13.PaymentMethod paymentMethod,
    required _i21.SubscriptionPaymentResult? paymentTransactionResult,
    List<_i16.PageRouteInfo>? children,
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

  static const _i16.PageInfo<SubscriptionPaymentResultRouteArgs> page =
      _i16.PageInfo<SubscriptionPaymentResultRouteArgs>(name);
}

class SubscriptionPaymentResultRouteArgs {
  const SubscriptionPaymentResultRouteArgs({
    this.key,
    required this.paymentMethod,
    required this.paymentTransactionResult,
  });

  final _i19.Key? key;

  final _i13.PaymentMethod paymentMethod;

  final _i21.SubscriptionPaymentResult? paymentTransactionResult;

  @override
  String toString() {
    return 'SubscriptionPaymentResultRouteArgs{key: $key, paymentMethod: $paymentMethod, paymentTransactionResult: $paymentTransactionResult}';
  }
}

/// generated route for
/// [_i15.UsersListScreen]
class UsersListRoute extends _i16.PageRouteInfo<UsersListRouteArgs> {
  UsersListRoute({
    _i19.Key? key,
    List<_i19.UserProfilePreview>? initialData,
    _i22.UserRoleSearchFilter userRoleSearchFilter =
        _i22.UserRoleSearchFilter.all,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          UsersListRoute.name,
          args: UsersListRouteArgs(
            key: key,
            initialData: initialData,
            userRoleSearchFilter: userRoleSearchFilter,
          ),
          initialChildren: children,
        );

  static const String name = 'UsersListRoute';

  static const _i16.PageInfo<UsersListRouteArgs> page =
      _i16.PageInfo<UsersListRouteArgs>(name);
}

class UsersListRouteArgs {
  const UsersListRouteArgs({
    this.key,
    this.initialData,
    this.userRoleSearchFilter = _i22.UserRoleSearchFilter.all,
  });

  final _i19.Key? key;

  final List<_i19.UserProfilePreview>? initialData;

  final _i22.UserRoleSearchFilter userRoleSearchFilter;

  @override
  String toString() {
    return 'UsersListRouteArgs{key: $key, initialData: $initialData, userRoleSearchFilter: $userRoleSearchFilter}';
  }
}
