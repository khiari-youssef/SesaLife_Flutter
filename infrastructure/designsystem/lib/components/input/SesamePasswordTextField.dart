import 'package:designsystem/designsystem_exports.dart';

class SesamePasswordTextField extends StatefulWidget {
  final ValueChanged<String> onChange;
  final String label;
  final String? placeHolder;
  final bool isVisible;
  final bool isRequired;
  final bool isEnabled;
  final String? errorMessage;
  final TextEditingController? controller;

  const SesamePasswordTextField(
      {super.key,
      required this.onChange,
      required this.label,
      this.placeHolder,
      this.controller,
      this.isVisible = false,
      this.isRequired = true,
      this.isEnabled = true,
      this.errorMessage});

  @override
  State<StatefulWidget> createState() => SesamePasswordTextFieldState();
}

class SesamePasswordTextFieldState extends State<SesamePasswordTextField> {
  late bool isVisibleState;

  @override
  void initState() {
    super.initState();
    isVisibleState = widget.isVisible;
  }

  @override
  Widget build(BuildContext context) {
    return SesameCustomTextField(
      isObscure: !isVisibleState,
      rightIcon: TextFieldIcon(
          isVisibleState ? "ic_visible.svg" : "ic_invisible.svg", () {
        setState(() {
          isVisibleState = !isVisibleState;
        });
      }),
      onChange: widget.onChange,
      label: widget.label,
      isRequired: widget.isRequired,
      isEnabled: widget.isEnabled,
      controller: widget.controller,
      errorMessage: widget.errorMessage,
      placeHolder: widget.placeHolder,
    );
  }
}
