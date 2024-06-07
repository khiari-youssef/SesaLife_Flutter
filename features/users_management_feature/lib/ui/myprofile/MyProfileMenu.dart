import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../../domain/entities/SesameStudent.dart';
import '../../domain/entities/SesameTeacher.dart';

class MyProfileMenu extends StatelessWidget {
  final SesameUser user;
  final Function(String? destinationPath) onItemClicked;
  const MyProfileMenu(
      {super.key, required this.onItemClicked, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ...switch (user) {
            SesameStudent() => [
                SesameMenuItem(
                    data: ProfileMenuItem(
                        S.of(context).profile_projects, "ic_rules_policy.svg",
                        destinationPath: "/MyProjectsRoute")),
                SesameMenuItem(
                    data: ProfileMenuItem(S.of(context).profile_subscription,
                        "ic_rules_policy.svg",
                        destinationPath: "/MySubscriptionRoute")),
                SesameMenuItem(
                    data: ProfileMenuItem(
                        S.of(context).profile_grades, "ic_rules_policy.svg",
                        destinationPath: "/MyGradesRoute"))
              ],
            SesameTeacher() => [
                SesameMenuItem(
                    data: ProfileMenuItem(
                        S.of(context).profile_classes, "ic_rules_policy.svg",
                        destinationPath: "/MyClassesRoute"))
              ],
            _ => []
          },
          SesameMenuItem(
              data: ProfileMenuItem(
                  S.of(context).privacy_policy_label, "ic_rules_policy.svg",
                  destinationPath: "/SesamePrivacyAndSecurityPolicyRoute")),
          SesameMenuItem(
              data: ProfileMenuItem(S.of(context).settings, "ic_settings.svg",
                  destinationPath: "/MySettingsRoute"))
        ]
            .map((item) => GestureDetector(
                  child: item,
                  onTap: () {
                    onItemClicked(item.data.destinationPath);
                  },
                ))
            .toList());
  }
}
