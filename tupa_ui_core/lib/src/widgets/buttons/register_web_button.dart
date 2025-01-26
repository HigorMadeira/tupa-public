import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class RegisterWebButton extends StatelessWidget {
  const RegisterWebButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: text,
      onTap: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          AppColors.accentOrange,
        ),
        foregroundColor: WidgetStateProperty.all(
          AppColors.accentOrange,
        ),
        textStyle: WidgetStateProperty.all(
          TextStyles.buttonFont,
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
