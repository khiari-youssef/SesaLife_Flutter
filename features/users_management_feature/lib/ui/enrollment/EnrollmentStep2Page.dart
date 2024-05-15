import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep2PageState extends State<EnrollmentStep2Page> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController diplomaController = TextEditingController();
  int? selectedSexButton;

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
                      placeHolder: S.of(context).lastName),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SesameRadioButton(
                          label: S.of(context).sex_male,
                          onChecked: (groupid) {
                            setState(() {
                              selectedSexButton = groupid;
                            });
                          },
                          id: 0,
                          groupID: selectedSexButton),
                      SizedBox(width: 24.w),
                      SesameRadioButton(
                          label: S.of(context).sex_female,
                          onChecked: (groupid) {
                            setState(() {
                              selectedSexButton = groupid;
                            });
                          },
                          id: 1,
                          groupID: selectedSexButton)
                    ],
                  ),
                  SizedBox(height: 24.h),
                  SesameCheckbox(onChecked: (onChecked) {}, label: "Testbox"),
                  SesameCustomTextField(
                      keyboardType: TextInputType.datetime,
                      controller: diplomaController,
                      rightIcon: TextFieldIcon("ic_clear.svg", () {
                        diplomaController.text = "";
                      }),
                      onChange: (newText) {
                        diplomaController.text = newText;
                      },
                      label: S.of(context).diploma,
                      placeHolder: S.of(context).diploma),
                ])));
  }
}

@RoutePage(name: "EnrollmentStep2Route")
class EnrollmentStep2Page extends StatefulWidget {
  const EnrollmentStep2Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep2PageState();
}
