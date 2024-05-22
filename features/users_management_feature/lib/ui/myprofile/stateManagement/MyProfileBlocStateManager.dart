import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/MyProfileDataState.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/MyProfileScreenEvent.dart';

import '../../../domain/entities/SesameUser.dart';
import 'MyProfileScreenGlobalState.dart';

class MyProfileBlocStateManager
    extends Bloc<MyProfileScreenEvent, MyProfileScreenGlobalState> {
  final NoInputDomainUseCaseProtocol<SesameUser> getUserProfileUsecase;
  MyProfileBlocStateManager(super.initialState, this.getUserProfileUsecase) {
    on((event, emit) async {
      if (event is MyProfileScreenEvent) {
        event.when(
            loadMyProfileData: () {
              SesameUser currentActiveProfile = getUserProfileUsecase.execute();
              emit(state.copyWith(
                  profileDataState:
                      MyProfileDataState.success(currentActiveProfile)));
            },
            logout: () {});
      }
    });
  }
}
