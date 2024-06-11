import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/student_subscription_record.dart';
import '../navigation/UsersNavigationConfiguration.gr.dart';

class SubscriptionPaymentDetailsState
    extends State<SubscriptionPaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).profile_subscription, null,
        () {
      AutoRouter.of(context).back();
    }, const AutoRouter());
  }
}

@RoutePage(name: "SubscriptionPaymentDetailsRoute")
class SubscriptionPaymentDetailsScreen extends StatefulWidget {
  final StudentSubscriptionRecord paymentRecord;
  const SubscriptionPaymentDetailsScreen(
      {super.key, required this.paymentRecord});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentDetailsState();
}
