import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SesameLogo extends StatelessWidget {
  final Size size;
  const SesameLogo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/images/vector/sesame_logo.svg",
        package: 'designsystem',
        fit: BoxFit.fill,
        width: size.width,
        height: size.height);
  }
}
