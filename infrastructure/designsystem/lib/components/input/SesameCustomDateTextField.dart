import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class SesameCustomTextDateField extends StatelessWidget {
  final ValueChanged<String> onChange;
  final String label;
  final DateFormat? format;
  final String? placeHolder;
  final bool isRequired;
  final bool isEnabled;
  final String? errorMessage;

  const SesameCustomTextDateField({
    super.key,
    required this.onChange,
    required this.label,
    this.placeHolder = "DD/MM/YYYY",
    this.isRequired = false,
    this.errorMessage,
    this.isEnabled = true,
    this.format,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return SesameCustomTextField(
        keyboardType: TextInputType.datetime,
        errorMessage: errorMessage,
        isEnabled: isEnabled,
        isRequired: isRequired,
        onChange: onChange,
        placeHolder: placeHolder,
        controller: controller,
        rightIcon: TextFieldIcon("ic_calendar_unselected.svg", () async {
          Future<DateTime?> futureResult = showDatePicker(
              context: context,
              firstDate: DateTime(1960, 1, 1),
              lastDate: DateTime(2026, 1, 1));
          DateTime? selectedDate = await futureResult
              .catchError((error, stackTrace) {
                return null;
              })
              .asStream()
              .first;
          if (selectedDate != null) {
            controller.text =
                (format ?? DateFormat("dd/MM/yyyy")).format(selectedDate);
          }
        }),
        label: label);
  }
}
