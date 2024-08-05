import 'dart:async';
import 'dart:ui';

import 'package:shared_dependencies/shared_dependencies.dart';

import '../core_utils/bio_utils.dart';
import '../core_utils/qrCode.dart';

class SesameBadgeWidgetState extends State<SesameBadgeWidget> {
  bool isHidden = true;
  SesameDeviceAuthManager authManager = GetIt.instance.get();

  void startTimer() {
    Timer(widget.visibilityDuration, () {
      setState(() {
        isHidden = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget qrCodeWidget() => SizedBox(
        height: 200.h,
        width: 200.w,
        child: getQrCodeWidgetForData(widget.data));
    return widget.isExpired
        ? Stack(
            alignment: Alignment.center,
            children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: qrCodeWidget(),
              ),
              Card(
                  elevation: 1,
                  color: Theme.of(context).colorScheme.error.withAlpha(150),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 24.w),
                      child: HeadlineMedium(
                          text: S.of(context).badge_expired,
                          color: Colors.white)))
            ],
          )
        : isHidden
            ? Stack(
                alignment: Alignment.center,
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                    child: qrCodeWidget(),
                  ),
                  SesameCustomButton(
                      variant: SesameButtonVariant.neutral,
                      buttonText: S.of(context).badge_click_to_scan,
                      onPressed: () {
                        if (!widget.isExpired) {
                          authManager.requireAuthenticationAsync(context,
                              onActionAuthorized: () {
                            setState(() {
                              isHidden = false;
                            });
                            startTimer();
                          });
                        }
                      })
                ],
              )
            : qrCodeWidget();
  }
}

class SesameBadgeWidget extends StatefulWidget {
  final String data;
  final bool isExpired;
  final Duration visibilityDuration;

  const SesameBadgeWidget(
      {super.key,
      required this.data,
      this.isExpired = false,
      required this.visibilityDuration});

  @override
  State<StatefulWidget> createState() => SesameBadgeWidgetState();
}
