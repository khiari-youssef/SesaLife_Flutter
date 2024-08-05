import 'package:core/core_domain/form_text_validation_state.dart';
import 'package:core/core_domain/utilities.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class EnrollmentStep1PageStateManager extends Cubit<FormTextValidationState> {
  EnrollmentStep1PageStateManager(super.initialState);

  void checkEmailState(String email) {
    if (email.trim().isEmpty) {
      emit(const FormTextValidationState.invalid(
          FormTextInvalidStateType.required));
    } else {
      if (email.hasValidEmailFormat()) {
        emit(const FormTextValidationState.valid());
      } else {
        emit(const FormTextValidationState.invalid(
            FormTextInvalidStateType.format));
      }
    }
  }
}
