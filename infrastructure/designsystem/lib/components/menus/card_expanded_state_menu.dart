import '../../designsystem_exports.dart';

class CardExpandedStateMenu extends StatelessWidget {
  final Map<String, String?> details;
  const CardExpandedStateMenu({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.vertical,
        spacing: 8.h,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: details.entries
            .where((entry) => entry.value?.isNotEmpty == true)
            .map((entry) => Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "${entry.key} : ",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onSurface)),
                    TextSpan(
                        text: entry.value,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF696969)))
                  ])),
                ))
            .toList());
  }
}
