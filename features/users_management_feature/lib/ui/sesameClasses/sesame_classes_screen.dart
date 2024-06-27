import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/sesameClasses/stateManagement/sesame_classes_bloc.dart';

class SesameClassesScreenState extends State<SesameClassesScreen> {
  @override
  Widget build(BuildContext context) =>
      titleScreenBuilder(context, S.of(context).profile_classes, null, () {
        AutoRouter.of(context).back();
      },
          BlocProvider<SesameClassesBloc>(
              create: (context) => SesameClassesBloc(),
              child: BlocConsumer<SesameClassesBloc, SesameClassesState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return const Center();
                },
              )));
}

@RoutePage(name: "SesameClassesRoute")
class SesameClassesScreen extends StatefulWidget {
  const SesameClassesScreen({super.key});

  @override
  State<StatefulWidget> createState() => SesameClassesScreenState();
}
