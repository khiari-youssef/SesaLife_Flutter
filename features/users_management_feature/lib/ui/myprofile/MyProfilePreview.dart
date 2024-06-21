import 'package:core/core_domain/entities/user_sex.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../../domain/entities/SesameStudent.dart';
import '../../domain/entities/SesameTeacher.dart';

class MyProfilePreview extends StatelessWidget {
  final String profilePictureUrl;
  final UserSex sex;
  final String headline;
  final String text1;
  final String text2;
  final String? text3;
  const MyProfilePreview(
      {super.key,
      required this.profilePictureUrl,
      required this.headline,
      required this.text1,
      required this.text2,
      this.text3,
      required this.sex});

  static MyProfilePreview createForUser(BuildContext context, SesameUser user) {
    return switch (user) {
      SesameProfessionalStudent() => MyProfilePreview(
          profilePictureUrl: user.profilePictureUrl,
          headline: user.getFullName,
          text1: S.of(context).profile_professional_student,
          text2: user.sesameClass.id.toUpperCase(),
          text3: user.jobPosition,
          sex: user.sex,
        ),
      SesameStudent() => MyProfilePreview(
          profilePictureUrl: user.profilePictureUrl,
          headline: user.getFullName,
          text1: S.of(context).profile_student,
          text2: user.sesameClass.id.toUpperCase(),
          text3: null,
          sex: user.sex,
        ),
      SesameTeacher() => MyProfilePreview(
          profilePictureUrl: user.profilePictureUrl,
          headline: user.getFullName,
          text1: S.of(context).profile_teacher,
          text2: user.profBackground,
          text3: null,
          sex: user.sex,
        ),
      SesameUser() => MyProfilePreview(
          profilePictureUrl: user.profilePictureUrl,
          headline: user.getFullName,
          text1: S.of(context).profile_user,
          text2: "",
          text3: null,
          sex: user.sex,
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SesameAvatar.sesameAvatar120size(
            profilePictureUrl,
            "user_${switch (sex) {
              UserSex.male => "male",
              UserSex.female => "female"
            }}.svg"),
        SizedBox(width: 24.w),
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadlineLarge(text: headline, maxLines: 2),
            SizedBox(height: 8.h),
            BodyLarge(text: text1, color: const Color(0xFF5F5F5F)),
            SizedBox(height: 4.h),
            BodyLarge(text: text2, color: const Color(0xFF5F5F5F)),
            SizedBox(height: 4.h),
            BodyLarge(text: text3 ?? "", color: const Color(0xFF5F5F5F)),
          ],
        ))
      ],
    );
  }
}
