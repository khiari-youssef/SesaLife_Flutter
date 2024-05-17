import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/enrollment/step1/EnrollmentStep1Page.dart';

import 'EnrollmentResultPage.dart';
import 'ViewPagerCustomPage.dart';
import 'step2/EnrollmentStep2Page.dart';
import 'step3/EnrollmentStep3Page.dart';
import 'step4/EnrollmentStep4Page.dart';
import 'verificationStep/EnrollmentIdentifyVerificationStepPage.dart';

@RoutePage(name: "EnrollmentRoute")
class EnrollmentScreen extends StatefulWidget {
  const EnrollmentScreen({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentScreenState();
}

class EnrollmentScreenState extends State<EnrollmentScreen> {
  bool isButtonEnabled = false;
  late int currentPageIndex;
  final pageController =
      PageController(initialPage: 0, viewportFraction: 1.0, keepPage: true);

  @override
  void initState() {
    super.initState();
    currentPageIndex = pageController.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    onNextStepEnabled(isEnabled) {
      setState(() {
        isButtonEnabled = isEnabled;
      });
    }

    List<ViewPagerCustomPage> pages = [
      ViewPagerCustomPage(
          title: S.of(context).my_personal_details,
          content: EnrollmentStep1Page(onNextStepEnabled: onNextStepEnabled)),
      ViewPagerCustomPage(
          title: S.of(context).identity_verification,
          content: EnrollmentIdentifyVerificationStep(
              onNextStepEnabled: onNextStepEnabled)),
      ViewPagerCustomPage(
          title: S.of(context).my_personal_details,
          content: EnrollmentStep2Page(onNextStepEnabled: onNextStepEnabled)),
      ViewPagerCustomPage(
          title: S.of(context).program_selection,
          content: EnrollmentStep3Page(onNextStepEnabled: onNextStepEnabled)),
      ViewPagerCustomPage(
          content: EnrollmentStep4Page(onNextStepEnabled: onNextStepEnabled)),
      ViewPagerCustomPage(title: "", content: const EnrollmentResultPage())
    ];
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
        child: FormScreenTemplate(
          body: PageView.builder(
              itemCount: pages.length,
              padEnds: false,
              pageSnapping: false,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return basicScreenBuilder(
                    context, null, pages[currentPageIndex].content);
              }),
          title: pages[currentPageIndex].title,
          buttonText: S.of(context).next_step,
          isButtonEnabled: isButtonEnabled,
          onNextStepClicked: () {
            if (currentPageIndex < pages.length - 1) {
              pageController.animateToPage((currentPageIndex + 1),
                  curve: Curves.linear,
                  duration: const Duration(milliseconds: 300));
            } else {
              AutoRouter.of(context)
                  .removeWhere((route) => route.name == "EnrollmentRoute");
            }
          },
          onBackPressed: () {
            if (currentPageIndex > 0) {
              pageController.animateToPage((currentPageIndex - 1),
                  curve: Curves.linear,
                  duration: const Duration(milliseconds: 300));
            } else {
              AutoRouter.of(context)
                  .removeWhere((route) => route.name == "EnrollmentRoute");
            }
          },
        ));
  }
}

class EnrollmentIdentifyVerificationStepPage {
  const EnrollmentIdentifyVerificationStepPage();
}
