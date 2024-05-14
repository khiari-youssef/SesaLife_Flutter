import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep2PageState extends State<EnrollmentStep2Page> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

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
                      controller: firstNameController,
                      rightIcon: TextFieldIcon("ic_clear.svg", () {
                        firstNameController.text = "";
                      }),
                      onChange: (newText) {
                        firstNameController.text = newText;
                      },
                      label: S.of(context).firstName,
                      placeHolder: S.of(context).firstName),
                  SizedBox(height: 24.h),
                  SesameCustomTextField(
                      controller: lastNameController,
                      rightIcon: TextFieldIcon("ic_clear.svg", () {
                        lastNameController.text = "";
                      }),
                      onChange: (newText) {
                        lastNameController.text = newText;
                      },
                      label: S.of(context).lastName,
                      placeHolder: S.of(context).lastName)
                ])));
  }
}

@RoutePage(name: "EnrollmentStep2Route")
class EnrollmentStep2Page extends StatefulWidget {
  const EnrollmentStep2Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep2PageState();
}
