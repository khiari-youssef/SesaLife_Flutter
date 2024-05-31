import 'package:core/core_domain/entities/AppPolicySection.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'SesamePrivacyAndSecurityPolicyCubitStateManager.dart';

class SesamePrivacyAndSecurityPolicyState
    extends State<SesamePrivacyAndSecurityPolicy> {
  final SesamePrivacyAndSecurityPolicyCubitStateManager state =
      GetIt.instance.get();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      titleScreenBuilder(context, S.of(context).privacy_policy_label, null, () {
        AutoRouter.of(context).popUntilRouteWithName("GuestSpaceRoute");
      }, ListView.builder(itemBuilder: (context, index) {
        return widget.buildItemSection(context, state.state[index]);
      }));
}

@RoutePage(name: "SesamePrivacyAndSecurityPolicyRoute")
class SesamePrivacyAndSecurityPolicy extends StatefulWidget {
  const SesamePrivacyAndSecurityPolicy({super.key});

  Widget buildItemSection(BuildContext context, AppPolicySection section) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          HeadlineLarge(
              text: section.name,
              color: Theme.of(context).colorScheme.primary,
              maxLines: 2),
          12.verticalSpace,
          ...section.subSections.map((subsection) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  HeadlineMedium(
                      text: subsection.name,
                      color: Theme.of(context).colorScheme.tertiary,
                      maxLines: 2),
                  8.verticalSpace,
                  Wrap(
                    alignment: WrapAlignment.start,
                    direction: Axis.vertical,
                    children: [
                      ...subsection.content.map((content) =>
                          BodyMedium(text: "• $content", maxLines: 5))
                    ],
                  )
                ],
              ))
        ]);
  }

  @override
  State<StatefulWidget> createState() => SesamePrivacyAndSecurityPolicyState();
}
