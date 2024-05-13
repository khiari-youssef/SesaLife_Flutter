import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentIdentifyVerificationStepPageState
    extends State<EnrollmentIdentifyVerificationStep> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("EnrollementIdentifyVerificationStep"),
    );
  }
}

@RoutePage(name: "EnrollmentIdentifyVerificationStepRoute")
class EnrollmentIdentifyVerificationStep extends StatefulWidget {
  const EnrollmentIdentifyVerificationStep({super.key});

  @override
  State<StatefulWidget> createState() =>
      EnrollmentIdentifyVerificationStepPageState();
}
