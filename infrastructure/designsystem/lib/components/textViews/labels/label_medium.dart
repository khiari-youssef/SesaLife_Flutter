import 'package:designsystem/designsystem_exports.dart';

class LabelMedium extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final bool? softWrap;
  const LabelMedium(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color,
      this.softWrap});

  @override
  Widget build(BuildContext context) => Text(text,
      style: Theme.of(context)
          .textTheme
          .labelMedium
          ?.copyWith(color: color ?? Theme.of(context).colorScheme.onSurface),
      textAlign: textAlign,
      softWrap: softWrap);
}
