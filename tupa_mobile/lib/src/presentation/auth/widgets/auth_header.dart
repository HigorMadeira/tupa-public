import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          const SizedBox(height: 40),
          SvgPicture.asset(
            'assets/core/android_logo.svg',
            width: 80,
            colorFilter: ColorFilter.mode(AppColors.green, BlendMode.srcIn),
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 24),
          Text(
            'Seja bem-vindo ao aplicativo xxxx!',
            style: TextStyles.body.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
