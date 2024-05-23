import 'package:shared_dependencies/shared_dependencies.dart';

@RoutePage(name: "BadgeUsageGuidelineRoute")
class BadgeUsageGuidelineScreen extends StatelessWidget {
  const BadgeUsageGuidelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).profile_badge, null, () {
      AutoRouter.of(context).back();
    }, Center());
  }
}
