import 'package:events_management_feature/ui/EventsNavigationConfiguration.gr.dart';
import 'package:notifications_feature/ui/navigation/NotificationsNavigationConfiguration.gr.dart';
import 'package:sessions_feature/ui/navigation/SessionsNavigationConfiguration.gr.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/navigation/UsersNavigationConfiguration.gr.dart';

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
          HomeCalendarRoute(),
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
