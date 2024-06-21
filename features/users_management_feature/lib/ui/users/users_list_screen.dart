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
                    textStyle: WidgetStatePropertyAll(
                        Theme.of(context).textTheme.bodyMedium),
                    hintText: "Search something",
                    hintStyle: WidgetStatePropertyAll(
                        Theme.of(context).textTheme.bodyMedium),
                    onChanged: (query) {},
                  ),
                  8.verticalSpace,
                  Expanded(
                      child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return ProfilePreviewCard(
                                name: "Test Name $index", avatarUrl: "");
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
