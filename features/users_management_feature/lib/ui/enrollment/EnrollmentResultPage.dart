import 'package:designsystem/components/textViews/headlines/HeadlineMedium.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

enum EnrollmentResultState {
  success,
  errorSendingRequest,
  errorRequestRejected
}

class EnrollmentResultPage extends StatelessWidget {
  final EnrollmentResultState state;
  const EnrollmentResultPage(
      {super.key, this.state = EnrollmentResultState.errorRequestRejected});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: CustomAssetImage(
                    assetImagePath:
                        'raster/screen_${state == EnrollmentResultState.success ? "success" : "error"}.png',
                    height: 144.r,
                    width: 144.r),
              ),
              SizedBox(height: 32.h),
              HeadlineMedium(
                text: switch (state) {
                  EnrollmentResultState.success =>
                    S.of(context).enrollment_submit_result_success_message,
                  EnrollmentResultState.errorSendingRequest => S
                      .of(context)
                      .enrollment_submit_result_error_unknown_message,
                  EnrollmentResultState.errorRequestRejected => S
                      .of(context)
                      .enrollment_submit_result_error_rejected_message
                },
                softWrap: true,
                textAlign: TextAlign.center,
                color: const Color(0xFF5F5F5F),
              )
            ]));
  }
}
