import 'package:designsystem/designsystem_exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/guest_welcome_info_option.dart';

class GuestWelcomeInfoOptionCard extends StatelessWidget {
  final GuestWelcomeInfoOption data;
  final VoidCallback onClicked;
  const GuestWelcomeInfoOptionCard(
      {super.key, required this.data, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);
    return GestureDetector(
      onTap: onClicked,
      child: Card(
        elevation: 0.sp,
        color: localTheme.colorScheme.surfaceContainerLow,
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SesameLogo(size: Size(25.w, 35.h)),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      data.headline,
                      style: localTheme.typography.black.headlineMedium
                          ?.copyWith(color: localTheme.colorScheme.tertiary),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                  SizedBox(
                    width: 25.w,
                    height: 35.h,
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Text(
                data.description,
                style: localTheme.typography.black.bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              )
            ],
          ),
        ),
      ),
    );
  }
}
