import 'package:designsystem/designsystem_exports.dart';

class BodySmall extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  const BodySmall(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).typography.black.bodySmall?.copyWith(
            color: color ?? Theme.of(context).colorScheme.onBackground),
        textAlign: textAlign,
      );
}
