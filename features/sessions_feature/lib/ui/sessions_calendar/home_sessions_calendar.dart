import 'package:sessions_feature/ui/sessions_calendar/bloc/home_calendar_event.dart';
import 'package:sessions_feature/ui/sessions_calendar/bloc/home_calendar_state.dart';
import 'package:sessions_feature/ui/sessions_calendar/components/calendar_top_bar.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'bloc/home_calendar_bloc.dart';
import 'home_sessions_calendar_mode.dart';
import 'home_sessions_list.dart';

class HomeCalendarScreenState extends State<HomeCalendarScreen>
    with SingleTickerProviderStateMixin {
  HomeCalendarTopBarViewMode viewModeState =
      HomeCalendarTopBarViewMode.calendar;
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, initialIndex: 0, vsync: this);
  }

  DateTime currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) => BlocProvider<HomeSessionsBloc>(
        create: (context) => GetIt.instance.get<HomeSessionsBloc>()
          ..add(HomeCalendarEvent.loadAllSessionOfTheMonth(
              year: currentDate.year,
              month: currentDate.month,
              filter: SessionTypeFilter.all)),
        child: BlocConsumer<HomeSessionsBloc, HomeSessionsState>(
            listener: (BuildContext context, HomeSessionsState state) {},
            builder: (context, state) {
              return basicScreenBuilder(
                  context,
                  null,
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        HomeCalendarTopBar(
                            initialViewMode: viewModeState,
                            onViewModeChanged:
                                (HomeCalendarTopBarViewMode viewMode) {
                              setState(() {
                                viewModeState = viewMode;
                              });
                            }),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: SizedBox(
                              height: 32.h,
                              child: SesameTabBar(
                                controller: controller,
                                tabs: [
                                  SesameTabItem(
                                      label: S.of(context).sessions_course),
                                  SesameTabItem(
                                      label: S.of(context).sessions_exam)
                                ],
                                onTabSelected: (index) {},
                              ),
                            )),
                        state.when(loading: () {
                          return const CircularProgressIndicator();
                        }, error: (type) {
                          return Center(child: Text(type.name));
                        }, success: (data) {
                          return Expanded(
                              child: switch (viewModeState) {
                            HomeCalendarTopBarViewMode.calendar =>
                              SessionsCalendarMode(
                                sessionsList: data,
                                onSessionClicked: (int index) {},
                              ),
                            HomeCalendarTopBarViewMode.list => SessionsListMode(
                                sessionsList: data,
                                onSessionClicked: (int index) {},
                              )
                          });
                        })
                      ]));
            }),
      );
}

@RoutePage(name: "HomeCalendarRoute")
class HomeCalendarScreen extends StatefulWidget {
  const HomeCalendarScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeCalendarScreenState();
}
