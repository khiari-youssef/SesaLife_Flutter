import 'package:designsystem/theme/dimens.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class LabeledDisplayText extends StatelessWidget {
  final String label;
  final String value;
  final Color? labelColor;
  final Color? valueColor;
  final ComponentSize size;
  const LabeledDisplayText(
      {super.key,
      required this.label,
      required this.value,
      required this.size,
      this.labelColor,
      this.valueColor});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Text.rich(TextSpan(children: [
      TextSpan(
          style: switch (size) {
            ComponentSize.listSize => textTheme.labelSmall,
            ComponentSize.screenSize => textTheme.labelMedium
          }
              ?.copyWith(
                  color: labelColor ?? Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w500),
          text: "$label : "),
      WidgetSpan(child: 8.horizontalSpace),
      TextSpan(
          style: switch (size) {
            ComponentSize.listSize => textTheme.labelSmall,
            ComponentSize.screenSize => textTheme.labelMedium
          }
              ?.copyWith(
                  color: valueColor ?? Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w400),
          text: value),
    ]));
  }
}
