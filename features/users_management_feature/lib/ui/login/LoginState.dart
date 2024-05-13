import 'package:shared_dependencies/shared_dependencies.dart';

part 'LoginState.freezed.dart';

enum ErrorType { InvalidCredentials, UnknownError }

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.idle(bool hasInValidInput) = _idle;
  const factory LoginState.onEmailUpdated(String email) = _onEmailUpdated;
  const factory LoginState.onPasswordUpdated(String password) =
      _onPasswordUpdated;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success() = _Success;
  const factory LoginState.error(ErrorType errorType) = _Error;
}

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String email, String password) = _login;
  const factory LoginEvent.updateEmail(String email) = _updateEmail;
  const factory LoginEvent.updatePassword(String password) = _updatePassword;
}
