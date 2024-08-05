import 'package:toastification/toastification.dart';

import 'designsystem_exports.dart';

extension AssetsAccessorExt on BuildContext {
  S getLocalizations() {
    return S.of(this);
  }
}

Widget buildWithLoadingState(Widget child, bool enableLoading) {
  return AnimatedContainer(
      curve: Curves.linear,
      duration: const Duration(milliseconds: 300),
      child: enableLoading
          ? Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white,
              child: child)
          : child);
}

enum ToastType { success, error, info, warning }

extension UIextensions on BuildContext {
  showToast(
      {String? title, required String message, required ToastType toastType}) {
    toastification.show(
      context: this,
      type: switch (toastType) {
        ToastType.info => ToastificationType.info,
        ToastType.error => ToastificationType.error,
        ToastType.warning => ToastificationType.warning,
        ToastType.success => ToastificationType.success
      },
      style: ToastificationStyle.fillColored,
      autoCloseDuration: const Duration(seconds: 5),
      title: title == null ? null : Text(title),
      description: RichText(text: TextSpan(text: message)),
      alignment: Alignment.bottomCenter,
      direction: TextDirection.ltr,
      animationDuration: const Duration(milliseconds: 300),
      animationBuilder: (context, animation, alignment, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
          spreadRadius: 0,
        )
      ],
      showProgressBar: true,
      closeButtonShowType: CloseButtonShowType.onHover,
      closeOnClick: false,
      pauseOnHover: true,
      dragToClose: true,
      applyBlurEffect: true,
      callbacks: ToastificationCallbacks(
          onTap: (toastItem) => "",
          onCloseButtonTap: (toastItem) => "",
          onAutoCompleteCompleted: (toastItem) => "",
          onDismissed: (toastItem) => ""),
    );
  }
}
