import 'package:shared_dependencies/shared_dependencies.dart';

import 'MyProfileDataState.dart';

part 'MyProfileScreenGlobalState.freezed.dart';

@freezed
class MyProfileScreenGlobalState with _$MyProfileScreenGlobalState {
  const factory MyProfileScreenGlobalState(
      {required MyProfileDataState profileDataState,
      required bool isLoggedOut}) = _MyProfileScreenGlobalState;
}
