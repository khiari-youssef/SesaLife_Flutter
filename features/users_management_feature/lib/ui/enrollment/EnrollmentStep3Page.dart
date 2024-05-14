import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep3PageState extends State<EnrollmentStep3Page> {
  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: []);
  }
}

@RoutePage(name: "EnrollmentStep3Route")
class EnrollmentStep3Page extends StatefulWidget {
  const EnrollmentStep3Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep3PageState();
}
