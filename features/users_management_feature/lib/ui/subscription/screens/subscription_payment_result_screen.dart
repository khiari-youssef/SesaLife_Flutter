import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart';

import '../../../domain/entities/subscription_payment_result.dart';

@RoutePage(name: "SubscriptionPaymentResultRoute")
class SubscriptionPaymentResultScreen extends StatelessWidget {
  final PaymentMethod paymentMethod;
  final SubscriptionPaymentResult? paymentTransactionResult;
  const SubscriptionPaymentResultScreen(
      {super.key,
      required this.paymentMethod,
      required this.paymentTransactionResult});

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
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomAssetImage(
                          height: 100.h,
                          width: 100.w,
                          assetImagePath:
                              "raster/screen_${paymentTransactionResult != null ? "success" : "error"}.png"),
                      16.verticalSpace,
                      BodyLarge(
                          text: switch (paymentMethod) {
                            PaymentMethod.clickToPay =>
                              paymentTransactionResult != null
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
                      buildWhenNullSafe(paymentTransactionResult, (result) {
                        return LabelMedium(
                            text: "Transaction ID : ${result.recordID}");
                      }),
                      8.verticalSpace,
                      buildWhenNullSafe(paymentTransactionResult, (result) {
                        return LabelMedium(
                            text:
                                "Transaction occured on ${result.paymentDate.toDisplayDate()} at ${result.paymentDate.toDisplayTime()}");
                      }),
                      24.verticalSpace,
                      SesameCustomButton(
                          buttonText: S.of(context).go_back,
                          onPressed: () {
                            if (paymentMethod == PaymentMethod.clickToPay &&
                                paymentTransactionResult == null) {
                              autoRouter.back();
                            } else {
                              autoRouter.popUntilRouteWithName(
                                  "MySubscriptionRoute",
                                  scoped: true);
                            }
                          })
                    ]),
              ),
            )));
  }
}
