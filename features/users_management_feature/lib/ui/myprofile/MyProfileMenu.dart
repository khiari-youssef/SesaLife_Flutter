import 'package:shared_dependencies/shared_dependencies.dart';

class MyProfileMenu extends StatelessWidget {
  final Function(String? destinationPath) onItemClicked;
  const MyProfileMenu({super.key, required this.onItemClicked});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SesameMenuItem(
              data: ProfileMenuItem(
                  S.of(context).privacy_policy_label, "ic_rules_policy.svg",
                destinationPath: "/SesamePrivacyAndSecurityPolicyRoute"
              )),
          SesameMenuItem(
              data: ProfileMenuItem(
                  S.of(context).settings,
                  "ic_settings.svg",
                 destinationPath: "/MySettings"
              )
          )
        ].map((item)=>GestureDetector(
            child: item,
            onTap: (){
              onItemClicked(item.data.destinationPath);
            },
        )).toList());
  }
}
