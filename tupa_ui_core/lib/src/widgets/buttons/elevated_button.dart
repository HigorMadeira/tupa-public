// ignore_for_file: overridden_fields
// ignore_for_file: annotate_overrides
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

import 'custom_button.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final ButtonStyle? style;
  final bool isWeb;
  final bool isLoading;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onTap,
    this.fillSpace = true,
    this.iconData,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.style,
    this.isWeb = true,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: style,
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(
              color: Colors.white,
            ))
          : CustomWebButton(
              text: text,
              fillSpace: fillSpace,
              iconData: iconData,
              iconPosition: iconPosition,
              edgeIcon: edgeIcon,
              textColor: AppColors.offWhite,
              iconColor: AppColors.offWhite,
              isWeb: isWeb,
            ),
    );
  }
}

class WebElevatedPillButton extends CustomElevatedButton {
  final String text;
  final VoidCallback onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;

  WebElevatedPillButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fillSpace = true,
    this.iconData,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.color,
  }) : super(
          text: text,
          onTap: onTap,
          fillSpace: fillSpace,
          iconData: iconData,
          iconPosition: iconPosition,
          edgeIcon: edgeIcon,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            shape: const StadiumBorder(),
          ),
        );
}

class WebElevatedRoundedButton extends CustomElevatedButton {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;

  WebElevatedRoundedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fillSpace = true,
    this.iconData,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.color,
  }) : super(
          text: text,
          onTap: onTap,
          fillSpace: fillSpace,
          iconData: iconData,
          iconPosition: iconPosition,
          edgeIcon: edgeIcon,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        );
}

class TabletElevatedRoundedButton extends CustomElevatedButton {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;

  TabletElevatedRoundedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fillSpace = true,
    this.iconData,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.color,
  }) : super(
          text: text,
          onTap: onTap,
          fillSpace: fillSpace,
          iconData: iconData,
          iconPosition: iconPosition,
          edgeIcon: edgeIcon,
          isWeb: false,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            disabledForegroundColor: color?.withOpacity(0.38),
            disabledBackgroundColor: color?.withOpacity(0.12),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        );
}
