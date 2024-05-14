import 'package:designsystem/designsystem_exports.dart';

class MyProfilePreview extends StatelessWidget {
  final String profilePictureUrl;
  final String headline;
  final String text1;
  final String text2;
  final String text3;
  const MyProfilePreview(
      {super.key,
      required this.profilePictureUrl,
      required this.headline,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SesameAvatar.sesameAvatar120size(profilePictureUrl),
        SizedBox(width: 24.w),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headline,
              style: Theme.of(context)
                  .typography
                  .black
                  .headlineLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8.h),
            Text(text1,
                style: Theme.of(context)
                    .typography
                    .black
                    .bodyLarge
                    ?.copyWith(color: const Color(0xFF5F5F5F)),
                textAlign: TextAlign.start),
            Text(text2,
                style: Theme.of(context)
                    .typography
                    .black
                    .bodyLarge
                    ?.copyWith(color: const Color(0xFF5F5F5F)),
                textAlign: TextAlign.start),
            Text(text3,
                style: Theme.of(context)
                    .typography
                    .black
                    .bodyLarge
                    ?.copyWith(color: const Color(0xFF5F5F5F)),
                textAlign: TextAlign.start),
          ],
        )
      ],
    );
  }
}
