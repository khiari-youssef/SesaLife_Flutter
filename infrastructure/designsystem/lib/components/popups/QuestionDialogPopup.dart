import 'package:designsystem/designsystem_exports.dart';

class QuestionDialogPopup extends StatelessWidget {
  final String? title;
  final String message;
  final String leftButtonText;
  final String rightButtonText;
  final VoidCallback onLeftButtonPressed;
  final VoidCallback onRightButtonPressed;
  const QuestionDialogPopup(
      {super.key,
      this.title,
      required this.message,
      required this.onLeftButtonPressed,
      required this.onRightButtonPressed,
      required this.leftButtonText,
      required this.rightButtonText});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "title",
                style: Theme.of(context).typography.black.displayMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Text(
                "message",
                style: Theme.of(context).typography.black.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SesameCustomButton(
                    buttonText: S.of(context).yes,
                    onPressed: onLeftButtonPressed,
                    variant: SesameButtonVariant.hard,
                  ),
                  SizedBox(width: 12.w),
                  SesameCustomButton(
                    buttonText: S.of(context).no,
                    onPressed: onRightButtonPressed,
                    variant: SesameButtonVariant.tertiary,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
