import 'package:cached_network_image/cached_network_image.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SesameAvatar extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final String placeholder;
  const SesameAvatar(
      {super.key,
      required this.width,
      required this.height,
      required this.url,
      required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipOval(
        child: CachedNetworkImage(
          height: height,
          width: width,
          fit: BoxFit.fill,
          imageUrl: url,
          placeholder: (context, url) => SvgPicture.asset(
              "assets/images/vector/$placeholder",
              package: "designsystem"),
          errorWidget: (context, url, error) => SvgPicture.asset(
              "assets/images/vector/$placeholder",
              package: "designsystem"),
        ),
      ),
    );
  }

  static Widget sesameAvatar24size(String url, String placeholder) {
    return SesameAvatar(
      url: url,
      width: 24.r,
      height: 24.r,
      placeholder: placeholder,
    );
  }

  static Widget sesameAvatar36size(String url, String placeholder) {
    return SesameAvatar(
      url: url,
      width: 36.r,
      height: 36.r,
      placeholder: placeholder,
    );
  }

  static Widget sesameAvatar48size(String url, String placeholder) {
    return SesameAvatar(
        url: url, width: 48.r, height: 48.r, placeholder: placeholder);
  }

  static Widget sesameAvatar72size(String url, String placeholder) {
    return SesameAvatar(
      url: url,
      width: 72.r,
      height: 72.r,
      placeholder: placeholder,
    );
  }

  static Widget sesameAvatar96size(String url, String placeholder) {
    return SesameAvatar(
      url: url,
      width: 96.r,
      height: 96.r,
      placeholder: placeholder,
    );
  }

  static Widget sesameAvatar120size(String url, String placeholder) {
    return SesameAvatar(
      url: url,
      width: 120.r,
      height: 120.r,
      placeholder: placeholder,
    );
  }
}
