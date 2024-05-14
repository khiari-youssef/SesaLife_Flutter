import 'package:designsystem/designsystem_exports.dart';

class SesameAvatar extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  const SesameAvatar(
      {super.key,
      required this.width,
      required this.height,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipOval(
        child:
            Image.network(url, width: width, height: height, fit: BoxFit.fill),
      ),
    );
  }

  static Widget sesameAvatar24size(String url) {
    return SesameAvatar(
      url: url,
      width: 24.r,
      height: 24.r,
    );
  }

  static Widget sesameAvatar36size(String url) {
    return SesameAvatar(
      url: url,
      width: 36.r,
      height: 36.r,
    );
  }

  static Widget sesameAvatar48size(String url) {
    return SesameAvatar(
      url: url,
      width: 48.r,
      height: 48.r,
    );
  }

  static Widget sesameAvatar72size(String url) {
    return SesameAvatar(
      url: url,
      width: 72.r,
      height: 72.r,
    );
  }

  static Widget sesameAvatar96size(String url) {
    return SesameAvatar(
      url: url,
      width: 96.r,
      height: 96.r,
    );
  }

  static Widget sesameAvatar120size(String url) {
    return SesameAvatar(
      url: url,
      width: 120.r,
      height: 120.r,
    );
  }
}
