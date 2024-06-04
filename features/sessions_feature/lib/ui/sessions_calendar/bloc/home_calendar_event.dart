import 'package:shared_dependencies/shared_dependencies.dart';

part 'home_calendar_event.freezed.dart';

enum SessionTypeFilter { exam, course, all }

@freezed
class HomeCalendarEvent with _$HomeCalendarEvent {
  const factory HomeCalendarEvent.loadAllSessionOfTheMonth(
      {required int year,
      required int month,
      required SessionTypeFilter filter}) = _loadAllSessionOfTheMonth;
  const factory HomeCalendarEvent.loadAllSessionOfTheDate(
      {required DateTime date,
      required SessionTypeFilter filter}) = _loadAllSessionOfTheDate;
}
