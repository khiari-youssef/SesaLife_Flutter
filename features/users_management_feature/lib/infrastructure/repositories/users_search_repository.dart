import 'package:core/core_domain/entities/SesameClass.dart';
import 'package:core/core_domain/entities/user_profile_preview.dart';
import 'package:core/core_domain/entities/user_sex.dart';

abstract interface class UsersSearchRepositoryContract {
  Future<List<UserProfilePreview>> queryUsersByName(String nameQuery);
}

class UsersSearchRepository implements UsersSearchRepositoryContract {
  List<UserProfilePreview> data = List.generate(
      12,
      (index) => index < 6
          ? StudentProfilePreview(
              id: "id-$index",
              firstName: "First-$index",
              lastName: "Last",
              email: "email-$index@sesame.com.tn",
              sex: UserSex.male,
              profilePicture: "profilePicture",
              sesameClass: SesameClass(
                  id: "ingta4-c", name: "ingta", level: "4", group: "C"),
              jobPosition: "Android engineer",
              company: "MintIT")
          : TeacherProfilePreview(
              id: "id",
              firstName: "youssef",
              lastName: "khiari",
              email: "email",
              sex: UserSex.female,
              profilePicture: "profilePicture",
              assignedClasses: [
                SesameClass(
                    id: "ingta4-c", name: "ingta", level: "4", group: "C"),
                SesameClass(
                    id: "ingta3-c", name: "ingta", level: "3", group: "C")
              ],
              background: "background-$index"));

  @override
  Future<List<UserProfilePreview>> queryUsersByName(String nameQuery) async {
    await Future.delayed(const Duration(seconds: 1));
    return nameQuery.isNotEmpty
        ? data
            .where((profile) =>
                profile.firstName.contains(nameQuery) ||
                profile.lastName.contains(nameQuery))
            .toList()
        : data;
  }
}
