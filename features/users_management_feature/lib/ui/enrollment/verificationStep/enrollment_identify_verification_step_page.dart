import 'package:shared_dependencies/shared_dependencies.dart';

import 'enrollment_identify_verification_step_page_state_manager.dart';

class EnrollmentIdentifyVerificationStepPageState
    extends State<EnrollmentIdentifyVerificationStep> {
  EnrollmentIdentifyVerificationStepPageStateManager stateManager =
      EnrollmentIdentifyVerificationStepPageStateManager(false);

  @override
  void initState() {
    super.initState();
    stateManager.refreshVerificationCode();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CodeInputField(
                    onCompleted: (code) {
                      stateManager.checkVerificationCode(code);
                    },
                  ),
                  SizedBox(height: 24.h),
                  BodyLarge(
                      text: S.of(context).enrollment_code_verification_notice(
                          "email@email.com"),
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color(0xFFE6E6E6)
                          : const Color(0xFFA4A4A4),
                      textAlign: TextAlign.center)
                ])));
  }
}

class EnrollmentIdentifyVerificationStep extends StatefulWidget {
  final Function(bool isEnabled) onNextStepEnabled;
  const EnrollmentIdentifyVerificationStep(
      {super.key, required this.onNextStepEnabled});

  @override
  State<StatefulWidget> createState() =>
      EnrollmentIdentifyVerificationStepPageState();
}
