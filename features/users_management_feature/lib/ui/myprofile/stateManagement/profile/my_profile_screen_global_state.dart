import 'package:shared_dependencies/shared_dependencies.dart';

import 'my_profile_data_state.dart';

part 'my_profile_screen_global_state.freezed.dart';

@freezed
class MyProfileScreenGlobalState with _$MyProfileScreenGlobalState {
  const factory MyProfileScreenGlobalState(
      {required MyProfileDataState profileDataState,
      required bool isLoggedOut}) = _MyProfileScreenGlobalState;
}
