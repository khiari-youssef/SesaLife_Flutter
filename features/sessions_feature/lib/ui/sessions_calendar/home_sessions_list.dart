import 'package:core/exports.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/SesameSession.dart';
import 'components/calendar_card_item.dart';

class SessionsListModeState extends State<SessionsListMode> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      child: ListView.builder(
          itemCount: widget.sessionsList.length,
          itemBuilder: (context, index) {
            return LimitedBox(
                maxHeight: 150.h,
                child: GestureDetector(
                    onTap: () {
                      widget.onSessionClicked(index);
                    },
                    child: CalendarSessionCard(
                      data: widget.sessionsList[index],
                      isLoading: false,
                    )));
          }),
    );
  }
}

class SessionsListMode extends StatefulWidget {
  final List<SesameSession> sessionsList;
  final Function(int index) onSessionClicked;
  const SessionsListMode(
      {super.key, required this.sessionsList, required this.onSessionClicked});

  @override
  State<StatefulWidget> createState() => SessionsListModeState();
}
