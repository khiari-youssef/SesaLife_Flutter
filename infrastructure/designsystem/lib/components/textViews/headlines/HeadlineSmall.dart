import 'package:designsystem/designsystem_exports.dart';

class HeadlineSmall extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  const HeadlineSmall(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: color ?? Theme.of(context).colorScheme.onSurface),
        textAlign: textAlign,
      );
}
