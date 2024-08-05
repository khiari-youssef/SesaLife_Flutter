import 'package:shared_dependencies/shared_dependencies.dart';

class HomeNotificationsScreenState extends State<HomeNotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("HomeNotificationsScreen"),
    );
  }
}

@RoutePage(name: "HomeNotificationsRoute")
class HomeNotificationsScreen extends StatefulWidget {
  const HomeNotificationsScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeNotificationsScreenState();
}
