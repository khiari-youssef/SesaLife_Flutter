import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'EnrollmentStep1PageStateManager.dart';

class EnrollmentStep1PageState extends State<EnrollmentStep1Page> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  EnrollmentStep1PageStateManager stateManager =
      EnrollmentStep1PageStateManager(
          const FormTextValidationState.unchecked());

  @override
  void initState() {
    super.initState();
    stateManager.stream.listen((state) {
      widget.onNextStepEnabled(state == const FormTextValidationState.valid());
    });
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
              SesameCustomTextField(
                  isRequired: true,
                  errorMessage: stateManager.state.when(
                      unchecked: () => null,
                      invalid: (type) => switch (type) {
                            FormTextInvalidStateType.required =>
                              S.of(context).form_error_message_required_field,
                            FormTextInvalidStateType.format =>
                              S.of(context).form_error_message_email_format,
                          },
                      valid: () => null),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  rightIcon: TextFieldIcon("ic_clear.svg", () {
                    emailController.text = "";
                    stateManager.checkEmailState(emailController.text);
                  }),
                  onChange: (newText) {
                    emailController.text = newText;
                    stateManager.checkEmailState(emailController.text);
                  },
                  label: S.of(context).email,
                  placeHolder: S.of(context).email),
              SizedBox(height: 24.h),
              SesameCustomTextField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  rightIcon: TextFieldIcon("ic_clear.svg", () {
                    phoneController.text = "";
                  }),
                  onChange: (newText) {
                    phoneController.text = newText;
                  },
                  label: S.of(context).phone,
                  placeHolder: S.of(context).phone),
              SizedBox(height: 24.h),
              Expanded(
                  child: Center(
                      child: BodyLarge(
                text: S.of(context).enrollment_notice_step1,
                color: Theme.of(context).colorScheme.tertiary,
                textAlign: TextAlign.center,
              )))
            ]),
      ),
    );
  }
}

class EnrollmentStep1Page extends StatefulWidget {
  final Function(bool isEnabled) onNextStepEnabled;
  const EnrollmentStep1Page({super.key, required this.onNextStepEnabled});

  @override
  State<StatefulWidget> createState() => EnrollmentStep1PageState();
}
