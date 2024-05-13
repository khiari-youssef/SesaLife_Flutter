import 'package:sessions_feature/ui/home_calendar/HomeCalendarTopBar.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'HomeCalendarCardsList.dart';

class HomeCalendarScreenState extends State<HomeCalendarScreen> {
  HomeCalendarTopBarViewMode viewModeState =
      HomeCalendarTopBarViewMode.calendar;
  @override
  Widget build(BuildContext context) => basicScreenBuilder(
      context,
      null,
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            HomeCalendarTopBar(
                initialViewMode: viewModeState,
                onViewModeChanged: (HomeCalendarTopBarViewMode viewMode) {
                  setState(() {
                    viewModeState = viewMode;
                  });
                }),
            ...buildViewMode(viewModeState)
          ]));

  List<Widget> buildViewMode(HomeCalendarTopBarViewMode viewMode) {
    return viewMode == HomeCalendarTopBarViewMode.calendar
        ? [
            SesameDatePicker(
              onDateChanged: (DateTime dateTime) {},
            ),
            const HomeCalendarCardsList(direction: Axis.horizontal)
          ]
        : [const HomeCalendarCardsList(direction: Axis.vertical)];
  }
}

@RoutePage(name: "HomeCalendarRoute")
class HomeCalendarScreen extends StatefulWidget {
  const HomeCalendarScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeCalendarScreenState();
}
