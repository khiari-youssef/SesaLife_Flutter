import 'package:sessions_feature/ui/sessions_calendar/bloc/home_calendar_event.dart';
import 'package:sessions_feature/ui/sessions_calendar/bloc/home_calendar_state.dart';
import 'package:sessions_feature/ui/sessions_calendar/components/calendar_top_bar.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../navigation/sessions_navigation_configuration.gr.dart';
import 'bloc/home_calendar_bloc.dart';
import 'home_sessions_calendar_mode.dart';
import 'home_sessions_list.dart';

class HomeSessionsScreenState extends State<HomeSessionsScreen>
    with SingleTickerProviderStateMixin {
  HomeCalendarTopBarViewMode viewModeState =
      HomeCalendarTopBarViewMode.calendar;
  late TabController controller;
  int? selectedFilterIndex;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) => BlocProvider<HomeSessionsBloc>(
        create: (context) => GetIt.instance.get<HomeSessionsBloc>()
          ..add(HomeCalendarEvent.loadAllSessionOfTheMonth(
              year: DateTime.now().year,
              month: DateTime.now().month,
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
                                      label: S.of(context).sessions_all),
                                  SesameTabItem(
                                      label: S.of(context).sessions_course),
                                  SesameTabItem(
                                      label: S.of(context).sessions_exam)
                                ],
                                onTabSelected: (index) {
                                  setState(() {
                                    selectedFilterIndex = index;
                                    context.read<HomeSessionsBloc>().add(
                                        HomeCalendarEvent
                                            .loadAllSessionOfTheDate(
                                                date: DateTime.now(),
                                                filter: switch (index) {
                                                  1 => SessionTypeFilter.course,
                                                  2 => SessionTypeFilter.exam,
                                                  _ => SessionTypeFilter.all
                                                }));
                                  });
                                },
                              ),
                            )),
                        state.when(loading: () {
                          return const Expanded(
                              child: Center(
                            child: CircularProgressIndicator(),
                          ));
                        }, error: (type) {
                          return Center(child: Text(type.name));
                        }, success: (data) {
                          return Expanded(
                              child: switch (viewModeState) {
                            HomeCalendarTopBarViewMode.calendar =>
                              SessionsCalendarMode(
                                sessionsList: data,
                                onSessionClicked: (int index) {
                                  AutoRouter.of(context).push(
                                      SessionDetailsRoute(
                                          session: data[index]));
                                },
                                onDatePicked: (date) {
                                  context.read<HomeSessionsBloc>().add(
                                      HomeCalendarEvent.loadAllSessionOfTheDate(
                                          date: date,
                                          filter: switch (selectedFilterIndex) {
                                            1 => SessionTypeFilter.course,
                                            2 => SessionTypeFilter.exam,
                                            _ => SessionTypeFilter.all
                                          }));
                                },
                              ),
                            HomeCalendarTopBarViewMode.list => SessionsListMode(
                                sessionsList: data,
                                onSessionClicked: (int index) {
                                  AutoRouter.of(context).push(
                                      SessionDetailsRoute(
                                          session: data[index]));
                                },
                              )
                          });
                        })
                      ]));
            }),
      );
}

@RoutePage(name: "HomeSessionsRoute")
class HomeSessionsScreen extends StatefulWidget {
  const HomeSessionsScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeSessionsScreenState();
}
