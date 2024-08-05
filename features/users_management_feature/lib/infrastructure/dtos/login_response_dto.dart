import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_user_dto.dart';

part 'login_response_dto.g.dart';

@JsonSerializable()
class LoginResponseDTO {
  @JsonKey(name: "accessToken")
  final String? token;
  @JsonKey(name: "user")
  final SesameUserDTO? user;
  LoginResponseDTO({this.token, this.user});
}
