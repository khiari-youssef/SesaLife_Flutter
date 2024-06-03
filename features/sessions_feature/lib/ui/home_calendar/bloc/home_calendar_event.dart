import 'package:shared_dependencies/shared_dependencies.dart';

part 'home_calendar_event.freezed.dart';

@freezed
class HomeCalendarEvent with _$HomeCalendarEvent {
  const factory HomeCalendarEvent.loadAllSessionOfTheMonth(
      int year, int month) = _HomeCalendarEvent;
}
