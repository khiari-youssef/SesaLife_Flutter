import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/student_subscription_record.dart';
import 'components/student_subscription_record_card.dart';

class SubscriptionPaymentMethodState extends State<SubscriptionPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).payment, null, () {
      AutoRouter.of(context).back();
    },
        Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StudentSubscriptionRecordCard(record: widget.paymentRecord)
                ])));
  }
}

@RoutePage(name: "SubscriptionPaymentMethodRoute")
class SubscriptionPaymentMethod extends StatefulWidget {
  final StudentSubscriptionRecord paymentRecord;
  const SubscriptionPaymentMethod({super.key, required this.paymentRecord});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentMethodState();
}
