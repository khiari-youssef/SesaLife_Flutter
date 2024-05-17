import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep4PageState extends State<EnrollmentStep4Page> {
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      S.of(context).work_opportunity_suggestion_title,
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
                  ),
                  SizedBox(height: 20.h),
                  BodyMedium(
                      text:
                          S.of(context).work_opportunity_suggestion_description,
                      softWrap: true),
                  SizedBox(height: 20.h),
                  SesameRadioButton<bool>(
                      maxWidth: 150.w,
                      onChecked: (groupID) {
                        setState(() {
                          isAccepted = groupID ?? false;
                        });
                      },
                      id: true,
                      groupID: isAccepted,
                      label:
                          S.of(context).work_opportunity_suggestion_accepted),
                  SizedBox(height: 16.h),
                  SesameRadioButton<bool>(
                      maxWidth: 150.w,
                      onChecked: (groupID) {
                        setState(() {
                          isAccepted = groupID ?? false;
                        });
                      },
                      id: false,
                      groupID: isAccepted,
                      label: S.of(context).work_opportunity_suggestion_rejected)
                ])));
  }
}

class EnrollmentStep4Page extends StatefulWidget {
  const EnrollmentStep4Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep4PageState();
}
