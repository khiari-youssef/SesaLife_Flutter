import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep4PageState extends State<EnrollmentStep4Page> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("EnrollementStep4"),
    );
  }
}

@RoutePage(name: "EnrollmentStep4Route")
class EnrollmentStep4Page extends StatefulWidget {
  const EnrollmentStep4Page({super.key});

  @override
  State<StatefulWidget> createState() => EnrollmentStep4PageState();
}
