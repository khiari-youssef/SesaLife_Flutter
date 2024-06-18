import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/components/student_subscription_record_card.dart';
import 'package:users_management_feature/ui/subscription/stateManagement/mySubscriptionRecords/my_subscriptions_bloc.dart';

import '../../../domain/entities/student_subscription_record.dart';
import '../../navigation/users_navigation_configuration.gr.dart';

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
                        return Center(
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        );
                      },
                      error: (errorType) {
                        return const Center();
                      },
                      success: (data) => Padding(
                          padding: EdgeInsets.all(8.r),
                          child: ListView.builder(
                              itemCount: data.transactions.length,
                              itemBuilder: (context, index) {
                                StudentSubscriptionRecord record =
                                    data.transactions[index];
                                return StudentSubscriptionRecordCard(
                                    record: record,
                                    onClicked: () {
                                      record.when(
                                          unPaid: (data) {
                                            if (data.isPaymentOverdue()) {
                                            } else {
                                              AutoRouter.of(context).push(
                                                  SubscriptionPaymentMethodRoute(
                                                      paymentRecord: record));
                                            }
                                          },
                                          paid: (data) {});
                                    });
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
