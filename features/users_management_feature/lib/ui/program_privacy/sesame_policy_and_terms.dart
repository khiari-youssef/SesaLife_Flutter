import 'package:core/core_domain/entities/app_policy_section.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/program_privacy/stateManagement/sesame_policy_and_terms_bloc.dart';

class SesamePolicyAndTermsScreenState
    extends State<SesamePolicyAndTermsScreen> {
  late SesamePolicyAndTermsBloc bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = SesamePolicyAndTermsBloc(
        Localizations.localeOf(context), GetIt.instance.get());
  }

  @override
  Widget build(BuildContext context) =>
      titleScreenBuilder(context, S.of(context).privacy_policy_label, null, () {
        AutoRouter.of(context).back();
      },
          BlocProvider<SesamePolicyAndTermsBloc>(
            create: (context) =>
                bloc..add(const SesamePolicyAndTermsEvent.loadRulesData()),
            child: BlocConsumer<SesamePolicyAndTermsBloc,
                SesamePolicyAndTermsState>(
              listener: (context, state) {},
              builder: (context, state) {
                SesamePolicyAndTermsBloc localBloc =
                    context.read<SesamePolicyAndTermsBloc>();
                return localBloc.state.when(loading: () {
                  return const SizedBox.shrink();
                }, error: (error) {
                  return const SizedBox.shrink();
                }, success: (data) {
                  return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 16.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BodyMedium(
                            text: data.description,
                            textAlign: TextAlign.start,
                          ),
                          16.verticalSpace,
                          TitleMedium(
                            text: S.of(context).content,
                            textAlign: TextAlign.start,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          16.verticalSpace,
                          Wrap(
                            direction: Axis.vertical,
                            alignment: WrapAlignment.start,
                            spacing: 8.h,
                            runSpacing: 12.w,
                            children: data.summary.indexed.map((title) {
                              return Expanded(
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: TitleSmall(
                                        text: "${(title.$1 + 1)}. ${title.$2}",
                                        decoration: TextDecoration.underline,
                                        textAlign: TextAlign.start,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                      )));
                            }).toList(),
                          ),
                          20.verticalSpace,
                          Expanded(
                              child: ListView.builder(
                                  itemCount: data.sections.length,
                                  itemBuilder: (context, index) {
                                    return widget.buildItemSection(
                                        context, data.sections[index]);
                                  }))
                        ],
                      ));
                });
              },
            ),
          ));
}

@RoutePage(name: "SesamePolicyAndTermsRoute")
class SesamePolicyAndTermsScreen extends StatefulWidget {
  const SesamePolicyAndTermsScreen({super.key});

  Widget buildItemSection(BuildContext context, AppRulesSection section) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          HeadlineLarge(
              text: section.name,
              color: Theme.of(context).colorScheme.primary,
              maxLines: 2),
          12.verticalSpace,
          ...section.subSections.map((subsection) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                      ...subsection.content.map((content) => BodyMedium(
                            text: "• $content",
                            maxLines: 5,
                            color: Theme.of(context).colorScheme.onSurface,
                          ))
                    ],
                  )
                ],
              ))
        ]);
  }

  @override
  State<StatefulWidget> createState() => SesamePolicyAndTermsScreenState();
}
