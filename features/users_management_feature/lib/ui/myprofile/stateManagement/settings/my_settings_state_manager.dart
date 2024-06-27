import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/settings/my_settings_event.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/settings/my_settings_state.dart';

import '../../../../domain/entities/my_settings_data.dart';
import '../../../../infrastructure/repositories/user_settings_repository.dart';

class MySettingsStateManager extends Bloc<MySettingsEvent, MySettingsState> {
  UserSettingsRepositoryContract repository =
      GetIt.instance.get(instanceName: "UserSettingsRepository");

  MySettingsStateManager(super.initialState) {
    on((MySettingsEvent event, emit) async {
      await event.when(toggleStayLoggedInOption: (isChecked) async {
        await repository.toggleStayLoggedInOption(isChecked);
      }, toggleHideMyWorkDataOption: (isChecked) async {
        await repository.toggleHideMyWorkDataOption(isChecked);
      }, toggleNotifyMeOption: (isChecked) async {
        await repository.toggleNotifyMeOption(isChecked);
      }, loadInitialData: () async {
        MySettingsData data = await repository.loadSettingsData();
        emit(MySettingsState.initialState(data: data));
      });
    });
  }
}
