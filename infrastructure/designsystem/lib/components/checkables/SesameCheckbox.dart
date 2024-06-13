import 'package:designsystem/designsystem_exports.dart';

class SesameCheckboxState extends State<SesameCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.selectedState;
  }

  @override
  void didUpdateWidget(covariant SesameCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    isChecked = widget.selectedState;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (isCheckedUpdated) {
                setState(() {
                  isChecked = isCheckedUpdated ?? false;
                });
                widget.onChecked(isChecked);
              }),
          SizedBox(width: 8.w),
          Text(widget.label,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: 'Roboto'),
              textAlign: TextAlign.start)
        ]);
  }
}

class SesameCheckbox extends StatefulWidget {
  final bool selectedState;
  final String label;
  final Function(bool isChecked) onChecked;
  const SesameCheckbox(
      {super.key,
      required this.onChecked,
      required this.label,
      this.selectedState = false});

  @override
  State<StatefulWidget> createState() => SesameCheckboxState();
}
