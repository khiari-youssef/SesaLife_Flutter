import 'package:designsystem/components/buttons/form_step_button.dart';
import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/components/textViews/titles/FormStepTitle.dart';
import 'package:designsystem/designsystem_exports.dart';

class FormScreenTemplate extends StatefulWidget {
  final String? title;
  final Widget body;
  final String? buttonText;
  final bool isButtonEnabled;
  final VoidCallback onNextStepClicked;
  final VoidCallback onBackPressed;
  const FormScreenTemplate(
      {super.key,
      required this.body,
      this.title,
      required this.onNextStepClicked,
      this.buttonText,
      required this.onBackPressed,
      this.isButtonEnabled = true});

  @override
  State<StatefulWidget> createState() => FormScreenTemplateState();
}

class FormScreenTemplateState extends State<FormScreenTemplate> {
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
                  onTap: widget.onBackPressed,
                  child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: const Center(
                        child: CustomIcon(iconSVGname: "ic_back_arrow.svg"),
                      )),
                )
              ],
            ),
            widget.title != null
                ? Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [FormStepTitle(title: widget.title!)],
                  )
                : SizedBox(height: 24.h),
            Expanded(child: widget.body),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FormStepButton(
                    isEnabled: widget.isButtonEnabled,
                    label: widget.buttonText ?? S.of(context).next_step,
                    onClicked: widget.onNextStepClicked)
              ],
            )
          ],
        ),
      ));
}
