import 'package:shared_dependencies/shared_dependencies.dart';

part 'MyProfileScreenEvent.freezed.dart';

@freezed
class MyProfileScreenEvent with _$MyProfileScreenEvent {
  const factory MyProfileScreenEvent.loadMyProfileData() = _$loadMyProfileData;
  const factory MyProfileScreenEvent.logout() = _$logout;
}
