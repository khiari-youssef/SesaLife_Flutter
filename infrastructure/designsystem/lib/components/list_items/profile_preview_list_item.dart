import 'package:designsystem/designsystem_exports.dart';

class ProfilePreviewCard extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final VoidCallback? onClicked;
  const ProfilePreviewCard(
      {super.key, required this.avatarUrl, required this.name, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.r),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SesameAvatar(width: 32.w, height: 32.h, url: avatarUrl),
              12.horizontalSpace,
              LabelLarge(text: name)
            ]));
  }
}
