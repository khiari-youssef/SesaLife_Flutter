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
}
