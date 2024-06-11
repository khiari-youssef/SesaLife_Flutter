import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class SubscriptionPaymentInterfaceState
    extends State<SubscriptionPaymentInterface> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("SubscriptionPaymentInterface"),
    );
  }
}

@RoutePage(name: "SubscriptionPaymentInterfaceRoute")
class SubscriptionPaymentInterface extends StatefulWidget {
  const SubscriptionPaymentInterface({super.key});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentInterfaceState();
}
