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

enum ToastType { Success, Error, Info, Warning }

extension UIextensions on BuildContext {
  showToast(String title, String message, ToastType toastType) {
    toastification.show(
      context: this,
      type: switch (toastType) {
        ToastType.Info => ToastificationType.info,
        ToastType.Error => ToastificationType.error,
        ToastType.Warning => ToastificationType.warning,
        ToastType.Success => ToastificationType.success
      },
      style: ToastificationStyle.fillColored,
      autoCloseDuration: const Duration(seconds: 5),
      title: Text(title),
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
        onTap: (toastItem) => print('Toast ${toastItem.id} tapped'),
        onCloseButtonTap: (toastItem) =>
            print('Toast ${toastItem.id} close button tapped'),
        onAutoCompleteCompleted: (toastItem) =>
            print('Toast ${toastItem.id} auto complete completed'),
        onDismissed: (toastItem) => print('Toast ${toastItem.id} dismissed'),
      ),
    );
  }
}
