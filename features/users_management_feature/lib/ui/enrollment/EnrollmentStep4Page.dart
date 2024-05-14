import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep4PageState extends State<EnrollmentStep4Page> {
  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: []);
  }
}

@RoutePage(name: "EnrollmentStep4Route")
class EnrollmentStep4Page extends StatefulWidget {
  const EnrollmentStep4Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep4PageState();
}
