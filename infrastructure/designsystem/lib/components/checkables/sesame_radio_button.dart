import 'package:designsystem/designsystem_exports.dart';

class SesameRadioButtonState<T> extends State<SesameRadioButton<T>> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return LimitedBox(
        maxWidth: widget.maxWidth ?? double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio<T>(
                  value: widget.id,
                  fillColor: WidgetStatePropertyAll(widget.isEnabled
                      ? primaryColor
                      : Color.alphaBlend(
                          const Color(0xCCF3F3F3), primaryColor)),
                  activeColor: widget.isEnabled
                      ? primaryColor
                      : Color.alphaBlend(const Color(0xCCF3F3F3), primaryColor),
                  groupValue: widget.isEnabled ? widget.groupID : null,
                  onChanged: (newGroupId) {
                    if (widget.isEnabled) {
                      widget.onChecked(newGroupId);
                    }
                  }),
              Expanded(
                  child: LabelMedium(
                text: widget.label,
                softWrap: true,
                textAlign: TextAlign.start,
              )),
            ]));
  }
}

class SesameRadioButton<T> extends StatefulWidget {
  final T id;
  final T? groupID;
  final String label;
  final bool isEnabled;
  final double? maxWidth;
  final Function(T? newGroupId) onChecked;
  const SesameRadioButton(
      {super.key,
      required this.onChecked,
      required this.id,
      required this.groupID,
      required this.label,
      this.isEnabled = true,
      this.maxWidth});

  @override
  State<StatefulWidget> createState() => SesameRadioButtonState<T>();
}
