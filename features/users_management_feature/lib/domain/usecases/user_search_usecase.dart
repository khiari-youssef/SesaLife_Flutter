import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

enum UserRoleSearchFilter { student, teacher, admin, all }

class UserSearchQuery {
  final String queryInput;
  final bool? queryByEmail;
  final bool? queryByName;
  final UserRoleSearchFilter roleSearchFilter;
  UserSearchQuery(
      {required this.queryInput,
      this.queryByEmail,
      this.queryByName,
      required this.roleSearchFilter});
}

class UserSearchUseCase
    implements DomainUseCaseProtocol<UserSearchQuery, List<SesameUser>> {
  @override
  List<SesameUser> execute(UserSearchQuery input) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}
