import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart';

import '../../../domain/entities/payment_transaction_result.dart';

@RoutePage(name: "SubscriptionPaymentResultRoute")
class SubscriptionPaymentResultScreen extends StatelessWidget {
  final PaymentMethod paymentMethod;
  final SesamePaymentTransactionResult? paymentTransactionResult;
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
                padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.h),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...(paymentMethod == PaymentMethod.cashOrCheck)
                          ? [
                              TitleMedium(
                                  text: S
                                      .of(context)
                                      .payment_cashOrCheck_result_message,
                                  textAlign: TextAlign.center)
                            ]
                          : [
                              CustomAssetImage(
                                  height: 100.h,
                                  width: 100.w,
                                  assetImagePath:
                                      "raster/screen_${paymentTransactionResult != null ? "success" : "error"}.png"),
                              24.verticalSpace,
                              TitleMedium(
                                  text: paymentTransactionResult != null
                                      ? S
                                          .of(context)
                                          .payment_credit_card_result_message_success
                                      : S
                                          .of(context)
                                          .payment_credit_card_result_message_error,
                                  textAlign: TextAlign.center),
                              24.verticalSpace,
                              buildWhenNullSafe(paymentTransactionResult,
                                  (result) {
                                return LabelLarge(
                                    text: S
                                        .of(context)
                                        .payment_cashOrCheck_result_trans_id(
                                            result.recordID),
                                    color: const Color(0xFF5F5F5F));
                              }),
                              12.verticalSpace,
                              buildWhenNullSafe(paymentTransactionResult,
                                  (result) {
                                return LabelMedium(
                                    text: S
                                        .of(context)
                                        .payment_cashOrCheck_result_datetime(
                                            result.paymentDate.toDisplayDate(),
                                            result.paymentDate.toDisplayTime()),
                                    color: const Color(0xFF5F5F5F));
                              })
                            ],
                      24.verticalSpace,
                      Expanded(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: SesameCustomButton(
                                  buttonText: S.of(context).go_back,
                                  onPressed: () {
                                    if (paymentMethod ==
                                            PaymentMethod.clickToPay &&
                                        paymentTransactionResult == null) {
                                      autoRouter.back();
                                    } else {
                                      autoRouter.popUntilRouteWithName(
                                          "MySubscriptionRoute",
                                          scoped: true);
                                    }
                                  })))
                    ]),
              ),
            )));
  }
}
