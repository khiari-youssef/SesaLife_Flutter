import 'package:core/core_domain/FormTextValidationState.dart';
import 'package:core/core_utils/Logger.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'EnrollmentStep2PageStateDataState.dart';
import 'EnrollmentStep2PageStateManager.dart';

class EnrollmentStep2PageState extends State<EnrollmentStep2Page> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController diplomaController = TextEditingController();
  final EnrollmentStep2PageStateStateManager stateManager =
      EnrollmentStep2PageStateStateManager(EnrollmentStep2PageStateDataState(
          firstNameState: const FormTextValidationState.unchecked(),
          selectedSexIndex: null,
          birthDateState: const FormTextValidationState.unchecked(),
          diplomaState: const FormTextValidationState.unchecked()));
  @override
  void initState() {
    super.initState();
    stateManager.stream.listen((state) {
      logger.i(state);
      widget.onNextStepEnabled(stateManager.isGlobalStateValid());
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
                      errorMessage: stateManager.state.firstNameState.when(
                          unchecked: () => null,
                          invalid: (type) => switch (type) {
                                FormTextInvalidStateType.required => S
                                    .of(context)
                                    .form_error_message_required_field,
                                FormTextInvalidStateType.format =>
                                  S.of(context).form_error_message_name_format,
                              },
                          valid: () => null),
                      isRequired: true,
                      controller: firstNameController,
                      rightIcon: TextFieldIcon("ic_clear.svg", () {
                        firstNameController.text = "";
                        stateManager
                            .updateFirstNameState(firstNameController.text);
                      }),
                      onChange: (newText) {
                        firstNameController.text = newText;
                        stateManager
                            .updateFirstNameState(firstNameController.text);
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: LabelSmall(
                        text: S.of(context).required,
                        textAlign: TextAlign.end,
                        color: Colors.red),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SesameRadioButton<int>(
                          label: S.of(context).sex_male,
                          onChecked: (groupid) {
                            stateManager.updateSelectedSexIndex(groupid);
                          },
                          id: 0,
                          groupID: stateManager.state.selectedSexIndex,
                          maxWidth: 150.w),
                      Flexible(child: SizedBox(width: 24.w)),
                      SesameRadioButton<int>(
                          label: S.of(context).sex_female,
                          onChecked: (groupid) {
                            stateManager.updateSelectedSexIndex(groupid);
                          },
                          id: 1,
                          groupID: stateManager.state.selectedSexIndex,
                          maxWidth: 150.w)
                    ],
                  ),
                  SizedBox(height: 24.h),
                  SesameCustomTextDateField(
                      isRequired: true,
                      label: S.of(context).birthdate,
                      onChange: (String value) {
                        stateManager.updateBirthdateState(value);
                      }),
                  SizedBox(height: 24.h),
                  SesameCustomTextField(
                      isRequired: true,
                      keyboardType: TextInputType.text,
                      controller: diplomaController,
                      rightIcon: TextFieldIcon("ic_clear.svg", () {
                        diplomaController.text = "";
                      }),
                      onChange: (newText) {
                        diplomaController.text = newText;
                        stateManager.updateDiplomaState(newText);
                      },
                      label: S.of(context).diploma,
                      placeHolder: S.of(context).diploma),
                ])));
  }
}

class EnrollmentStep2Page extends StatefulWidget {
  final Function(bool isEnabled) onNextStepEnabled;
  const EnrollmentStep2Page({super.key, required this.onNextStepEnabled});

  @override
  State<StatefulWidget> createState() => EnrollmentStep2PageState();
}
