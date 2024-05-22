import 'package:shared_dependencies/shared_dependencies.dart';

part 'LoginMethod.freezed.dart';

@freezed
class LoginMethod with _$LoginMethod {
  const factory LoginMethod.credentialLogin(String email, String password) =
      _credentialLogin;
  const factory LoginMethod.tokenLogin(String token) = _tokenLogin;
}
