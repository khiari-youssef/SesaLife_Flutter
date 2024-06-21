import 'package:shared_dependencies/shared_dependencies.dart';

part 'MyProfileScreenEvent.freezed.dart';

@freezed
class MyProfileScreenEvent with _$MyProfileScreenEvent {
  const factory MyProfileScreenEvent.loadMyProfileData() = _loadMyProfileData;
  const factory MyProfileScreenEvent.logout() = _logout;
}
