import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteSwatch[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/social/web_neutral_rd_na.svg',
              height: 48,
              width: 48,
            ),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                'Continue com a conta google pré-cadastrada',
                style: TextStyles.body2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
