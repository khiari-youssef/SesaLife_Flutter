import 'package:designsystem/designsystem_exports.dart';

class TitleMedium extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  const TitleMedium(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).typography.black.titleMedium?.copyWith(
            color: color ?? Theme.of(context).colorScheme.onBackground),
        textAlign: textAlign,
      );
}
