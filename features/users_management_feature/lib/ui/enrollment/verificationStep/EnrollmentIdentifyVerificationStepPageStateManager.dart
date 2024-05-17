import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentIdentifyVerificationStepPageStateManager extends Cubit<bool> {
  EnrollmentIdentifyVerificationStepPageStateManager(super.initialState);

  void checkVerificationCode() async {
    emit(true);
  }

  void refreshVerificationCode() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
