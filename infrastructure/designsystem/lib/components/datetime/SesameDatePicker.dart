import 'package:designsystem/designsystem_exports.dart';

class SesameDatePicker extends StatelessWidget {
  final Function(DateTime dateTime) onDateChanged;
  const SesameDatePicker({super.key, required this.onDateChanged});

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker(
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      firstDate: DateTime(2023, 9, 1),
      lastDate: DateTime(2024, 9, 1),
      onDateChanged: onDateChanged,
    );
  }
}
