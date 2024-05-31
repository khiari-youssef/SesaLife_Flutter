import 'package:designsystem/designsystem_exports.dart';

class HeadlineLarge extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final int? maxLines;
  const HeadlineLarge(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color,
      this.maxLines});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context)
            .typography
            .black
            .headlineLarge
            ?.copyWith(color: color ?? Theme.of(context).colorScheme.onSurface),
        textAlign: textAlign,
        maxLines: maxLines,
      );
}
