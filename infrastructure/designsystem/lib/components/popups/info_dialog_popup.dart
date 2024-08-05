import 'package:designsystem/designsystem_exports.dart';

class InfoDialogPopup extends StatelessWidget {
  final String? title;
  final String message;
  final VoidCallback onClosed;
  const InfoDialogPopup(
      {super.key, this.title, required this.message, required this.onClosed});

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
              TitleMedium(text: title ?? ""),
              SizedBox(height: 16.h),
              BodyMedium(text: message),
              SizedBox(height: 16.h),
              SesameCustomButton(
                  buttonText: S.of(context).ok, onPressed: onClosed)
            ],
          ),
        ));
  }
}
