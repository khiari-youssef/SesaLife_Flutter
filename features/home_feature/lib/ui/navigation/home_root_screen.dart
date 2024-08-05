import 'package:events_management_feature/ui/events_navigation_configuration.gr.dart';
import 'package:notifications_feature/ui/navigation/NotificationsNavigationConfiguration.gr.dart';
import 'package:sessions_feature/ui/navigation/sessions_navigation_configuration.gr.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/navigation/users_navigation_configuration.gr.dart';

@RoutePage(name: "HomeRootRoute")
class HomeRootScreen extends StatefulWidget {
  const HomeRootScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeRootScreenState();
  }
}

class HomeRootScreenState extends State<HomeRootScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [
          HomeNewsRoute(),
          HomeSessionsRoute(),
          HomeNotificationsRoute(),
          MyUserProfileRoute()
        ],
        bottomNavigationBuilder: (autoTabcontext, tabsRouter) {
          return SesameBottomNavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onItemSelected: tabsRouter.setActiveIndex,
          );
        });
  }
}
