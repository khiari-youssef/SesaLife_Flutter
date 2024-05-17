import 'package:flutter/cupertino.dart';

class CustomAssetImage extends StatelessWidget {
  final String assetImagePath;
  final double? height;
  final double? width;
  const CustomAssetImage(
      {super.key, required this.assetImagePath, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/$assetImagePath",
        package: "designsystem", height: height, width: width);
  }

  static Widget get16by9RatioFormatByWidth(
      String assetImageName, double? width) {
    return AspectRatio(
        aspectRatio: 16.0 / 9.0,
        child: CustomAssetImage(
            assetImagePath: assetImageName, width: width ?? double.infinity));
  }
}
