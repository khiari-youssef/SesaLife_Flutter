import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/designsystem_exports.dart';

class FormStepButton extends StatelessWidget {
  final String label;
  final bool isEnabled;
  final VoidCallback onClicked;
  const FormStepButton(
      {super.key,
      required this.label,
      required this.onClicked,
      this.isEnabled = true});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: isEnabled ? onClicked : null,
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    bottomLeft: Radius.circular(8.r)))),
            backgroundColor: MaterialStatePropertyAll(isEnabled
                ? Theme.of(context).colorScheme.secondary
                : Color.alphaBlend(const Color(0xCCF3F3F3),
                    Theme.of(context).colorScheme.secondary))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomIcon(
                  iconSVGname: "ic_next_arrow.svg", color: Colors.white),
              SizedBox(width: 12.w),
              Text(
                label,
                style: Theme.of(context)
                    .typography
                    .black
                    .labelMedium
                    ?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
