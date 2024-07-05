import 'package:core/exports.dart';
import 'package:sessions_feature/domain/entities/sesame_course_session.dart';
import 'package:sessions_feature/ui/sessions_calendar/bloc/home_calendar_event.dart';
import 'package:sessions_feature/ui/sessions_calendar/bloc/home_calendar_state.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../../domain/entities/sesame_session.dart';

class HomeSessionsBloc extends Bloc<HomeCalendarEvent, HomeSessionsState> {
  final List<SesameSession> sessions = List.generate(10, (index) {
    return SesameCourseSession(
        id: "sessionid$index",
        subject: SesameSubject(
            id: "subject-id-$index",
            label: "subject-$index",
            description: "descrption $index",
            moduleId: "mod1",
            coefficient: 1.0),
        teacher: StudentProfilePreview(
            id: "teacher-id",
            firstName: "Teacher",
            lastName: "",
            sex: UserSex.male,
            email: "teacher@sesame.com.tn",
            profilePicture: "",
            sesameClass: SesameClass(
                id: "ingta4-c", name: "ingta", level: "4", group: "C")),
        startDateTime: DateTime(2024, 06, index + 1, 8, 30),
        toleratedDelayInMinutes: 15,
        roomID: "206",
        sessionClass:
            SesameClass(id: "ingta-4c", group: "C", level: "4", name: "ingta"),
        presentStudents: [],
        eliminatedStudents: [],
        sessionQrCode: "qrcode",
        attachments: [],
        firstHalfEndDateTime: DateTime(2024, 06, index + 1, 10, 0),
        endDateTime: DateTime(2024, 06, index + 1, 10, 15),
        secondHalfStartDateTime: DateTime(2024, 06, index + 1, 12, 15));
  });
  HomeSessionsBloc(super.initialState) {
    on((HomeCalendarEvent event, emit) async {
      await event.when(loadAllSessionOfTheMonth: (year, month, filter) async {
        emit(const HomeSessionsState.loading());
        await Future.delayed(const Duration(seconds: 2));
        emit(HomeSessionsState.success(sessions));
      }, loadAllSessionOfTheDate: (date, filter) async {
        emit(const HomeSessionsState.loading());
        await Future.delayed(const Duration(seconds: 1));
        emit(HomeSessionsState.success(sessions
            .where((session) => session.startDateTime.areDatesOnlyEqual(date))
            .toList()));
      });
    });
  }
}
