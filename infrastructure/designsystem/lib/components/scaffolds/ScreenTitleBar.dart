import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/designsystem_exports.dart';

class ScreenTitleBar extends StatelessWidget {
  final String title;
  final VoidCallback onBackPressed;
  const ScreenTitleBar(
      {super.key, required this.title, required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onBackPressed,
              child: const CustomIcon(iconSVGname: "ic_back_arrow.svg"),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context)
                    .typography
                    .black
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            )),
            SizedBox(
              width: 24.w,
              height: 24.h,
            )
          ]),
    );
  }
}
