import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentIdentifyVerificationStepPageState
    extends State<EnrollmentIdentifyVerificationStep> {
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
                  const CodeInputField(),
                  SizedBox(height: 24.h),
                  Expanded(
                      child: Center(
                          child: BodyLarge(
                    text: S
                        .of(context)
                        .enrollment_code_verification_notice("email@email.com"),
                    color: Theme.of(context).colorScheme.tertiary,
                    textAlign: TextAlign.center,
                  )))
                ])));
  }
}

class EnrollmentIdentifyVerificationStep extends StatefulWidget {
  const EnrollmentIdentifyVerificationStep({super.key});

  @override
  State<StatefulWidget> createState() =>
      EnrollmentIdentifyVerificationStepPageState();
}
