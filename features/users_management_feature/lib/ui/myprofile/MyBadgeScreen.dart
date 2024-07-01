import 'package:core/coreUI/sesame_badge_widget.dart';
import 'package:core/core_domain/entities/sesame_badge.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@RoutePage(name: "MyBadgeRoute")
class MyBadgeScreen extends StatelessWidget {
  final SesameBadge userBadge;
  const MyBadgeScreen({super.key, required this.userBadge});

  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).profile_badge, null, () {
      AutoRouter.of(context).back();
    },
        Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SesameBadgeWidget(
                    data: userBadge.toDomainUri(),
                    visibilityDuration: const Duration(seconds: 5),
                  ),
                  SizedBox(height: 32.h),
                  Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.start,
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "${S.of(context).note} :",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.red)),
                          TextSpan(
                              text: S.of(context).badge_usage_notice,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.black, height: 1.4)),
                        ]))
                      ])
                ])));
  }
}
