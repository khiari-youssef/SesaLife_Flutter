import 'package:core/exports.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entities/SesameSession.dart';
import 'components/calendar_card_item.dart';

class SessionsCalendarMode extends StatefulWidget {
  final List<SesameSession> sessionsList;
  final Function(int index) onSessionClicked;
  const SessionsCalendarMode(
      {super.key, required this.sessionsList, required this.onSessionClicked});

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
        : widget.sessionsList[controller.initialPage].date;
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
              int targetIndex = widget.sessionsList
                  .indexWhere((session) => session.date == dateTime);
              if (targetIndex >= 0) {
                controller.animateToPage(targetIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              }
            },
            initialSelectedDate: DateTime.now()),
        LimitedBox(
          maxHeight: 150.h,
          child: PageView.builder(
            controller: controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (page) {
              setState(() {
                currentlySelectedDate = widget.sessionsList[page].date;
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
