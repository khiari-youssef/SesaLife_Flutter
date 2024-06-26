import 'package:core/core_data/dtos/dtos.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameBadgeDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameRoleDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameStudentDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameTeacherDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_professional_student_dto.dart';

import 'SesameUserDTO.dart';

void registerAllHiveAdapters() {
  Hive.registerAdapter(SesameBadgeDTOAdapter());
  Hive.registerAdapter(SesameRoleDTOAdapter());
  Hive.registerAdapter(SesameClassDTOAdapter());
  Hive.registerAdapter(SesameUserDTOAdapter());
  Hive.registerAdapter(SesameStudentDTOAdapter());
  Hive.registerAdapter(SesameProfessionalStudentDTOAdapter());
  Hive.registerAdapter(SesameTeacherDTOAdapter());
}
