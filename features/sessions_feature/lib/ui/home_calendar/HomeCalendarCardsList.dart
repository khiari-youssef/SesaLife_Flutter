import 'package:designsystem/designsystem_exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'HomeCalendarEventCard.dart';

class HomeCalendarCardsList extends StatelessWidget {
  final Axis direction;
  final EdgeInsets padding;
  const HomeCalendarCardsList(
      {super.key,
      this.direction = Axis.vertical,
      this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    var data = [
      SizedBox(
        width: 320.w,
        child: const HomeCalendarEventCard(
          isLoading: true,
        ),
      ),
      SizedBox(
        width: 320.w,
        child: const HomeCalendarEventCard(),
      ),
      SizedBox(
        width: 320.w,
        child: const HomeCalendarEventCard(),
      )
    ];
    return SingleChildScrollView(
      scrollDirection: direction,
      child: Padding(
        padding: padding,
        child: direction == Axis.vertical
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: data,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: data,
              ),
      ),
    );
  }
}
