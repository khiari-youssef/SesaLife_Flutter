import 'package:core/coreUI/user_profile_cards/expandable_preview_list_item.dart';
import 'package:core/coreUI/user_profile_cards/profile_preview_card_with_redirect_action.dart';
import 'package:core/core_domain/entities/entities.dart';
import 'package:designsystem/extensions.dart';
import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/users/stateManagement/users_list_bloc.dart';

class UsersListScreenState extends State<UsersListScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return basicScreenBuilder(
        context,
        null,
        BlocProvider<UsersListBloc>(
          create: (context) => widget.initialData?.isNotEmpty == true
              ? UsersListBloc(
                  UsersListState.initial(initialData: widget.initialData))
              : UsersListBloc(const UsersListState.loading())
            ..add(const UsersListEvent.loadUsersList()),
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
                                return SizedBox(
                                  height: 80.h,
                                  child: Center(
                                    child: LabelMedium(
                                      text: "email : email$index@gmail.com",
                                    ),
                                  ),
                                );
                              },
                            )
                          : ProfilePreviewCardWithRedirectAction(
                              profilePreview: profile, onClicked: () {}));
                })
            : Expanded(
                child: NoDataFoundTemplate(
                    message: S.of(context).users_search_no_result),
              ));
  }
}

@RoutePage(name: "UsersListRoute")
class UsersListScreen extends StatefulWidget {
  final List<UserProfilePreview>? initialData;
  const UsersListScreen({super.key, this.initialData});

  @override
  State<StatefulWidget> createState() => UsersListScreenState();
}
