import '../../designsystem_exports.dart';

class SesameTermsAndPolicyCheckBoxState
    extends State<SesameTermsAndPolicyCheckBox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.selectedState;
  }

  @override
  void didUpdateWidget(covariant SesameTermsAndPolicyCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    isChecked = widget.selectedState;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (isCheckedUpdated) {
                setState(() {
                  isChecked = isCheckedUpdated ?? false;
                });
                widget.onChecked(isChecked);
              }),
          SizedBox(width: 8.w),
          LimitedBox(
            maxWidth: widget.maxWidth ?? 250.w,
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: "I’ve read and consented to the payment",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              WidgetSpan(child: 4.verticalSpace),
              TextSpan(
                  text: " terms & policy",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      decoration: TextDecoration.underline))
            ])),
          )
        ]);
  }
}

class SesameTermsAndPolicyCheckBox extends StatefulWidget {
  final bool selectedState;
  final double? maxWidth;
  final Function(bool isChecked) onChecked;
  const SesameTermsAndPolicyCheckBox(
      {super.key,
      required this.selectedState,
      required this.onChecked,
      this.maxWidth});

  @override
  State<StatefulWidget> createState() => SesameTermsAndPolicyCheckBoxState();
}
