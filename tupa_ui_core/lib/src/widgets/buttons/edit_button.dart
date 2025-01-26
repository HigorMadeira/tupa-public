import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../theme/app_colors.dart';
import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  final VoidCallback onTap;

  const EditButton({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.bodyTextColor,
        ),
        child: Icon(
          FeatherIcons.edit3,
          size: 16,
          color: AppColors.whiteElevations.shade200,
        ),
      ),
    );
  }
}
