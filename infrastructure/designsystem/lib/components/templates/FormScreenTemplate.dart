import 'package:designsystem/components/buttons/FormStepButton.dart';
import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/components/textViews/titles/FormStepTitle.dart';
import 'package:designsystem/designsystem_exports.dart';

class FormScreenTemplate extends StatelessWidget {
  final String? title;
  final Widget body;
  final String? buttonText;
  final VoidCallback onNextStepClicked;
  final VoidCallback onBackPressed;
  const FormScreenTemplate(
      {super.key,
      required this.body,
      this.title,
      required this.onNextStepClicked,
      this.buttonText,
      required this.onBackPressed});

  @override
  Widget build(BuildContext context) => basicScreenBuilder(
      context,
      null,
      Padding(
        padding: EdgeInsets.only(bottom: 20.h, top: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onBackPressed,
                  child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: const Center(
                        child: CustomIcon(iconSVGname: "ic_back_arrow.svg"),
                      )),
                )
              ],
            ),
            title != null
                ? Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [FormStepTitle(title: title!)],
                  )
                : SizedBox(height: 24.h),
            Expanded(child: body),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FormStepButton(
                    label: buttonText ?? S.of(context).next_step,
                    onClicked: onNextStepClicked)
              ],
            )
          ],
        ),
      ));
}
