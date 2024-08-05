import 'package:designsystem/components/images/custom_icon.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/material.dart';

class CustomClickableIcon extends StatelessWidget {
  final String iconSVGname;
  final Color? color;
  final EdgeInsets clickablePadding;
  final double sizeScale;
  final VoidCallback onClicked;
  const CustomClickableIcon(
      {super.key,
      required this.iconSVGname,
      this.color,
      required this.onClicked,
      this.clickablePadding = EdgeInsets.zero,
      this.sizeScale = 1.0});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onClicked,
        child: Padding(
            padding: clickablePadding,
            child: CustomIcon(
              iconSVGname: iconSVGname,
              color: color,
              sizeScale: sizeScale,
            )),
      );
}
