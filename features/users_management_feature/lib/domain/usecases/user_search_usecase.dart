import 'package:core/core_domain/domain_use_case_protocol.dart';
import 'package:core/core_domain/entities/user_profile_preview.dart';

import '../../infrastructure/repositories/users_search_repository.dart';

enum UserRoleSearchFilter { student, teacher, admin, all }

class UserSearchQuery {
  final String? queryInput;
  final bool? queryByEmail;
  final bool? queryByName;
  final String? classGroupID;
  final UserRoleSearchFilter roleSearchFilter;
  UserSearchQuery(
      {this.queryInput,
      this.queryByEmail,
      this.queryByName,
      this.classGroupID,
      required this.roleSearchFilter});
}

class UserSearchUseCase
    implements
        DomainUseCaseProtocol<UserSearchQuery,
            Future<List<UserProfilePreview>>> {
  final UsersSearchRepositoryContract repositoryContract;
  UserSearchUseCase(this.repositoryContract);

  @override
  Future<List<UserProfilePreview>> execute(UserSearchQuery input) async {
    await Future.delayed(const Duration(seconds: 1));
    return repositoryContract.queryUsersByParams(
        nameQuery: input.queryInput ?? "", classGroupID: input.classGroupID);
  }
}
