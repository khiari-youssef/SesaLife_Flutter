import 'package:sessions_feature/domain/entities/sesame_course_session.dart';
import 'package:sessions_feature/domain/entities/sesame_exam_session.dart';
import 'package:sessions_feature/domain/entities/sesame_session.dart';
import 'package:sessions_feature/ui/session_details/stateManagement/session_details_bloc.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

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
        SingleChildScrollView(
            child: BlocProvider(
          create: (context) => SessionDetailsBloc(),
          child: BlocConsumer<SessionDetailsBloc, SessionDetailsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: []);
              }),
        )));
  }
}

@RoutePage(name: "SessionDetailsRoute")
class SessionDetailsBaseScreen extends StatefulWidget {
  final SesameSession session;
  const SessionDetailsBaseScreen({super.key, required this.session});

  @override
  State<StatefulWidget> createState() => SessionDetailsBaseScreenState();
}
