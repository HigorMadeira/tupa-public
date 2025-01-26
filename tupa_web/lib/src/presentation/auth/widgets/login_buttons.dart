import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    super.key,
    required this.onSignUp,
    required this.onSignIn,
  });
  final VoidCallback onSignUp;
  final VoidCallback onSignIn;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: WebOutlinedRoundedButton(
              borderRadius: 8,
              onTap: onSignUp,
              text: 'Criar conta',
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: WebElevatedRoundedButton(
            color: AppColors.mediumTurquoise,
            onTap: onSignIn,
            text: 'Entrar',
          ),
        ),
      ],
    );
  }
}
