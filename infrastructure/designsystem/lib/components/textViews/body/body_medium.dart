import 'dart:ui';

import 'package:designsystem/designsystem_exports.dart';

class BodyMedium extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final bool? softWrap;
  final TextDecoration decoration;
  final int? maxLines;
  const BodyMedium(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color,
      this.softWrap,
      this.maxLines,
      this.decoration = TextDecoration.none});

  @override
  Widget build(BuildContext context) => Text(text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: color ?? Theme.of(context).colorScheme.onSurface,
          decoration: decoration),
      textAlign: textAlign,
      softWrap: softWrap,
      maxLines: maxLines);
}
