import 'package:shared_dependencies/shared_dependencies.dart';

class HomeNewsScreenState extends State<HomeNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}

@RoutePage(name: "HomeNewsRoute")
class HomeNewsScreen extends StatefulWidget {
  const HomeNewsScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeNewsScreenState();
}
