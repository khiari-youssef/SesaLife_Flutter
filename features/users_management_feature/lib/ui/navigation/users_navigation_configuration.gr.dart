// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:core/core_domain/entities/SesameBadge.dart' as _i16;
import 'package:core/exports.dart' as _i18;
import 'package:shared_dependencies/shared_dependencies.dart' as _i15;
import 'package:users_management_feature/domain/entities/sesame_class_groups.dart'
    as _i17;
import 'package:users_management_feature/domain/entities/student_subscription_record.dart'
    as _i19;
import 'package:users_management_feature/domain/entities/subscription_payment_result.dart'
    as _i20;
import 'package:users_management_feature/domain/usecases/user_search_usecase.dart'
    as _i21;
import 'package:users_management_feature/ui/enrollment/EnrollmentScreen.dart'
    as _i1;
import 'package:users_management_feature/ui/guest_space/GuestSpace.dart' as _i2;
import 'package:users_management_feature/ui/login/LoginScreen.dart' as _i3;
import 'package:users_management_feature/ui/myprofile/MyBadgeScreen.dart'
    as _i4;
import 'package:users_management_feature/ui/myprofile/MySettingsScreen.dart'
    as _i5;
import 'package:users_management_feature/ui/myprofile/MyUserProfileScreen.dart'
    as _i7;
import 'package:users_management_feature/ui/program_privacy/sesame_policy_and_terms.dart'
    as _i9;
import 'package:users_management_feature/ui/sesameClasses/sesame_classes_screen.dart'
    as _i8;
import 'package:users_management_feature/ui/subscription/screens/my_subscription_screen.dart'
    as _i6;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_interface.dart'
    as _i10;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart'
    as _i11;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_result_screen.dart'
    as _i12;
import 'package:users_management_feature/ui/users/users_list_screen.dart'
    as _i13;

