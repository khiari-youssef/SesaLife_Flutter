import 'package:shared_dependencies/shared_dependencies.dart';

@RoutePage(name: "SesameUnauthorizedDeviceRoute")
class SesameUnauthorizedDeviceScreen extends StatelessWidget {
  const SesameUnauthorizedDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return basicScreenBuilder(
        context,
        null,
        Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: Center(
                      child: CustomAssetImage(
                assetImagePath: 'raster/screen_error.png',
                height: 200.h,
                width: 200.w,
              ))),
              Flexible(
                  child: Center(
                      child: HeadlineLarge(
                          text: S.of(context).device_auth_unsupported,
                          textAlign: TextAlign.center)))
            ]));
  }
}
