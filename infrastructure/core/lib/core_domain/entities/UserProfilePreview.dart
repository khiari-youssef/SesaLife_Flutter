import 'package:shared_dependencies/shared_dependencies.dart';

part 'UserProfilePreview.freezed.dart';

@freezed
class UserProfilePreview with _$UserProfilePreview {
  const factory UserProfilePreview(
      {required String id,
      required String firstName,
      required String lastName,
      required String email,
      required String profilePicture}) = _UserProfilePreview;
}
