import 'package:core/core_domain/entities/app_policy_section.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/program_privacy/stateManagement/sesame_policy_and_terms_bloc.dart';

class SesamePolicyAndTermsScreenState
    extends State<SesamePolicyAndTermsScreen> {
  late ScrollController listController;
  late SesamePolicyAndTermsBloc bloc;
  List<double?>? listItemsOffsets;

  @override
  void initState() {
    super.initState();
    listController = ScrollController();
  }

  @override
  void dispose() {
    listController.dispose();
    super.dispose();
  }

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
          Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
              child: BlocProvider<SesamePolicyAndTermsBloc>(
                create: (context) =>
                    bloc..add(const SesamePolicyAndTermsEvent.loadRulesData()),
                child: BlocConsumer<SesamePolicyAndTermsBloc,
                    SesamePolicyAndTermsState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    SesamePolicyAndTermsBloc localBloc =
                        context.read<SesamePolicyAndTermsBloc>();
                    return localBloc.state.when(loading: () {
                      return Center(
                          child: CircularProgressIndicator(
                              color: Theme.of(context).primaryColor));
                    }, error: (error) {
                      return const SizedBox.shrink();
                    }, success: (data) {
                      int shiftedLength = data.sections.length + 1;
                      listItemsOffsets =
                          List.generate(data.sections.length, (index) => null);
                      return data.sections.isEmpty
                          ? NoDataFoundTemplate(
                              message: S.of(context).data_not_available)
                          : ListView.builder(
                              itemCount: shiftedLength,
                              controller: listController,
                              itemBuilder: (context, index) {
                                if (index == 0) {
                                  return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BodyMedium(
                                          text: data.description,
                                          textAlign: TextAlign.start,
                                        ),
                                        16.verticalSpace,
                                        TitleMedium(
                                          text: S.of(context).content,
                                          textAlign: TextAlign.start,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                        16.verticalSpace,
                                        Wrap(
                                          direction: Axis.vertical,
                                          alignment: WrapAlignment.start,
                                          spacing: 8.h,
                                          runSpacing: 12.w,
                                          children:
                                              data.summary.indexed.map((title) {
                                            return GestureDetector(
                                                onTap: () {
                                                  double? targetOffset =
                                                      listItemsOffsets?[
                                                          title.$1];
                                                  print(targetOffset);
                                                  if (targetOffset != null) {
                                                    listController
                                                        .jumpTo(targetOffset);
                                                  }
                                                },
                                                child: TitleSmall(
                                                  text:
                                                      "${(title.$1 + 1)}. ${title.$2}",
                                                  decoration:
                                                      TextDecoration.underline,
                                                  textAlign: TextAlign.start,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSurface,
                                                ));
                                          }).toList(),
                                        ),
                                        20.verticalSpace,
                                      ]);
                                } else {
                                  print(index - 1);
                                  listItemsOffsets?[index - 1] =
                                      Scrollable.of(context).position.pixels;
                                  return widget.buildItemSection(
                                      context, data.sections[index - 1]);
                                }
                              });
                    });
                  },
                ),
              )));
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
