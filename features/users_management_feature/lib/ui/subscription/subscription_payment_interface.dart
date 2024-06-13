import 'dart:ui';

import 'package:core/exports.dart';
import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/subscription_payment_method.dart';

import '../../domain/entities/student_subscription_record.dart';
import 'components/CreditCardPreview.dart';

class SubscriptionPaymentInterfaceState
    extends State<SubscriptionPaymentInterface> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).payment, null, () {
      AutoRouter.of(context).back();
    },
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
          child: const Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CreditCardPreview(
                  cardType: CreditCardType.masterCard,
                  cardHolderName: "Youssef Khiari",
                  cardNumber: "4532 7890 5436 5123",
                  cardExpirationDate: "06/27",
                )
              ]),
        ));
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
