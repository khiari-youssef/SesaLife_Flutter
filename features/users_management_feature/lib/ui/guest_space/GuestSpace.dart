import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/navigation/UsersNavigationConfiguration.gr.dart';

import '../../domain/entities/GuestWelcomeInfoOption.dart';
import 'GuestWelcomeInfoOptionCard.dart';

@RoutePage(name: "GuestSpaceRoute")
class GuestSpace extends StatelessWidget {
  const GuestSpace({super.key});

  @override
  Widget build(BuildContext context) {
    StackRouter currentRouter = AutoRouter.of(context);
    S localStrings = S.of(context);
    List<GuestWelcomeInfoOption> options = [
      GuestWelcomeInfoOption(localStrings.programs_label,
          localStrings.programs_desc, "/SesameProgramsCatalog"),
      GuestWelcomeInfoOption(localStrings.registration_label,
          localStrings.registration_desc, "/EnrollmentRoute"),
      GuestWelcomeInfoOption(
          localStrings.privacy_policy_label,
          localStrings.privacy_policy_desc,
          "/SesamePrivacyAndSecurityPolicyRoute")
    ];

    return titleScreenBuilder(context, localStrings.guest_space, null, () {
      AutoRouter.of(context).popUntilRouteWithName("LoginRoute");
    },
        AnimatedList(
          padding: EdgeInsets.all(12.w),
          initialItemCount: options.length,
          itemBuilder: (context, index, anim) {
            return FadeTransition(
              opacity: anim,
              child: GuestWelcomeInfoOptionCard(
                data: options[index],
                onClicked: () {
                  currentRouter.pushNamed(options[index].clickDestinationPath);
                },
              ),
            );
          },
        ));
  }
}
