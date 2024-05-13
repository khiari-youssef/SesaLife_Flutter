import 'package:shared_dependencies/shared_dependencies.dart';

class SesamePrivacyAndSecurityPolicyState
    extends State<SesamePrivacyAndSecurityPolicy> {
  @override
  Widget build(BuildContext context) =>
      titleScreenBuilder(context, S.of(context).privacy_policy_label, null, () {
        AutoRouter.of(context).popUntilRouteWithName("GuestSpaceRoute");
      }, const Center());
}

@RoutePage(name: "SesamePrivacyAndSecurityPolicyRoute")
class SesamePrivacyAndSecurityPolicy extends StatefulWidget {
  const SesamePrivacyAndSecurityPolicy({super.key});

  @override
  State<StatefulWidget> createState() => SesamePrivacyAndSecurityPolicyState();
}
