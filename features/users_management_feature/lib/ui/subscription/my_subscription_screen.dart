import 'package:core/core_domain/entities/entities.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/stateManagement/my_subscriptions_bloc.dart';
import 'package:users_management_feature/ui/subscription/student_subscription_record_card.dart';

import '../../domain/entities/student_subscription_record.dart';

class MySubscriptionScreenState extends State<MySubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).profile_subscription, null,
        () {
      AutoRouter.of(context).back();
    },
        BlocProvider(
            create: (BuildContext context) => MySubscriptionsBloc()
              ..add(const MySubscriptionsEvent.loadMySubscriptions()),
            child: BlocConsumer<MySubscriptionsBloc, MySubscriptionsState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.when(
                      loading: () {
                        return Center();
                      },
                      error: (errorType) {
                        return Center();
                      },
                      success: (data) => Padding(
                          padding: EdgeInsets.all(8.r),
                          child: ListView.builder(
                              itemCount: data.transactions.length,
                              itemBuilder: (context, index) {
                                StudentSubscriptionRecord record =
                                    data.transactions[index];
                                return StudentSubscriptionRecordCard(
                                    record: record, onClicked: () {});
                              })));
                })));
  }
}

@RoutePage(name: "MySubscriptionRoute")
class MySubscriptionScreen extends StatefulWidget {
  const MySubscriptionScreen({super.key});

  @override
  State<StatefulWidget> createState() => MySubscriptionScreenState();
}
