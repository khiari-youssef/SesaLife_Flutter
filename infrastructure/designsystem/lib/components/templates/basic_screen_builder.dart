import '../../designsystem_exports.dart';

Widget basicScreenBuilder(
        BuildContext context, EdgeInsetsGeometry? margin, Widget child) =>
    Container(
        color: Theme.of(context).colorScheme.surface,
        margin: margin,
        width: double.infinity,
        child: SafeArea(
          child: child,
        ));
