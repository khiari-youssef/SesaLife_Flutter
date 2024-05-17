import 'package:core/core_utils/Logger.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/enrollment/step1/EnrollmentStep1Page.dart';

import '../navigation/UsersNavigationConfiguration.gr.dart';
import 'verificationStep/EnrollmentIdentifyVerificationStepPage.dart';
import 'EnrollmentResultPage.dart';
import 'step2/EnrollmentStep2Page.dart';
import 'EnrollmentStep3Page.dart';
import 'EnrollmentStep4Page.dart';

@RoutePage(name: "EnrollmentRoute")
class EnrollmentScreen extends StatefulWidget {
  const EnrollmentScreen({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentScreenState();
}

class EnrollmentScreenState extends State<EnrollmentScreen> {
  bool isButtonEnabled = false;
  late int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      EnrollmentStep1Page(onNextStepEnabled: (isEnabled) {
        setState(() {
          isButtonEnabled = isEnabled;
        });
      }),
      const EnrollmentIdentifyVerificationStep(),
      EnrollmentStep2Page(onNextStepEnabled: (isEnabled) {
        setState(() {
          isButtonEnabled = isEnabled;
        });
      }),
      const EnrollmentStep3Page(),
      const EnrollmentStep4Page(),
      const EnrollmentResultPage(
          state: EnrollmentResultState.errorRequestRejected),
    ];
    final pageController =
        PageController(initialPage: 0, viewportFraction: 1.0, keepPage: true);
    return PopScope(
        canPop: false,
        onPopInvoked: (canPop) {
          if (currentPageIndex > 0) {
            pageController.animateToPage((currentPageIndex - 1),
                curve: Curves.linear,
                duration: const Duration(milliseconds: 300));
          } else {
            AutoRouter.of(context)
                .removeWhere((route) => route.name == "EnrollmentRoute");
          }
        },
        child: PageView.builder(
            itemCount: pages.length,
            padEnds: false,
            pageSnapping: false,
            onPageChanged: (index) {
              currentPageIndex = index;
            },
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              currentPageIndex = index;
              return basicScreenBuilder(
                  context,
                  null,
                  FormScreenTemplate(
                    body: pages[index],
                    title: "title",
                    buttonText: S.of(context).next_step,
                    isButtonEnabled: isButtonEnabled,
                    onNextStepClicked: () {
                      if (index < pages.length - 1) {
                        pageController.animateToPage((index + 1),
                            curve: Curves.linear,
                            duration: const Duration(milliseconds: 300));
                      } else {
                        AutoRouter.of(context).removeWhere(
                            (route) => route.name == "EnrollmentRoute");
                      }
                    },
                    onBackPressed: () {
                      if (currentPageIndex > 0) {
                        pageController.animateToPage((currentPageIndex - 1),
                            curve: Curves.linear,
                            duration: const Duration(milliseconds: 300));
                      } else {
                        AutoRouter.of(context).removeWhere(
                            (route) => route.name == "EnrollmentRoute");
                      }
                    },
                  ));
            }));
  }
}

class EnrollmentIdentifyVerificationStepPage {
  const EnrollmentIdentifyVerificationStepPage();
}
