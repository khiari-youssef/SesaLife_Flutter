import 'package:designsystem/designsystem_exports.dart';
import 'package:designsystem/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeLogo extends StatelessWidget {
  const WelcomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/vector/sesame_logo.svg",
            package: "designsystem"),
        SizedBox(width: 8.w),
        Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                context.getLocalizations().welcome_logo_sesame_name,
                style: TextStyle(
                    fontSize: 28.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.primary),
              ),
              Text(
                context.getLocalizations().welcome_logo_description,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.tertiary),
              )
            ])
      ],
    );
  }
}
