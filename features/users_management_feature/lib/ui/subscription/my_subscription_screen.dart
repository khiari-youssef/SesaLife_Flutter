import 'package:shared_dependencies/shared_dependencies.dart';

class MySubscriptionScreenState extends State<MySubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).profile_subscription, null,
        () {
      AutoRouter.of(context).back();
    }, const Center());
  }
}

@RoutePage(name: "MySubscriptionRoute")
class MySubscriptionScreen extends StatefulWidget {
  const MySubscriptionScreen({super.key});

  @override
  State<StatefulWidget> createState() => MySubscriptionScreenState();
}
