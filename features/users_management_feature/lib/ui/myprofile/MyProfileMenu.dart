import 'package:shared_dependencies/shared_dependencies.dart';

class MyProfileMenu extends StatelessWidget {
  const MyProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SesameMenuItem(
              data: ProfileMenuItem(
                  S.of(context).privacy_policy_label, "ic_rules_policy.svg")),
          SesameMenuItem(
              data: ProfileMenuItem(S.of(context).settings, "ic_settings.svg"))
        ]);
  }
}
