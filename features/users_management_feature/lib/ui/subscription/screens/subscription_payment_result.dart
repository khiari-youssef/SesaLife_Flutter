import 'package:core/core_utils/Logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart';

@RoutePage(name: "SubscriptionPaymentResultRoute")
class SubscriptionPaymentResultScreen extends StatelessWidget {
  final PaymentMethod paymentMethod;
  final bool isPaymentSuccessful;
  const SubscriptionPaymentResultScreen(
      {super.key,
      required this.paymentMethod,
      required this.isPaymentSuccessful});

  @override
  Widget build(BuildContext context) {
    StackRouter autoRouter = AutoRouter.of(context);
    return WillPopScope(
        onWillPop: () async {
          context.router.popUntilRouteWithName("MySubscriptionRoute");
          return true;
        },
        child: basicScreenBuilder(
            context,
            null,
            Center(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomAssetImage(
                        height: 100.h,
                        width: 100.w,
                        assetImagePath:
                            "raster/screen_${isPaymentSuccessful ? "success" : "error"}.png"),
                    16.verticalSpace,
                    BodyLarge(
                        text: switch (paymentMethod) {
                          PaymentMethod.clickToPay => isPaymentSuccessful
                              ? S
                                  .of(context)
                                  .payment_credit_card_result_message_success
                              : S
                                  .of(context)
                                  .payment_credit_card_result_message_error,
                          PaymentMethod.cashOrCheck =>
                            S.of(context).payment_cashOrCheck_result_message
                        },
                        textAlign: TextAlign.center),
                    24.verticalSpace,
                    SesameCustomButton(
                        buttonText: S.of(context).go_back,
                        onPressed: () {
                          if (paymentMethod == PaymentMethod.clickToPay &&
                              !isPaymentSuccessful) {
                            autoRouter.back();
                          } else {
                            autoRouter.popUntilRouteWithName(
                                "MySubscriptionRoute",
                                scoped: true);
                          }
                        })
                  ]),
            )));
  }
}
