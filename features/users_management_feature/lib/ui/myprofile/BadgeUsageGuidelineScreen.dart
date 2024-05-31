import 'package:shared_dependencies/shared_dependencies.dart';

@RoutePage(name: "BadgeUsageGuidelineRoute")
class BadgeUsageGuidelineScreen extends StatelessWidget {
  const BadgeUsageGuidelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).profile_badge, null, () {
      AutoRouter.of(context).back();
    },
        Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              HeadlineLarge(
                text: S.of(context).badge_guideline_question,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: 16.h)
            ]));
  }
}
