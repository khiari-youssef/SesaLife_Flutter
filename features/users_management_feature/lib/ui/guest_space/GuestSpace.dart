import 'package:designsystem/extensions.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/guest_welcome_info_option.dart';
import 'GuestWelcomeInfoOptionCard.dart';

@RoutePage(name: "GuestSpaceRoute")
class GuestSpace extends StatelessWidget {
  const GuestSpace({super.key});

  Future<void> _launchProgramsUrl(BuildContext context) async {
    if (!await launchUrl(Uri.parse("https://universitesesame.com"))) {
      throw Exception();
    }
  }

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
                  if (options[index].clickDestinationPath ==
                      "/SesameProgramsCatalog") {
                    _launchProgramsUrl(context).catchError((onError) {
                      context.showToast(
                          title: "Error",
                          message: "Could not launch url",
                          toastType: ToastType.Error);
                    });
                  } else {
                    currentRouter
                        .pushNamed(options[index].clickDestinationPath);
                  }
                },
              ),
            );
          },
        ));
  }
}
