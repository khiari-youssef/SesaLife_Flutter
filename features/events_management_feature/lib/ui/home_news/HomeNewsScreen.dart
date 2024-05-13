import 'package:shared_dependencies/shared_dependencies.dart';

class HomeNewsScreenState extends State<HomeNewsScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Center();
  }
}

@RoutePage(name: "HomeNewsRoute")
class HomeNewsScreen extends StatefulWidget {
  const HomeNewsScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeNewsScreenState();
}
