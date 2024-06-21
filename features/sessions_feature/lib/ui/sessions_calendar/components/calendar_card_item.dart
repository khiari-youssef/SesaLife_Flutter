import 'package:core/core_domain/entities/user_sex.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:designsystem/extensions.dart';
import 'package:sessions_feature/domain/entities/sesame_course_session.dart';
import 'package:sessions_feature/domain/entities/sesame_exam_session.dart';
import 'package:sessions_feature/domain/entities/sesame_session.dart';

class CalendarSessionCard extends StatelessWidget {
  final SesameSession data;
  final bool isLoading;
  const CalendarSessionCard(
      {super.key, this.isLoading = false, required this.data});

  @override
  Widget build(BuildContext context) => buildWithLoadingState(
      Card(
        color: switch (data) {
          SesameExamSession() => const Color(0xFFFFE9BD),
          _ => const Color(0xFFD3E4FD)
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          switch (data) {
                            SesameCourseSession() =>
                              S.of(context).sessions_course,
                            SesameExamSession() => S.of(context).sessions_exam,
                            _ => S.of(context).sessions_any
                          },
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .typography
                              .black
                              .headlineLarge
                              ?.copyWith(color: Colors.black),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          "${data.getDisplayStartTime()} -> ${data.getDisplayEndTime()}",
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .typography
                              .black
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w500),
                        ))
                  ]),
              SizedBox(height: 20.h),
              Text(data.subject.label,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .typography
                      .black
                      .bodyLarge
                      ?.copyWith(color: Colors.black)),
              SizedBox(height: 20.h),
              Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SesameAvatar(
                      width: 24.w,
                      height: 24.h,
                      url: '',
                      placeholder: switch (data.teacher.sex) {
                        UserSex.male => "user_male.svg",
                        UserSex.female => "user_female.svg"
                      },
                    ),
                    SizedBox(width: 12.w),
                    Text("${data.teacher.firstName} ${data.teacher.lastName}",
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .typography
                            .black
                            .bodyMedium
                            ?.copyWith(color: Colors.black))
                  ])
            ],
          ),
        ),
      ),
      isLoading);
}
