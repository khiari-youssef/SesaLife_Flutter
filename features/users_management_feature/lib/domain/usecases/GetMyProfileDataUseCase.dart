import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:users_management_feature/domain/entities/SesameClass.dart';
import 'package:users_management_feature/domain/entities/SesameStudent.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../../infrastructure/ports/repositoryGateway/UserDataRepositoryContract.dart';
import '../entities/SesameBadge.dart';
import '../entities/SesameRole.dart';

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
      throw Exception("User not found");
    });
  }
}