abstract class $UsersNavigationConfiguration extends _i14.RootStackRouter {
  $UsersNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    EnrollmentRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EnrollmentScreen(),
      );
    },
    GuestSpaceRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GuestSpace(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    MyBadgeRoute.name: (routeData) {
      final args = routeData.argsAs<MyBadgeRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MyBadgeScreen(
          key: args.key,
          userBadge: args.userBadge,
        ),
      );
    },
    MySettingsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MySettingsScreen(),
      );
    },
    MySubscriptionRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MySubscriptionScreen(),
      );
    },
    MyUserProfileRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MyUserProfileScreen(),
      );
    },
    SesameClassesRoute.name: (routeData) {
      final args = routeData.argsAs<SesameClassesRouteArgs>(
          orElse: () => const SesameClassesRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.SesameClassesScreen(
          key: args.key,
          initialData: args.initialData,
        ),
      );
    },
    SesamePolicyAndTermsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SesamePolicyAndTermsScreen(),
      );
    },
    SubscriptionPaymentInterfaceRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentInterfaceRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SubscriptionPaymentInterface(
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
        child: _i11.SubscriptionPaymentMethod(
          key: args.key,
          paymentRecord: args.paymentRecord,
        ),
      );
    },
    SubscriptionPaymentResultRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentResultRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SubscriptionPaymentResultScreen(
          key: args.key,
          paymentMethod: args.paymentMethod,
          paymentTransactionResult: args.paymentTransactionResult,
        ),
      );
    },
    UsersListRoute.name: (routeData) {
      final args = routeData.argsAs<UsersListRouteArgs>(
          orElse: () => const UsersListRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.UsersListScreen(
          key: args.key,
          initialData: args.initialData,
          userRoleSearchFilter: args.userRoleSearchFilter,
          title: args.title,
          classGroupID: args.classGroupID,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.EnrollmentScreen]
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
/// [_i2.GuestSpace]
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
/// [_i3.LoginScreen]
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
/// [_i4.MyBadgeScreen]
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
/// [_i5.MySettingsScreen]
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
/// [_i6.MySubscriptionScreen]
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
/// [_i7.MyUserProfileScreen]
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
/// [_i8.SesameClassesScreen]
class SesameClassesRoute extends _i14.PageRouteInfo<SesameClassesRouteArgs> {
  SesameClassesRoute({
    _i15.Key? key,
    List<_i17.SesameClassGroups>? initialData,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SesameClassesRoute.name,
          args: SesameClassesRouteArgs(
            key: key,
            initialData: initialData,
          ),
          initialChildren: children,
        );

  static const String name = 'SesameClassesRoute';

  static const _i14.PageInfo<SesameClassesRouteArgs> page =
      _i14.PageInfo<SesameClassesRouteArgs>(name);
}

class SesameClassesRouteArgs {
  const SesameClassesRouteArgs({
    this.key,
    this.initialData,
  });

  final _i15.Key? key;

  final List<_i17.SesameClassGroups>? initialData;

  @override
  String toString() {
    return 'SesameClassesRouteArgs{key: $key, initialData: $initialData}';
  }
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
/// [_i10.SubscriptionPaymentInterface]
class SubscriptionPaymentInterfaceRoute
    extends _i14.PageRouteInfo<SubscriptionPaymentInterfaceRouteArgs> {
  SubscriptionPaymentInterfaceRoute({
    _i18.Key? key,
    required _i19.StudentSubscriptionRecord paymentRecord,
    required _i11.PaymentMethod paymentMethod,
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

  final _i18.Key? key;

  final _i19.StudentSubscriptionRecord paymentRecord;

  final _i11.PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceRouteArgs{key: $key, paymentRecord: $paymentRecord, paymentMethod: $paymentMethod}';
  }
}

/// generated route for
/// [_i11.SubscriptionPaymentMethod]
class SubscriptionPaymentMethodRoute
    extends _i14.PageRouteInfo<SubscriptionPaymentMethodRouteArgs> {
  SubscriptionPaymentMethodRoute({
    _i15.Key? key,
    required _i19.StudentSubscriptionRecord paymentRecord,
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

  final _i19.StudentSubscriptionRecord paymentRecord;

  @override
  String toString() {
    return 'SubscriptionPaymentMethodRouteArgs{key: $key, paymentRecord: $paymentRecord}';
  }
}

/// generated route for
/// [_i12.SubscriptionPaymentResultScreen]
class SubscriptionPaymentResultRoute
    extends _i14.PageRouteInfo<SubscriptionPaymentResultRouteArgs> {
  SubscriptionPaymentResultRoute({
    _i18.Key? key,
    required _i11.PaymentMethod paymentMethod,
    required _i20.SubscriptionPaymentResult? paymentTransactionResult,
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

  final _i18.Key? key;

  final _i11.PaymentMethod paymentMethod;

  final _i20.SubscriptionPaymentResult? paymentTransactionResult;

  @override
  String toString() {
    return 'SubscriptionPaymentResultRouteArgs{key: $key, paymentMethod: $paymentMethod, paymentTransactionResult: $paymentTransactionResult}';
  }
}

/// generated route for
/// [_i13.UsersListScreen]
class UsersListRoute extends _i14.PageRouteInfo<UsersListRouteArgs> {
  UsersListRoute({
    _i18.Key? key,
    List<_i18.UserProfilePreview>? initialData,
    _i21.UserRoleSearchFilter userRoleSearchFilter =
        _i21.UserRoleSearchFilter.all,
    String? title,
    String? classGroupID,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          UsersListRoute.name,
          args: UsersListRouteArgs(
            key: key,
            initialData: initialData,
            userRoleSearchFilter: userRoleSearchFilter,
            title: title,
            classGroupID: classGroupID,
          ),
          initialChildren: children,
        );

  static const String name = 'UsersListRoute';

  static const _i14.PageInfo<UsersListRouteArgs> page =
      _i14.PageInfo<UsersListRouteArgs>(name);
}

class UsersListRouteArgs {
  const UsersListRouteArgs({
    this.key,
    this.initialData,
    this.userRoleSearchFilter = _i21.UserRoleSearchFilter.all,
    this.title,
    this.classGroupID,
  });

  final _i18.Key? key;

  final List<_i18.UserProfilePreview>? initialData;

  final _i21.UserRoleSearchFilter userRoleSearchFilter;

  final String? title;

  final String? classGroupID;

  @override
  String toString() {
    return 'UsersListRouteArgs{key: $key, initialData: $initialData, userRoleSearchFilter: $userRoleSearchFilter, title: $title, classGroupID: $classGroupID}';
  }
}
