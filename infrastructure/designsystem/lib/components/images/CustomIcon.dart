import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final String iconSVGname;
  final Color? color;
  const CustomIcon({super.key, required this.iconSVGname, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/images/vector/$iconSVGname",
        package: 'designsystem',
        colorFilter: ColorFilter.mode(
            color ?? Theme.of(context).colorScheme.onBackground,
            BlendMode.srcIn),
        fit: BoxFit.fill,
        width: 24.r,
        height: 24.r);
  }
}
