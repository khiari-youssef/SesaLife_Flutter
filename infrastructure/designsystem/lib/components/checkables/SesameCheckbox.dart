import 'package:designsystem/designsystem_exports.dart';

class SesameCheckboxState extends State<SesameCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialState;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
              checkColor: Theme.of(context).colorScheme.primary,
              value: isChecked,
              onChanged: (isCheckedUpdated) {
                setState(() {
                  isChecked = isCheckedUpdated ?? false;
                });
                widget.onChecked(isChecked);
              }),
          SizedBox(width: 8.w),
          LabelMedium(text: widget.label)
        ]);
  }
}

class SesameCheckbox extends StatefulWidget {
  final bool initialState = false;
  final String label;
  final Function(bool isChecked) onChecked;
  const SesameCheckbox(
      {super.key, required this.onChecked, required this.label});

  @override
  State<StatefulWidget> createState() => SesameCheckboxState();
}
