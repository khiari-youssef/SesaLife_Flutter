import 'package:shared_dependencies/shared_dependencies.dart';

part 'login_method.freezed.dart';

@freezed
class LoginMethod with _$LoginMethod {
  const factory LoginMethod.credentialLogin(String email, String password) =
      _credentialLogin;
  const factory LoginMethod.tokenLogin() = _tokenLogin;
}
