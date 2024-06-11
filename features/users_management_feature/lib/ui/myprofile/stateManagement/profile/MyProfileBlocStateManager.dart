import 'package:core/core_domain/DomainErrorType.dart';
import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/profile/MyProfileScreenEvent.dart';

import '../../../../domain/entities/SesameUser.dart';
import 'MyProfileDataState.dart';
import 'MyProfileScreenGlobalState.dart';

class MyProfileBlocStateManager
    extends Bloc<MyProfileScreenEvent, MyProfileScreenGlobalState> {
  final NoInputDomainUseCaseProtocol<Future<SesameUser>> getUserProfileUsecase;
  MyProfileBlocStateManager(super.initialState, this.getUserProfileUsecase) {
    on((event, emit) async {
      if (event is MyProfileScreenEvent) {
        event.when(
            loadMyProfileData: () {
              getUserProfileUsecase.execute().then((result) {
                emit(state.copyWith(
                    profileDataState: MyProfileDataState.success(result)));
              }, onError: (error) {
                emit(state.copyWith(
                    profileDataState: const MyProfileDataState.error(
                        DomainErrorType.NotFound)));
              });
            },
            logout: () {});
      }
    });
  }
}
