import 'package:core/coreUI/user_profile_cards/expandable_preview_list_item.dart';
import 'package:core/coreUI/user_profile_cards/profile_preview_card_with_redirect_action.dart';
import 'package:core/core_domain/entities/entities.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class UsersListScreenState extends State<UsersListScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return basicScreenBuilder(
        context,
        null,
        Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
            child: Material(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  SearchBar(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r))),
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.surfaceContainerHigh),
                    controller: searchController,
                    textStyle: WidgetStatePropertyAll(Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface)),
                    hintText: "Search something",
                    hintStyle: WidgetStatePropertyAll(Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface)),
                    onChanged: (query) {},
                  ),
                  8.verticalSpace,
                  Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.all(8.r),
                                child: index < 3
                                    ? ProfilePreviewCardWithRedirectAction(
                                        profilePreview: UserProfilePreview(
                                            firstName: "FirstName $index",
                                            lastName: "LastName",
                                            profilePicture: "",
                                            sex: UserSex.male,
                                            email: "email$index@gmail.com",
                                            id: "$index"),
                                        onClicked: () {})
                                    : index < 7
                                        ? ExpandablePreviewListItem(
                                            profilePreview: UserProfilePreview(
                                                firstName: "FirstName $index",
                                                lastName: "LastName",
                                                profilePicture: "",
                                                sex: UserSex.male,
                                                email: "email$index@gmail.com",
                                                id: "$index"),
                                            onExpandStateChanged:
                                                (isExpanded) {},
                                            expandedStateWidgetBuilder: () {
                                              return SizedBox(
                                                height: 80.h,
                                                child: Center(
                                                  child: LabelMedium(
                                                    text:
                                                        "email : email$index@gmail.com",
                                                  ),
                                                ),
                                              );
                                            },
                                          )
                                        : ExpandableListItem(
                                            title: "item $index",
                                            onExpandStateChanged:
                                                (bool isExpanded) {},
                                            expandedStateWidgetBuilder: () {
                                              return SizedBox(
                                                height: 80.h,
                                                child: Center(
                                                  child: LabelMedium(
                                                    text:
                                                        "email : email$index@gmail.com",
                                                  ),
                                                ),
                                              );
                                            },
                                          ));
                          }))
                ]))));
  }
}

@RoutePage(name: "UsersListRoute")
class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<StatefulWidget> createState() => UsersListScreenState();
}
