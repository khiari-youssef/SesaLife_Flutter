import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/myprofile/MyProfileMenu.dart';
import 'package:users_management_feature/ui/myprofile/MyProfilePreview.dart';

class MyUserProfileState extends State<MyUserProfileScreen> {
  @override
  Widget build(BuildContext context) => basicScreenBuilder(
      context,
      null,
      Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MyProfilePreview(
                profilePictureUrl:
                    "https://cdn.pixabay.com/photo/2024/05/05/19/33/man-8741800_1280.jpg",
                headline: "Ahmed",
                text1: "Student",
                text2: "INGTA3C",
                text3: "Software engineer",
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SesameCustomButton(
                        variant: SesameButtonVariant.neutral,
                        leftIconAssetName: "ic_badge.svg",
                        buttonText: S.of(context).mybadge,
                        onPressed: () {}),
                    SesameCustomButton(
                        variant: SesameButtonVariant.neutral,
                        leftIconAssetName: "ic_visible.svg",
                        buttonText: S.of(context).myprofile,
                        onPressed: () {})
                  ],
                ),
              ),
              const MyProfileMenu(),
              Expanded(
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: SesameCustomButton(
                          variant: SesameButtonVariant.neutral,
                          leftIconAssetName: "ic_logout.svg",
                          buttonText: S.of(context).logout,
                          onPressed: () {})))
            ],
          )));
}

@RoutePage(name: "MyUserProfileRoute")
class MyUserProfileScreen extends StatefulWidget {
  const MyUserProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => MyUserProfileState();
}
