import 'package:shared_dependencies/shared_dependencies.dart';

import 'UsersNavigationConfiguration.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class UsersNavigationConfiguration extends $UsersNavigationConfiguration {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/LoginRoute", page: LoginRoute.page),
        AutoRoute(
          path: "/EnrollmentRoute",
          page: EnrollmentRoute.page,
        ),
        AutoRoute(
            path: "/SesamePrivacyAndSecurityPolicyRoute",
            page: SesamePrivacyAndSecurityPolicyRoute.page),
        AutoRoute(path: "/MySettingsRoute", page: MySettingsRoute.page),
        AutoRoute(
            path: "/SubscriptionPaymentDetailsRoute",
            page: SubscriptionPaymentDetailsRoute.page,
            children: [
              AutoRoute(
                  path: "SubscriptionPaymentMethodRoute",
                  page: SubscriptionPaymentMethodRoute.page,
                  initial: true),
              AutoRoute(
                  path: "SubscriptionPaymentInterfaceRoute",
                  page: SubscriptionPaymentInterfaceRoute.page)
            ]),
        AutoRoute(path: "/MySubscriptionRoute", page: MySubscriptionRoute.page),
        AutoRoute(
            path: "/SesameProgramsCatalog", page: SesameProgramsCatalog.page),
        AutoRoute(path: "/MyBadgeRoute", page: MyBadgeRoute.page),
        AutoRoute(
            path: "/BadgeUsageGuidelineRoute",
            page: BadgeUsageGuidelineRoute.page)
      ];
}
