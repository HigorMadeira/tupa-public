import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class CustomDialogHolder extends StatelessWidget {
  final Widget child;
  final bool bodyScrollable;

  const CustomDialogHolder({
    super.key,
    required this.child,
    required this.bodyScrollable,
  });
  @override
  Widget build(BuildContext context) {
    final dialog = ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 280.0),
      child: Material(
        color: AppColors.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          padding: bodyScrollable
              ? const EdgeInsets.all(0)
              : const EdgeInsets.fromLTRB(64, 32, 64, 40),
          width: 640,
          child: child,
        ),
      ),
    );
    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
          const EdgeInsets.symmetric(vertical: 24),
      duration: const Duration(milliseconds: 100),
      curve: Curves.decelerate,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Align(
          alignment: Alignment.topCenter,
          child: Scrollbar(
            child: SingleChildScrollView(
              child: dialog,
            ),
          ),
        ),
      ),
    );
  }
}
