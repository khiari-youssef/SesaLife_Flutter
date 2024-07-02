import 'package:core/core_domain/DomainErrorType.dart';
import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_utils/Logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/profile/MyProfileScreenEvent.dart';

import '../../../../domain/entities/SesameUser.dart';
import 'MyProfileDataState.dart';
import 'MyProfileScreenGlobalState.dart';

class MyProfileBlocStateManager
    extends Bloc<MyProfileScreenEvent, MyProfileScreenGlobalState> {
  final NoInputDomainUseCaseProtocol<Future<SesameUser>> getUserProfileUsecase;
  final NoInputDomainUseCaseProtocol<Future<List<void>>> userLogoutUseCase;
  MyProfileBlocStateManager(
      super.initialState, this.getUserProfileUsecase, this.userLogoutUseCase) {
    on<MyProfileScreenEvent>((MyProfileScreenEvent event, emit) async {
      await event.when(loadMyProfileData: () async {
        MyProfileDataState resultState =
            await getUserProfileUsecase.execute().then((result) {
          return MyProfileDataState.success(result);
        }, onError: (error) {
          logger.e(error);
          const MyProfileDataState.error(DomainErrorType.NotFound);
        });
        emit(state.copyWith(profileDataState: resultState));
      }, logout: () async {
        await userLogoutUseCase.execute();
        emit(state.copyWith(isLoggedOut: true));
      });
    });
  }
}
