import 'package:designsystem/designsystem_exports.dart';

class TitleSmall extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final TextDecoration? decoration;
  const TitleSmall(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color,
      this.decoration});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: color ?? Theme.of(context).colorScheme.onSurface,
            decoration: decoration),
        textAlign: textAlign,
      );
}
