import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/cupertino.dart';

class SesameRadioButtonState extends State<SesameRadioButton> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<int>(
            value: widget.id,
            fillColor: MaterialStatePropertyAll(widget.isEnabled
                ? primaryColor
                : Color.alphaBlend(const Color(0xCCF3F3F3), primaryColor)),
            activeColor: widget.isEnabled
                ? primaryColor
                : Color.alphaBlend(const Color(0xCCF3F3F3), primaryColor),
            groupValue: widget.isEnabled ? widget.groupID : null,
            onChanged: (newGroupId) {
              if (widget.isEnabled) {
                widget.onChecked(newGroupId);
              }
            }),
        SizedBox(width: 8.w),
        LabelMedium(text: widget.label)
      ],
    );
  }
}

class SesameRadioButton extends StatefulWidget {
  final int id;
  final int? groupID;
  final String label;
  final bool isEnabled;
  final Function(int? newGroupId) onChecked;
  const SesameRadioButton(
      {super.key,
      required this.onChecked,
      required this.id,
      required this.groupID,
      required this.label,
      this.isEnabled = true});

  @override
  State<StatefulWidget> createState() => SesameRadioButtonState();
}
