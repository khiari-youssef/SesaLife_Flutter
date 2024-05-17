import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameDiplomaOption.dart';

import 'DiplomaOptionsRadioGroup.dart';

class EnrollmentStep3PageState extends State<EnrollmentStep3Page> {
  final List<SesameDiplomaOption> diplomaOptions = [
    SesameDiplomaOption(id: "1", label: "Bachelor degree in Computer science"),
    SesameDiplomaOption(id: "2", label: "Bachelor degree in Business"),
    SesameDiplomaOption(
        id: "3",
        label: "Engineering degree in IT",
        hasProfessionalCareerOption: true),
    SesameDiplomaOption(
        id: "4", label: "Masters’ degree in digital marketing & data analytics")
  ];
  SesameDiplomaOption? selectedProgramOption;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    S.of(context).diploma_choice_title,
                    style: Theme.of(context)
                        .typography
                        .black
                        .headlineLarge
                        ?.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                    softWrap: true,
                  ),
                  SizedBox(height: 20.h),
                  DiplomaOptionsRadioGroup(
                      data: diplomaOptions,
                      onOptionSelected: (option) {
                        setState(() {
                          selectedProgramOption = option;
                        });
                      })
                ])));
  }
}

class EnrollmentStep3Page extends StatefulWidget {
  const EnrollmentStep3Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep3PageState();
}
