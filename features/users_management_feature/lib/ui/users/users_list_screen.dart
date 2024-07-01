import 'package:core/exports.dart';
import 'package:designsystem/extensions.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/users/stateManagement/users_list_bloc.dart';

import '../../domain/usecases/user_search_usecase.dart';

class UsersListScreenState extends State<UsersListScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(
        context,
        widget.title?.isNotEmpty == true
            ? widget.title!
            : S.of(context).user_profiles,
        null, () {
      AutoRouter.of(context).back();
    },
        BlocProvider<UsersListBloc>(
          create: (context) => widget.initialData?.isNotEmpty == true
              ? UsersListBloc(
                  UsersListState.initial(initialData: widget.initialData))
              : UsersListBloc(const UsersListState.loading())
            ..add(UsersListEvent.loadUsersList(
                userRoleSearchFilter: widget.userRoleSearchFilter,
                classGroupID: widget.classGroupID)),
          child: BlocConsumer<UsersListBloc, UsersListState>(
            listener: (context, state) {},
            builder: (context, state) {
              UsersListBloc localBloc = context.read<UsersListBloc>();
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
                                placeholder:
                                    S.of(context).users_search_placeholder,
                                onQueryChanged: (query) {
                                  bool isLoading =
                                      state.whenOrNull(loading: () => true) ??
                                          false;
                                  if (!isLoading) {
                                    localBloc.add(UsersListEvent.loadUsersList(
                                        nameQuery: query));
                                  }
                                },
                              ),
                        8.verticalSpace,
                        Expanded(
                            child: state.when(loading: () {
                          return ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: EdgeInsets.all(8.r),
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
                              });
                        }, error: (type) {
                          return const Center(
                            child: LabelMedium(text: "Error"),
                          );
                        }, success: (list) {
                          return buildUsersList(context, list);
                        }, initial: (List<UserProfilePreview>? initialData) {
                          return buildUsersList(context, initialData);
                        }))
                      ])));
            },
          ),
        ));
  }

  Widget buildUsersList(BuildContext context, List<UserProfilePreview>? data) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.bounceIn,
      child: (data?.isNotEmpty == true)
          ? ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                UserProfilePreview profile = data[index];
                return Padding(
                    padding: EdgeInsets.all(8.r),
                    child: profile.canDisplayExtraData()
                        ? ExpandablePreviewListItem(
                            profilePreview: profile,
                            onExpandStateChanged: (isExpanded) {},
                            expandedStateWidgetBuilder: () {
                              Map<String, String?> data = {
                                S.of(context).email: profile.email,
                                S.of(context).phone: profile.phone
                              };
                              if (profile is StudentProfilePreview) {
                                data.addAll({
                                  S.of(context).job_role: profile.jobPosition,
                                  S.of(context).company: profile.company,
                                  S.of(context).student_class:
                                      profile.sesameClass.toString()
                                });
                              }
                              if (profile is TeacherProfilePreview) {
                                data.addAll({
                                  S.of(context).job_role: profile.background,
                                  S.of(context).assigned_classes:
                                      profile.assignedClasses.join(" , ")
                                });
                              }
                              if (profile is AdminProfilePreview) {
                                data.addAll(
                                    {S.of(context).job_role: profile.position});
                              }
                              return CardExpandedStateMenu(details: data);
                            },
                          )
                        : ProfilePreviewCardWithRedirectAction(
                            profilePreview: profile, onClicked: () {}));
              })
          : NoDataFoundTemplate(message: S.of(context).users_search_no_result),
    );
  }
}

@RoutePage(name: "UsersListRoute")
class UsersListScreen extends StatefulWidget {
  final List<UserProfilePreview>? initialData;
  final String? classGroupID;
  final UserRoleSearchFilter userRoleSearchFilter;
  final String? title;
  const UsersListScreen(
      {super.key,
      this.initialData,
      this.userRoleSearchFilter = UserRoleSearchFilter.all,
      this.title,
      this.classGroupID});

  @override
  State<StatefulWidget> createState() => UsersListScreenState();
}
