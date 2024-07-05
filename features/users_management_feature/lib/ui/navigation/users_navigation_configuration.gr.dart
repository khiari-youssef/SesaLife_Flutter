// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:core/core_domain/entities/sesame_badge.dart' as _i17;
import 'package:core/exports.dart' as _i19;
import 'package:shared_dependencies/shared_dependencies.dart' as _i16;
import 'package:users_management_feature/domain/entities/sesame_class_groups.dart'
    as _i18;
import 'package:users_management_feature/domain/entities/student_subscription_record.dart'
    as _i20;
import 'package:users_management_feature/domain/entities/subscription_payment_result.dart'
    as _i21;
import 'package:users_management_feature/domain/usecases/user_search_usecase.dart'
    as _i22;
import 'package:users_management_feature/ui/enrollment/EnrollmentScreen.dart'
    as _i2;
import 'package:users_management_feature/ui/guest_space/GuestSpace.dart' as _i3;
import 'package:users_management_feature/ui/login/auto_login_loading_screen.dart'
    as _i1;
import 'package:users_management_feature/ui/login/login_screen.dart' as _i4;
import 'package:users_management_feature/ui/myprofile/my_badge_screen.dart'
    as _i5;
import 'package:users_management_feature/ui/myprofile/my_settings_screen.dart'
    as _i6;
import 'package:users_management_feature/ui/myprofile/my_user_profile_screen.dart'
    as _i8;
import 'package:users_management_feature/ui/program_privacy/sesame_policy_and_terms.dart'
    as _i10;
import 'package:users_management_feature/ui/sesameClasses/sesame_classes_screen.dart'
    as _i9;
import 'package:users_management_feature/ui/subscription/screens/my_subscription_screen.dart'
    as _i7;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_interface.dart'
    as _i11;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart'
    as _i12;
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_result_screen.dart'
    as _i13;
import 'package:users_management_feature/ui/users/users_list_screen.dart'
    as _i14;

