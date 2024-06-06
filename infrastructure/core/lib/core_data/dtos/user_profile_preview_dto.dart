import 'package:shared_dependencies/shared_dependencies.dart';

part 'user_profile_preview_dto.g.dart';

@JsonSerializable()
class UserProfilePreviewDTO {
  final String id;
  final String firstName;
  final String? lastName;
  final String email;
  final String? profilePicture;
  UserProfilePreviewDTO(
      {required this.id,
      required this.firstName,
      this.lastName,
      required this.email,
      this.profilePicture});

  factory UserProfilePreviewDTO.fromJson(Map<String, dynamic> json) =>
      _$UserProfilePreviewDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserProfilePreviewDTOToJson(this);
}
