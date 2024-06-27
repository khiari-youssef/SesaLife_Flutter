import 'package:core/core_domain/entities/entities.dart';
import 'package:designsystem/extensions.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/sesameClasses/stateManagement/sesame_classes_bloc.dart';

import '../../domain/entities/sesame_class_groups.dart';

class SesameClassesScreenState extends State<SesameClassesScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) =>
      titleScreenBuilder(context, S.of(context).profile_classes, null, () {
        AutoRouter.of(context).back();
      },
          BlocProvider<SesameClassesBloc>(
              create: (context) => SesameClassesBloc(
                  SesameClassesState.initial(initialData: widget.initialData))
                ..add(const SesameClassesEvent.loadSesameClasses()),
              child: BlocConsumer<SesameClassesBloc, SesameClassesState>(
                listener: (context, state) {},
                builder: (context, state) {
                  SesameClassesBloc localBloc =
                      context.read<SesameClassesBloc>();
                  return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                      child: Material(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                            widget.initialData?.isNotEmpty == true
                                ? const SizedBox.shrink()
                                : SesameSearchBar(
                                    searchController: searchController,
                                    placeholder: S
                                        .of(context)
                                        .sesame_classes_search_placeholder,
                                    onQueryChanged: (query) {
                                      bool isLoading = state.whenOrNull(
                                              loading: () => true) ??
                                          false;
                                      if (!isLoading) {
                                        localBloc.add(SesameClassesEvent
                                            .loadSesameClasses(
                                                searchQuery: query));
                                      }
                                    },
                                  ),
                            8.verticalSpace,
                            Expanded(
                                child: state.when(initial: (data) {
                              return buildSesameClassesList(context, data);
                            }, loading: () {
                              return Padding(
                                  padding: EdgeInsets.all(4.r),
                                  child: buildWithLoadingState(
                                      SizedBox(
                                        height: 60.h,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.r)),
                                        ),
                                      ),
                                      true));
                            }, error: (errorType) {
                              return const Center(
                                child: LabelMedium(text: "Error"),
                              );
                            }, success: (data) {
                              return buildSesameClassesList(context, data);
                            }))
                          ])));
                },
              )));

  Widget buildSesameClassesList(
      BuildContext context, List<SesameClassGroups>? data) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.bounceIn,
        child: data?.isNotEmpty == true
            ? ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  SesameClassGroups sesameClass = data[index];
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      child: sesameClass.groups.isEmpty
                          ? SimpleListItem(
                              title: sesameClass.className,
                              borderRadius: BorderRadius.circular(8.r),
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .surfaceContainer,
                            )
                          : ExpandableListItem(
                              title: sesameClass.className,
                              subTitle:
                                  "${S.of(context).sesame_classes_groups} : ${sesameClass.groups.length}",
                              onExpandStateChanged: (isExpanded) {},
                              expandedStateWidgetBuilder: () {
                                return ListView.separated(
                                    itemBuilder: (context, index) {
                                      SesameClass group =
                                          sesameClass.groups[index];
                                      return Card(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surfaceContainerLow,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.w),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  LabelSmall(text: group.id),
                                                ])),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return const Divider(
                                        color: Color(0xFFD9D9D9),
                                      );
                                    },
                                    itemCount: sesameClass.groups.length);
                              },
                            ));
                })
            : NoDataFoundTemplate(
                message: S.of(context).users_search_no_result));
  }
}

@RoutePage(name: "SesameClassesRoute")
class SesameClassesScreen extends StatefulWidget {
  final List<SesameClassGroups>? initialData;
  const SesameClassesScreen({super.key, this.initialData});

  @override
  State<StatefulWidget> createState() => SesameClassesScreenState();
}
