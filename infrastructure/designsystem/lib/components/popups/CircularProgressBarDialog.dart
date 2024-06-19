import 'package:designsystem/designsystem_exports.dart';

class CircularProgressBarDialog extends StatelessWidget {
  const CircularProgressBarDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }

  static showAsDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => const CircularProgressBarDialog(),
        barrierDismissible: false);
  }
}
