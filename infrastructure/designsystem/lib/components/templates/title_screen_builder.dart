import 'package:designsystem/components/scaffolds/ScreenTitleBar.dart';

import '../../designsystem_exports.dart';

Widget titleScreenBuilder(
        BuildContext context,
        final String title,
        EdgeInsetsGeometry? margin,
        final VoidCallback onBackPressed,
        Widget child) =>
    basicScreenBuilder(
        context,
        margin,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScreenTitleBar(
              title: title,
              onBackPressed: onBackPressed,
            ),
            Expanded(child: child)
          ],
        ));
