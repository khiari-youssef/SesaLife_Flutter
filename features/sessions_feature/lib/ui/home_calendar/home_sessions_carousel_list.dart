import 'package:core/exports.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/SesameSession.dart';
import 'components/calendar_card_item.dart';

class CalendarSessionList extends State<HomeCalendarCardsList> {
  @override
  Widget build(BuildContext context) {
    return switch (widget.direction) {
      Axis.horizontal => LimitedBox(
          maxHeight: 150.h,
          child: PageView.builder(
            scrollDirection: widget.direction,
            itemCount: widget.sessionsList.length,
            itemBuilder: (context, index) {
              return ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 320.w),
                  child: CalendarSessionCard(
                    data: widget.sessionsList[index],
                    isLoading: false,
                  ));
            },
          ),
        ),
      Axis.vertical => Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          child: ListView.builder(
              physics: widget.direction == Axis.horizontal
                  ? const PageScrollPhysics()
                  : null,
              scrollDirection: widget.direction,
              itemCount: widget.sessionsList.length,
              itemBuilder: (context, index) {
                return ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 320.w),
                    child: CalendarSessionCard(
                      data: widget.sessionsList[index],
                      isLoading: false,
                    ));
              }),
        )
    };
  }
}

class HomeCalendarCardsList extends StatefulWidget {
  final Axis direction;
  final EdgeInsets padding;
  final bool isLoading;
  final List<SesameSession> sessionsList;
  const HomeCalendarCardsList(
      {super.key,
      this.direction = Axis.vertical,
      this.padding = EdgeInsets.zero,
      required this.isLoading,
      required this.sessionsList});

  @override
  State<StatefulWidget> createState() => CalendarSessionList();
}
