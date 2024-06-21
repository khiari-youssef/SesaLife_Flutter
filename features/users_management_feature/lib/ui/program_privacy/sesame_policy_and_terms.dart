import 'package:core/core_domain/entities/AppPolicySection.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'sesame_policy_and_terms_cubit_state_manager.dart';

class SesamePolicyAndTermsScreenState
    extends State<SesamePolicyAndTermsScreen> {
  late SesamePrivacyAndSecurityPolicyCubitStateManager stateManager;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    stateManager = SesamePrivacyAndSecurityPolicyCubitStateManager(
        [], Localizations.localeOf(context), GetIt.instance.get());
  }

  @override
  Widget build(BuildContext context) =>
      titleScreenBuilder(context, S.of(context).privacy_policy_label, null, () {
        AutoRouter.of(context).back();
      },
          ListView.builder(
              itemCount: stateManager.state.length,
              itemBuilder: (context, index) {
                return widget.buildItemSection(
                    context, stateManager.state[index]);
              }));
}

@RoutePage(name: "SesamePolicyAndTermsRoute")
class SesamePolicyAndTermsScreen extends StatefulWidget {
  const SesamePolicyAndTermsScreen({super.key});

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
  State<StatefulWidget> createState() => SesamePolicyAndTermsScreenState();
}
