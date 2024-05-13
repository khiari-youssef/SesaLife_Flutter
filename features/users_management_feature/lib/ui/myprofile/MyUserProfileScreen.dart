import 'package:shared_dependencies/shared_dependencies.dart';

class MyUserProfileState extends State<MyUserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("MyUserProfile"),
    );
  }
}

@RoutePage(name: "MyUserProfileRoute")
class MyUserProfileScreen extends StatefulWidget {
  const MyUserProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => MyUserProfileState();
}
