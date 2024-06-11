import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class SubscriptionPaymentMethodState extends State<SubscriptionPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("subscription_payment_method"),
    );
  }
}

@RoutePage(name: "SubscriptionPaymentMethodRoute")
class SubscriptionPaymentMethod extends StatefulWidget {
  const SubscriptionPaymentMethod({super.key});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentMethodState();
}
