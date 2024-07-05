import 'package:core/coreUI/user_profile_cards/profile_preview_list_item.dart';
import 'package:core/exports.dart';
import 'package:designsystem/theme/dimens.dart';
import 'package:sessions_feature/domain/entities/sesame_course_session.dart';
import 'package:sessions_feature/domain/entities/sesame_exam_session.dart';
import 'package:sessions_feature/domain/entities/sesame_session.dart';
import 'package:sessions_feature/ui/session_details/stateManagement/session_details_bloc.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../components/labeled_display_text.dart';
import '../components/session_schedule_display_section.dart';

class SessionDetailsBaseScreenState extends State<SessionDetailsBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(
        context,
        switch (widget.session) {
          SesameCourseSession() => S.of(context).sessions_course,
          SesameExamSession() => S.of(context).sessions_exam,
          _ => S.of(context).sessions_any
        },
        null, () {
      AutoRouter.of(context).back();
    },
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
                  child: BlocProvider(
                    create: (context) => SessionDetailsBloc(),
                    child: BlocConsumer<SessionDetailsBloc,
                            SessionDetailsState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          SesameSession session = widget.session;
                          return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                session.subject.description.isNotEmpty == true
                                    ? Wrap(
                                        direction: Axis.vertical,
                                        alignment: WrapAlignment.start,
                                        spacing: 12.h,
                                        children: [
                                            TitleSmall(
                                                text: widget
                                                    .session.subject.label,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                            BodyMedium(
                                                text:
                                                    session.subject.description)
                                          ])
                                    : TitleSmall(
                                        text: session.subject.label,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                16.verticalSpace,
                                Wrap(
                                    direction: Axis.vertical,
                                    spacing: 12.h,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      TitleSmall(
                                          text: S.of(context).profile_teacher,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                      session.subject.description.isNotEmpty ==
                                              true
                                          ? ProfilePreviewCard(
                                              profilePreview: session.teacher)
                                          : BodyMedium(
                                              text: S
                                                  .of(context)
                                                  .session_detail_teacher_not_designated)
                                    ]),
                                16.verticalSpace,
                                TitleSmall(
                                    text: S
                                        .of(context)
                                        .session_detail_date_time_schedule,
                                    color:
                                        Theme.of(context).colorScheme.primary),
                                12.verticalSpace,
                                SessionScheduleDisplaySection(
                                    entries: switch (session) {
                                  SesameExamSession() => {
                                      "Start time":
                                          session.startDateTime.toDisplayTime(),
                                      "Exam End time":
                                          session.examEndDate.toDisplayTime(),
                                      "Session End time":
                                          session.endDateTime.toDisplayTime()
                                    },
                                  SesameCourseSession() => {
                                      "First Session Start time":
                                          session.startDateTime.toDisplayTime(),
                                      "First Session End time": session
                                          .firstHalfEndDateTime
                                          .toDisplayTime(),
                                      "Second Session Start time": session
                                          .secondHalfStartDateTime
                                          .toDisplayTime(),
                                      "Second Session End time":
                                          session.endDateTime.toDisplayTime()
                                    },
                                  _ => {
                                      "Start time":
                                          session.startDateTime.toDisplayTime(),
                                      "End time":
                                          session.endDateTime.toDisplayTime()
                                    }
                                }),
                                16.verticalSpace,
                                Wrap(
                                    direction: Axis.vertical,
                                    spacing: 12.h,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      TitleSmall(
                                          text:
                                              S.of(context).session_detail_room,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                      BodyMedium(
                                          text: session.roomID.isNotEmpty
                                              ? session.roomID
                                              : S
                                                  .of(context)
                                                  .session_detail_room_not_designated)
                                    ]),
                                16.verticalSpace,
                                session.onlineMeetingURI?.isNotEmpty == true
                                    ? Wrap(
                                        direction: Axis.vertical,
                                        spacing: 12.h,
                                        alignment: WrapAlignment.start,
                                        children: [
                                            TitleSmall(
                                                text: S
                                                    .of(context)
                                                    .session_detail_meeting_url,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                            GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.r),
                                                    child: BodyMedium(
                                                        text: session
                                                            .onlineMeetingURI!,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .tertiary,
                                                        decoration:
                                                            TextDecoration
                                                                .underline))),
                                            16.verticalSpace
                                          ])
                                    : const SizedBox.shrink(),
                                Wrap(
                                    direction: Axis.vertical,
                                    spacing: 12.h,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      TitleSmall(
                                          text: S
                                              .of(context)
                                              .session_detail_content,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)
                                    ]),
                              ]);
                        }),
                  ))),
        ));
  }
}

@RoutePage(name: "SessionDetailsRoute")
class SessionDetailsBaseScreen extends StatefulWidget {
  final SesameSession session;

  const SessionDetailsBaseScreen({super.key, required this.session});

  @override
  State<StatefulWidget> createState() => SessionDetailsBaseScreenState();
}