abstract class $UsersNavigationConfiguration extends _i15.RootStackRouter {
  $UsersNavigationConfiguration({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AutoLoginLoadingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AutoLoginLoadingScreen(),
      );
    },
    EnrollmentRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnrollmentScreen(),
      );
    },
    GuestSpaceRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.GuestSpace(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    MyBadgeRoute.name: (routeData) {
      final args = routeData.argsAs<MyBadgeRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.MyBadgeScreen(
          key: args.key,
          userBadge: args.userBadge,
        ),
      );
    },
    MySettingsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MySettingsScreen(),
      );
    },
    MySubscriptionRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MySubscriptionScreen(),
      );
    },
    MyUserProfileRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MyUserProfileScreen(),
      );
    },
    SesameClassesRoute.name: (routeData) {
      final args = routeData.argsAs<SesameClassesRouteArgs>(
          orElse: () => const SesameClassesRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SesameClassesScreen(
          key: args.key,
          initialData: args.initialData,
        ),
      );
    },
    SesamePolicyAndTermsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SesamePolicyAndTermsRouteArgs>(
          orElse: () => SesamePolicyAndTermsRouteArgs(
              doctype: pathParams.getString('doctype')));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SesamePolicyAndTermsScreen(
          key: args.key,
          doctype: args.doctype,
        ),
      );
    },
    SubscriptionPaymentInterfaceRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentInterfaceRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
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
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SubscriptionPaymentMethod(
          key: args.key,
          paymentRecord: args.paymentRecord,
        ),
      );
    },
    SubscriptionPaymentResultRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPaymentResultRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SubscriptionPaymentResultScreen(
          key: args.key,
          paymentMethod: args.paymentMethod,
          paymentTransactionResult: args.paymentTransactionResult,
        ),
      );
    },
    UsersListRoute.name: (routeData) {
      final args = routeData.argsAs<UsersListRouteArgs>(
          orElse: () => const UsersListRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.UsersListScreen(
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
/// [_i1.AutoLoginLoadingScreen]
class AutoLoginLoadingRoute extends _i15.PageRouteInfo<void> {
  const AutoLoginLoadingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AutoLoginLoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AutoLoginLoadingRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnrollmentScreen]
class EnrollmentRoute extends _i15.PageRouteInfo<void> {
  const EnrollmentRoute({List<_i15.PageRouteInfo>? children})
      : super(
          EnrollmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GuestSpace]
class GuestSpaceRoute extends _i15.PageRouteInfo<void> {
  const GuestSpaceRoute({List<_i15.PageRouteInfo>? children})
      : super(
          GuestSpaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestSpaceRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MyBadgeScreen]
class MyBadgeRoute extends _i15.PageRouteInfo<MyBadgeRouteArgs> {
  MyBadgeRoute({
    _i16.Key? key,
    required _i17.SesameBadge userBadge,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MyBadgeRoute.name,
          args: MyBadgeRouteArgs(
            key: key,
            userBadge: userBadge,
          ),
          initialChildren: children,
        );

  static const String name = 'MyBadgeRoute';

  static const _i15.PageInfo<MyBadgeRouteArgs> page =
      _i15.PageInfo<MyBadgeRouteArgs>(name);
}

class MyBadgeRouteArgs {
  const MyBadgeRouteArgs({
    this.key,
    required this.userBadge,
  });

  final _i16.Key? key;

  final _i17.SesameBadge userBadge;

  @override
  String toString() {
    return 'MyBadgeRouteArgs{key: $key, userBadge: $userBadge}';
  }
}

/// generated route for
/// [_i6.MySettingsScreen]
class MySettingsRoute extends _i15.PageRouteInfo<void> {
  const MySettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MySettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySettingsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MySubscriptionScreen]
class MySubscriptionRoute extends _i15.PageRouteInfo<void> {
  const MySubscriptionRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MySubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySubscriptionRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MyUserProfileScreen]
class MyUserProfileRoute extends _i15.PageRouteInfo<void> {
  const MyUserProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MyUserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyUserProfileRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SesameClassesScreen]
class SesameClassesRoute extends _i15.PageRouteInfo<SesameClassesRouteArgs> {
  SesameClassesRoute({
    _i16.Key? key,
    List<_i18.SesameClassGroups>? initialData,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SesameClassesRoute.name,
          args: SesameClassesRouteArgs(
            key: key,
            initialData: initialData,
          ),
          initialChildren: children,
        );

  static const String name = 'SesameClassesRoute';

  static const _i15.PageInfo<SesameClassesRouteArgs> page =
      _i15.PageInfo<SesameClassesRouteArgs>(name);
}

class SesameClassesRouteArgs {
  const SesameClassesRouteArgs({
    this.key,
    this.initialData,
  });

  final _i16.Key? key;

  final List<_i18.SesameClassGroups>? initialData;

  @override
  String toString() {
    return 'SesameClassesRouteArgs{key: $key, initialData: $initialData}';
  }
}

/// generated route for
/// [_i10.SesamePolicyAndTermsScreen]
class SesamePolicyAndTermsRoute
    extends _i15.PageRouteInfo<SesamePolicyAndTermsRouteArgs> {
  SesamePolicyAndTermsRoute({
    _i19.Key? key,
    required String doctype,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SesamePolicyAndTermsRoute.name,
          args: SesamePolicyAndTermsRouteArgs(
            key: key,
            doctype: doctype,
          ),
          rawPathParams: {'doctype': doctype},
          initialChildren: children,
        );

  static const String name = 'SesamePolicyAndTermsRoute';

  static const _i15.PageInfo<SesamePolicyAndTermsRouteArgs> page =
      _i15.PageInfo<SesamePolicyAndTermsRouteArgs>(name);
}

class SesamePolicyAndTermsRouteArgs {
  const SesamePolicyAndTermsRouteArgs({
    this.key,
    required this.doctype,
  });

  final _i19.Key? key;

  final String doctype;

  @override
  String toString() {
    return 'SesamePolicyAndTermsRouteArgs{key: $key, doctype: $doctype}';
  }
}

/// generated route for
/// [_i11.SubscriptionPaymentInterface]
class SubscriptionPaymentInterfaceRoute
    extends _i15.PageRouteInfo<SubscriptionPaymentInterfaceRouteArgs> {
  SubscriptionPaymentInterfaceRoute({
    _i19.Key? key,
    required _i20.StudentSubscriptionRecord paymentRecord,
    required _i12.PaymentMethod paymentMethod,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<SubscriptionPaymentInterfaceRouteArgs> page =
      _i15.PageInfo<SubscriptionPaymentInterfaceRouteArgs>(name);
}

class SubscriptionPaymentInterfaceRouteArgs {
  const SubscriptionPaymentInterfaceRouteArgs({
    this.key,
    required this.paymentRecord,
    required this.paymentMethod,
  });

  final _i19.Key? key;

  final _i20.StudentSubscriptionRecord paymentRecord;

  final _i12.PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceRouteArgs{key: $key, paymentRecord: $paymentRecord, paymentMethod: $paymentMethod}';
  }
}

/// generated route for
/// [_i12.SubscriptionPaymentMethod]
class SubscriptionPaymentMethodRoute
    extends _i15.PageRouteInfo<SubscriptionPaymentMethodRouteArgs> {
  SubscriptionPaymentMethodRoute({
    _i16.Key? key,
    required _i20.StudentSubscriptionRecord paymentRecord,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SubscriptionPaymentMethodRoute.name,
          args: SubscriptionPaymentMethodRouteArgs(
            key: key,
            paymentRecord: paymentRecord,
          ),
          initialChildren: children,
        );

  static const String name = 'SubscriptionPaymentMethodRoute';

  static const _i15.PageInfo<SubscriptionPaymentMethodRouteArgs> page =
      _i15.PageInfo<SubscriptionPaymentMethodRouteArgs>(name);
}

class SubscriptionPaymentMethodRouteArgs {
  const SubscriptionPaymentMethodRouteArgs({
    this.key,
    required this.paymentRecord,
  });

  final _i16.Key? key;

  final _i20.StudentSubscriptionRecord paymentRecord;

  @override
  String toString() {
    return 'SubscriptionPaymentMethodRouteArgs{key: $key, paymentRecord: $paymentRecord}';
  }
}

/// generated route for
/// [_i13.SubscriptionPaymentResultScreen]
class SubscriptionPaymentResultRoute
    extends _i15.PageRouteInfo<SubscriptionPaymentResultRouteArgs> {
  SubscriptionPaymentResultRoute({
    _i19.Key? key,
    required _i12.PaymentMethod paymentMethod,
    required _i21.SubscriptionPaymentResult? paymentTransactionResult,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<SubscriptionPaymentResultRouteArgs> page =
      _i15.PageInfo<SubscriptionPaymentResultRouteArgs>(name);
}

class SubscriptionPaymentResultRouteArgs {
  const SubscriptionPaymentResultRouteArgs({
    this.key,
    required this.paymentMethod,
    required this.paymentTransactionResult,
  });

  final _i19.Key? key;

  final _i12.PaymentMethod paymentMethod;

  final _i21.SubscriptionPaymentResult? paymentTransactionResult;

  @override
  String toString() {
    return 'SubscriptionPaymentResultRouteArgs{key: $key, paymentMethod: $paymentMethod, paymentTransactionResult: $paymentTransactionResult}';
  }
}

/// generated route for
/// [_i14.UsersListScreen]
class UsersListRoute extends _i15.PageRouteInfo<UsersListRouteArgs> {
  UsersListRoute({
    _i19.Key? key,
    List<_i19.UserProfilePreview>? initialData,
    _i22.UserRoleSearchFilter userRoleSearchFilter =
        _i22.UserRoleSearchFilter.all,
    String? title,
    String? classGroupID,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<UsersListRouteArgs> page =
      _i15.PageInfo<UsersListRouteArgs>(name);
}

class UsersListRouteArgs {
  const UsersListRouteArgs({
    this.key,
    this.initialData,
    this.userRoleSearchFilter = _i22.UserRoleSearchFilter.all,
    this.title,
    this.classGroupID,
  });

  final _i19.Key? key;

  final List<_i19.UserProfilePreview>? initialData;

  final _i22.UserRoleSearchFilter userRoleSearchFilter;

  final String? title;

  final String? classGroupID;

  @override
  String toString() {
    return 'UsersListRouteArgs{key: $key, initialData: $initialData, userRoleSearchFilter: $userRoleSearchFilter, title: $title, classGroupID: $classGroupID}';
  }
}
