import 'package:shared_dependencies/shared_dependencies.dart';

import '../navigation/UsersNavigationConfiguration.gr.dart';

@RoutePage(name: "EnrollmentRoute")
class EnrollmentScreen extends StatelessWidget {
  final VoidCallback onExitEnrollment;
  const EnrollmentScreen({super.key, required this.onExitEnrollment});

  @override
  Widget build(BuildContext context) {
    const routes = [
      EnrollmentStep1Route(),
      EnrollmentIdentifyVerificationStepRoute(),
      EnrollmentStep2Route(),
      EnrollmentStep3Route(),
      EnrollmentStep4Route(),
      EnrollmentResultRoute(),
    ];
    return AutoTabsRouter.pageView(
        routes: routes,
        physics: const NeverScrollableScrollPhysics(),
        inheritNavigatorObservers: false,
        builder: (context, child, _) {
          final tabsRouter = AutoTabsRouter.of(context);
          return PopScope(
              canPop: false,
              onPopInvoked: (canPop) {
                if (tabsRouter.activeIndex > 0) {
                  tabsRouter.setActiveIndex((tabsRouter.activeIndex - 1));
                } else {
                  AutoRouter.of(context)
                      .removeWhere((route) => route.name == "EnrollmentRoute");
                  //AutoRouter.of(context).popUntilRoot();
                }
              },
              child: basicScreenBuilder(
                  context,
                  null,
                  FormScreenTemplate(
                    body: child,
                    title: tabsRouter.current.title(context),
                    buttonText: S.of(context).next_step,
                    onNextStepClicked: () {
                      if (tabsRouter.activeIndex < routes.length - 1) {
                        tabsRouter.setActiveIndex((tabsRouter.activeIndex + 1));
                      } else {
                        AutoRouter.of(context).removeWhere(
                            (route) => route.name == "EnrollmentRoute");
                      }
                    },
                    onBackPressed: () {
                      if (tabsRouter.activeIndex > 0) {
                        tabsRouter.setActiveIndex((tabsRouter.activeIndex - 1));
                      } else {
                        AutoRouter.of(context).removeWhere(
                            (route) => route.name == "EnrollmentRoute");
                        //AutoRouter.of(context).popUntilRoot();
                      }
                    },
                  )));
        });
  }
}
