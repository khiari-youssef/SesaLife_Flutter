import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep1PageState extends State<EnrollmentStep1Page> {
  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: []);
  }
}

@RoutePage(name: "EnrollmentStep1Route")
class EnrollmentStep1Page extends StatefulWidget {
  const EnrollmentStep1Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep1PageState();
}
