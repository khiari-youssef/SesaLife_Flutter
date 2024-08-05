import 'package:users_management_feature/domain/entities/sesame_user.dart';

class LoginResult {
  final String token;
  final SesameUser user;
  LoginResult({required this.token, required this.user});
}
