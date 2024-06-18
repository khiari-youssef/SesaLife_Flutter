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
    return basicScreenBuilder(
        context,
        null,
        PopScope(
          child: Center(
              child: BodyLarge(
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
                  textAlign: TextAlign.center)),
          onPopInvoked: (canPop) {
            AutoRouter.of(context).popUntil(
                (route) => route.settings.name == "MySubscriptionRoute");
          },
        ));
  }
}
