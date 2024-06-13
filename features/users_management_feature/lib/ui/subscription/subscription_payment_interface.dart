import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/subscription_payment_method.dart';

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
  final PaymentMethod paymentMethod;
  const SubscriptionPaymentInterface(
      {super.key, required this.paymentRecord, required this.paymentMethod});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentInterfaceState();
}
