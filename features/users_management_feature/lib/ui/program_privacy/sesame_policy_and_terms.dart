import 'package:core/exports.dart';
import 'package:designsystem/theme/dimens.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/program_privacy/stateManagement/sesame_policy_and_terms_bloc.dart';

class SesamePolicyAndTermsScreenState
    extends State<SesamePolicyAndTermsScreen> {
  late ScrollController listController;
  late SesamePolicyAndTermsBloc bloc;
  late DocumentType? documentType;
  List<double?>? listItemsOffsets;

  @override
  void initState() {
    super.initState();
    documentType = switch (widget.doctype) {
      "privacyPolicy" => DocumentType.privacyPolicy,
      "termsOfService" => DocumentType.termsOfService,
      _ => null
    };
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
  Widget build(BuildContext context) => titleScreenBuilder(
          context,
          switch (documentType) {
            DocumentType.privacyPolicy => S.of(context).privacy_policy_label,
            DocumentType.termsOfService => S.of(context).terms_of_service_label,
            _ => ""
          },
          null, () {
        AutoRouter.of(context).back();
      },
          Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
              child: BlocProvider<SesamePolicyAndTermsBloc>(
                create: (context) => bloc
                  ..add(SesamePolicyAndTermsEvent.loadRulesData(documentType)),
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
                                        Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                  child: LabelSmall(
                                                text: S
                                                    .of(context)
                                                    .privacy_policy_update(
                                                        data.lastTimeUpdated
                                                            .toDisplayDate(),
                                                        data.lastTimeUpdated
                                                            .toDisplayTime()),
                                                textAlign: TextAlign.start,
                                                color: const Color(0xFF919191),
                                              )),
                                              Flexible(
                                                  child: SesameCustomButton(
                                                      variant:
                                                          SesameButtonVariant
                                                              .neutral,
                                                      buttonText: 'refresh',
                                                      leftIconAssetName:
                                                          "ic_refresh.svg",
                                                      sizeType: ComponentSize
                                                          .listSize,
                                                      onPressed: () {
                                                        bloc.add(
                                                            SesamePolicyAndTermsEvent
                                                                .loadRulesData(
                                                                    documentType));
                                                      }))
                                            ]),
                                        16.verticalSpace,
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
  final String doctype;
  const SesamePolicyAndTermsScreen(
      {super.key, @PathParam("doctype") required this.doctype});

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
