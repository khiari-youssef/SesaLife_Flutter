import 'package:core/core_data/dtos/dtos.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_badge_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_role_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_student_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_teacher_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_professional_student_dto.dart';

import 'sesame_user_dto.dart';

void registerAllHiveAdapters() {
  Hive.registerAdapter(SesameBadgeDTOAdapter());
  Hive.registerAdapter(SesameRoleDTOAdapter());
  Hive.registerAdapter(SesameClassDTOAdapter());
  Hive.registerAdapter(SesameUserDTOAdapter());
  Hive.registerAdapter(SesameStudentDTOAdapter());
  Hive.registerAdapter(SesameProfessionalStudentDTOAdapter());
  Hive.registerAdapter(SesameTeacherDTOAdapter());
}
