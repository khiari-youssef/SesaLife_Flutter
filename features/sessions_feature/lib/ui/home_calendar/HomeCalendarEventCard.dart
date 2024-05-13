import 'package:designsystem/designsystem_exports.dart';
import 'package:designsystem/extensions.dart';

class HomeCalendarEventCard extends StatelessWidget {
  final bool isLoading;
  const HomeCalendarEventCard({super.key, this.isLoading = false});

  @override
  Widget build(BuildContext context) => buildWithLoadingState(
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Cours",
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
                          "8h30 -> 12h15",
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
              Text("Théorie des languages",
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SesameAvatar(width: 24.w, height: 24.h, url: ''),
                    SizedBox(width: 12.w),
                    Text("Madame Blablabla",
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
