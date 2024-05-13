import 'package:shared_dependencies/shared_dependencies.dart';

class SesameProgramsCatalogState extends State<SesameProgramsCatalog> {
  @override
  Widget build(BuildContext context) =>
      titleScreenBuilder(context, S.of(context).programs_label, null, () {
        AutoRouter.of(context).popUntilRouteWithName("GuestSpaceRoute");
      }, const Center());
}

@RoutePage(name: "SesameProgramsCatalog")
class SesameProgramsCatalog extends StatefulWidget {
  const SesameProgramsCatalog({super.key});

  @override
  State<StatefulWidget> createState() => SesameProgramsCatalogState();
}
