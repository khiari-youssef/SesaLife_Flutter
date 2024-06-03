import 'package:core/core_domain/entities/entities.dart';
import 'package:sessions_feature/domain/entities/SesameCourseSession.dart';
import 'package:sessions_feature/ui/home_calendar/bloc/home_calendar_event.dart';
import 'package:sessions_feature/ui/home_calendar/bloc/home_calendar_state.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class HomeCalendarBloc extends Bloc<HomeCalendarEvent, HomeCalendarState> {
  HomeCalendarBloc(super.initialState) {
    on((HomeCalendarEvent event, emit) {
      event.when(loadAllSessionOfTheMonth: (year, month) async {
        emit(const HomeCalendarState.loading());
        Future.delayed(const Duration(seconds: 2));
        emit(HomeCalendarState.success(List.generate(10, (index) {
          return SesameCourseSession(
              id: "sessionid$index",
              subject: SesameSubject(
                  id: "subject-id-$index",
                  label: "subject-$index",
                  description: "descrption $index",
                  moduleId: "mod1",
                  sesameClass: SesameClass(
                      id: "ingta-4c", group: "C", level: "4", name: "ingta"),
                  coefficient: 1.0),
              teacher: UserProfilePreview(
                  id: "teacher-id",
                  firstName: "Teacher",
                  lastName: "",
                  email: "teacher@sesame.com.tn",
                  profilePicture: ""),
              date: DateTime(2024, 06, index + 1, 8, 30),
              toleratedDelayInMinutes: 15,
              roomID: "206",
              sessionClass: SesameClass(
                  id: "ingta-4c", group: "C", level: "4", name: "ingta"),
              presentStudents: [],
              eliminatedStudents: [],
              sessionQrCode: "qrcode",
              attachments: [],
              firstHalfEndDateTime: DateTime(2024, 06, index + 1, 10, 0),
              secondHalfEndDateTime: DateTime(2024, 06, index + 1, 10, 15),
              secondHalfStartDateTime: DateTime(2024, 06, index + 1, 12, 15));
        })));
      });
    });
  }
}
