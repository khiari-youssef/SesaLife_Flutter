import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/student_subscription_record.dart';

class SubscriptionPaymentInterfaceState
    extends State<SubscriptionPaymentInterface> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).payment, null, () {
      AutoRouter.of(context).back();
    }, const Center());
  }
}

@RoutePage(name: "SubscriptionPaymentInterfaceRoute")
class SubscriptionPaymentInterface extends StatefulWidget {
  final StudentSubscriptionRecord paymentRecord;
  const SubscriptionPaymentInterface({super.key, required this.paymentRecord});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentInterfaceState();
}
