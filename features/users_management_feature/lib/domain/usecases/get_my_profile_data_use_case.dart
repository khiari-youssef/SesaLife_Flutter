import 'package:core/core_domain/domain_use_case_protocol.dart';
import 'package:core/core_utils/logger.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';
import 'package:users_management_feature/domain/ports/repositoryContracts/UserDataRepositoryContract.dart';

class GetMyProfileDataUseCase
    implements NoInputDomainUseCaseProtocol<Future<SesameUser>> {
  final UserdataRepositoryContract repositoryContract;
  GetMyProfileDataUseCase(this.repositoryContract);

  @override
  Future<SesameUser> execute() {
    return repositoryContract.getCurrentUserProfileData().then((user) {
      if (user != null) {
        return user;
      } else {
        throw Exception("User not found");
      }
    }, onError: (error) {
      logger.e(error);
      throw Exception("User not found");
    });
  }
}
