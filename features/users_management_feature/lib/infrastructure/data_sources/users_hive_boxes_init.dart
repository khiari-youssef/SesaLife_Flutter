import 'package:shared_dependencies/shared_dependencies.dart';

import '../dtos/SesameUserDTO.dart';

const String settingsBoxName = "mySettingsDataBox";
const String userTokenBoxName = "tokenBox";
const String usersBoxName = "usersBox";

Future<void> initUserDataHiveBoxes() async {
  await Hive.openLazyBox<bool>(settingsBoxName);
  await Hive.openLazyBox<String>(userTokenBoxName);
  await Hive.openLazyBox<SesameUserDTO>(usersBoxName);
}
