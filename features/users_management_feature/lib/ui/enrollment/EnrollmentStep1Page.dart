import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep1PageState extends State<EnrollmentStep1Page> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

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
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  rightIcon: TextFieldIcon("ic_clear.svg", () {
                    emailController.text = "";
                    widget.onNextStepEnabled(false);
                  }),
                  onChange: (newText) {
                    emailController.text = newText;
                    widget.onNextStepEnabled(
                        emailController.text.trim().isNotEmpty);
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
