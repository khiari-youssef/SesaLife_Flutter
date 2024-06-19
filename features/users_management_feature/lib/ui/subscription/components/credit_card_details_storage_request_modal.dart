import 'package:core/exports.dart';

class CreditCardDetailsStorageRequestModal extends StatelessWidget {
  final String content;
  final VoidCallback onPositiveButtonPressed;
  final VoidCallback onNegativeButtonPressed;
  const CreditCardDetailsStorageRequestModal(
      {super.key,
      required this.onPositiveButtonPressed,
      required this.onNegativeButtonPressed,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.r), topLeft: Radius.circular(12.r))),
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                Expanded(
                    child: HeadlineMedium(
                  text: content,
                  color: Theme.of(context).colorScheme.primary,
                  maxLines: 3,
                ))
              ]),
              24.verticalSpace,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      child: SesameCustomButton(
                          buttonText: S.of(context).yes,
                          onPressed: onPositiveButtonPressed)),
                  32.horizontalSpace,
                  Flexible(
                      child: SesameCustomButton(
                          buttonText: S.of(context).no,
                          onPressed: onNegativeButtonPressed))
                ],
              )
            ]),
      ),
    );
  }
}
