import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep2PageState extends State<EnrollmentStep2Page> {
  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: []);
  }
}

@RoutePage(name: "EnrollmentStep2Route")
class EnrollmentStep2Page extends StatefulWidget {
  const EnrollmentStep2Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep2PageState();
}
