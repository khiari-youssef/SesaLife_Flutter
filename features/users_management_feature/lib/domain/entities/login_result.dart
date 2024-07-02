import 'package:users_management_feature/domain/entities/SesameUser.dart';

class LoginResult {
  final String token;
  final SesameUser user;
  LoginResult({required this.token, required this.user});
}
