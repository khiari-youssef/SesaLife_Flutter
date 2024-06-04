import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/designsystem_exports.dart';

enum HomeCalendarTopBarViewMode { calendar, list }

class HomeCalendarTopBar extends StatefulWidget {
  final HomeCalendarTopBarViewMode initialViewMode;
  final Function(HomeCalendarTopBarViewMode viewmode) onViewModeChanged;
  const HomeCalendarTopBar(
      {super.key,
      required this.onViewModeChanged,
      required this.initialViewMode});

  @override
  State<StatefulWidget> createState() => HomeCalendarTopBarState();
}

class HomeCalendarTopBarState extends State<HomeCalendarTopBar> {
  HomeCalendarTopBarState();
  late HomeCalendarTopBarViewMode currentViewMode;
  late String currentIcon;

  @override
  void initState() {
    super.initState();
    currentViewMode = widget.initialViewMode;
    updateUIAccordingToViewMode(currentViewMode);
  }

  void updateUIAccordingToViewMode(HomeCalendarTopBarViewMode viewMode) {
    switch (viewMode) {
      case HomeCalendarTopBarViewMode.calendar:
        {
          currentIcon = "ic_calendar_mode.svg";
        }
      case HomeCalendarTopBarViewMode.list:
        {
          currentIcon = "ic_list_mode.svg";
        }
    }
  }

  void updateViewMode(HomeCalendarTopBarViewMode viewMode) {
    if (viewMode != currentViewMode) {
      setState(() {
        updateUIAccordingToViewMode(viewMode);
        widget.onViewModeChanged(viewMode);
        currentViewMode = viewMode;
      });
    }
  }

  void toggleViewMode() {
    updateViewMode(currentViewMode == HomeCalendarTopBarViewMode.calendar
        ? HomeCalendarTopBarViewMode.list
        : HomeCalendarTopBarViewMode.calendar);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  toggleViewMode();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: CustomIcon(
                          iconSVGname: currentIcon, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )),
            Expanded(
                flex: 4,
                child: Text(
                  S.of(context).calendar_title("1"),
                  style: Theme.of(context)
                      .typography
                      .black
                      .titleMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                  textAlign: TextAlign.center,
                )),
            Flexible(child: SizedBox(width: 24.w))
          ],
        ));
  }
}
