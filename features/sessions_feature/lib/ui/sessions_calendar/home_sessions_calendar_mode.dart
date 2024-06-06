import 'package:core/exports.dart';

import '../../domain/entities/sesame_session.dart';
import 'components/calendar_card_item.dart';

class SessionsCalendarMode extends StatefulWidget {
  final List<SesameSession> sessionsList;
  final Function(int index) onSessionClicked;
  final Function(DateTime date) onDatePicked;
  const SessionsCalendarMode(
      {super.key,
      required this.sessionsList,
      required this.onSessionClicked,
      required this.onDatePicked});

  @override
  State<StatefulWidget> createState() => SessionsCalendarModeState();
}

class SessionsCalendarModeState extends State<SessionsCalendarMode> {
  late PageController controller;
  late DateTime? currentlySelectedDate;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    currentlySelectedDate = widget.sessionsList.isEmpty
        ? null
        : widget.sessionsList[controller.initialPage].startDateTime;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SesameDatePicker(
            onDateChanged: (DateTime dateTime) {
              if (dateTime != currentlySelectedDate) {
                widget.onDatePicked(dateTime);
              }
            },
            initialSelectedDate: DateTime.now(),
            selectedDate: currentlySelectedDate),
        LimitedBox(
          maxHeight: 150.h,
          child: PageView.builder(
            controller: controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (page) {
              setState(() {
                currentlySelectedDate = widget.sessionsList[page].startDateTime;
              });
            },
            itemCount: widget.sessionsList.length,
            itemBuilder: (context, index) {
              return ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 320.w),
                  child: GestureDetector(
                      onTap: () {
                        widget.onSessionClicked(index);
                      },
                      child: CalendarSessionCard(
                        data: widget.sessionsList[index],
                        isLoading: false,
                      )));
            },
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
