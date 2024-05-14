import 'package:designsystem/designsystem_exports.dart';

class TitleLarge extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  const TitleLarge(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).typography.black.titleLarge?.copyWith(
            color: color ?? Theme.of(context).colorScheme.onBackground),
        textAlign: textAlign,
      );
}
