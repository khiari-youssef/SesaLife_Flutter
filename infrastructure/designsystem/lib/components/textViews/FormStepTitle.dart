import 'package:designsystem/designsystem_exports.dart';

class FormStepTitle extends StatelessWidget {
  final String title;
  const FormStepTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      curve: Curves.ease,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.r),
                bottomRight: Radius.circular(8.r))),
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          child: Center(
            child: Text(title,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    height: 1.4,
                    color: Colors.white,
                    fontStyle: FontStyle.normal)),
          ),
        ),
      ),
    );
  }
}
