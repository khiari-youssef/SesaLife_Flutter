import '../../designsystem_exports.dart';

Widget basicScreenBuilder(
        BuildContext context, EdgeInsetsGeometry? margin, Widget child) =>
    Container(
        color: Theme.of(context).colorScheme.background,
        margin: margin,
        child: SafeArea(
          child: child,
        ));
