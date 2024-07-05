import 'package:shared_dependencies/shared_dependencies.dart';

class SessionDetailsBaseScreenState extends State<SessionDetailsBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, "", null, () {
      AutoRouter.of(context).back();
    },
        const Center(
          child: Text("SessionDetailsBaseScreen"),
        ));
  }
}

@RoutePage(name: "SessionDetailsRoute")
class SessionDetailsBaseScreen extends StatefulWidget {
  const SessionDetailsBaseScreen({super.key});

  @override
  State<StatefulWidget> createState() => SessionDetailsBaseScreenState();
}
