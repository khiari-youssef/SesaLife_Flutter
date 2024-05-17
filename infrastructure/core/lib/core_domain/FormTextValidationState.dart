import 'package:shared_dependencies/shared_dependencies.dart';

part 'FormTextValidationState.freezed.dart';

enum FormTextInvalidStateType { required, format }

@freezed
sealed class FormTextValidationState with _$FormTextValidationState {
  const factory FormTextValidationState.unchecked() = _unchecked;
  const factory FormTextValidationState.invalid(FormTextInvalidStateType type) =
      _invalid;
  const factory FormTextValidationState.valid() = _valid;
}
