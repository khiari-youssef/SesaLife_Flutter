import 'package:sessions_feature/ui/home_calendar/bloc/home_calendar_event.dart';
import 'package:sessions_feature/ui/home_calendar/bloc/home_calendar_state.dart';
import 'package:sessions_feature/ui/home_calendar/components/calendar_top_bar.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'bloc/home_calendar_bloc.dart';
import 'home_sessions_carousel_list.dart';

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
  Widget build(BuildContext context) => BlocProvider<HomeCalendarBloc>(
        create: (context) => GetIt.instance.get<HomeCalendarBloc>()
          ..add(HomeCalendarEvent.loadAllSessionOfTheMonth(
              currentDate.year, currentDate.month)),
        child: BlocConsumer<HomeCalendarBloc, HomeCalendarState>(
            listener: (BuildContext context, HomeCalendarState state) {},
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
                        ...buildViewMode(viewModeState, state)
                      ]));
            }),
      );

  List<Widget> buildViewMode(
      HomeCalendarTopBarViewMode viewMode, HomeCalendarState state) {
    return viewMode == HomeCalendarTopBarViewMode.calendar
        ? [
            SesameDatePicker(
                onDateChanged: (DateTime dateTime) {},
                initialSelectedDate: DateTime.now()),
            state.when(loading: () {
              return const HomeCalendarCardsList(
                  direction: Axis.horizontal,
                  isLoading: true,
                  sessionsList: []);
            }, error: (type) {
              return const HomeCalendarCardsList(
                direction: Axis.horizontal,
                isLoading: false,
                sessionsList: [],
              );
            }, success: (data) {
              return HomeCalendarCardsList(
                  direction: Axis.horizontal,
                  isLoading: false,
                  sessionsList: data);
            })
          ]
        : [
            Expanded(
                child: state.when(loading: () {
              return const HomeCalendarCardsList(
                direction: Axis.vertical,
                isLoading: true,
                sessionsList: [],
              );
            }, error: (type) {
              return const HomeCalendarCardsList(
                direction: Axis.vertical,
                isLoading: false,
                sessionsList: [],
              );
            }, success: (data) {
              return HomeCalendarCardsList(
                  direction: Axis.vertical,
                  isLoading: false,
                  sessionsList: data);
            }))
          ];
  }
}

@RoutePage(name: "HomeCalendarRoute")
class HomeCalendarScreen extends StatefulWidget {
  const HomeCalendarScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeCalendarScreenState();
}
