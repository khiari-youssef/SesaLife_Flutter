import 'package:pin_code_fields/pin_code_fields.dart';

import '../../designsystem_exports.dart';

class CodeInputField extends StatelessWidget {
  final Function(String code) onCompleted;
  const CodeInputField({super.key, required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: false,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 60.r,
            fieldWidth: 60.r,
            inactiveColor: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xFFE6E6E6)
                : const Color(0xFFA4A4A4),
            activeColor: Theme.of(context).colorScheme.tertiary,
            selectedColor: Theme.of(context).colorScheme.primary),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        textStyle: Theme.of(context).typography.black.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700),
        onCompleted: onCompleted);
  }
}
