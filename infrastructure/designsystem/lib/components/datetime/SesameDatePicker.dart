import 'package:designsystem/designsystem_exports.dart';

class SesameDatePicker extends StatelessWidget {
  final DateTime? initialSelectedDate;
  final DateTime? selectedDate;
  final Function(DateTime dateTime) onDateChanged;
  const SesameDatePicker(
      {super.key,
      required this.onDateChanged,
      this.initialSelectedDate,
      this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker(
        initialDate: initialSelectedDate,
        firstDate: DateTime(2023, 9, 1),
        lastDate: DateTime(2024, 9, 1),
        onDateChanged: onDateChanged,
        currentDate: selectedDate);
  }
}
