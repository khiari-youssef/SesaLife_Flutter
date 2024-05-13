import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep2PageState extends State<EnrollmentStep2Page> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("EnrollementStep2"),
    );
  }
}

@RoutePage(name: "EnrollmentStep2Route")
class EnrollmentStep2Page extends StatefulWidget {
  const EnrollmentStep2Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep2PageState();
}
