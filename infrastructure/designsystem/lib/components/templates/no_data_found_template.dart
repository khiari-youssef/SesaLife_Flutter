import 'package:designsystem/designsystem_exports.dart';

class NoDataFoundTemplate extends StatelessWidget {
  final String message;
  const NoDataFoundTemplate({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          16.verticalSpace,
          TitleLarge(text: message),
          24.verticalSpace,
          CustomAssetImage(
            assetImagePath: "raster/no_data_found.png",
            height: 255.h,
            width: 255.w,
          )
        ]);
  }
}
