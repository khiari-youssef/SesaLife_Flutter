import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/components/textViews/titles/TitleSmall.dart';
import 'package:designsystem/designsystem_exports.dart';

class SesameMenuItem extends StatelessWidget {
  final ProfileMenuItem data;
  const SesameMenuItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomIcon(
                iconSVGname: data.iconAssetPath,
                color: Theme.of(context).primaryColor),
            SizedBox(width: 16.w),
            TitleSmall(
                text: data.label,
                color: Theme.of(context).primaryColor,
                textAlign: TextAlign.start)
          ],
        ));
  }
}
