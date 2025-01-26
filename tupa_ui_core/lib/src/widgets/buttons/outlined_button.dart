// ignore_for_file: overridden_fields
// ignore_for_file: annotate_overrides
import '../../theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class WebOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;
  final ButtonStyle? style;
  final bool isWeb;

  const WebOutlinedButton({
    super.key,
    required this.text,
    this.onTap,
    this.fillSpace = true,
    this.iconData,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.color,
    this.style,
    this.isWeb = true,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: style,
      child: CustomWebButton(
        text: text,
        fillSpace: fillSpace,
        iconData: iconData,
        iconPosition: iconPosition,
        edgeIcon: edgeIcon,
        textColor: color ?? AppColors.body,
        iconColor: color ?? AppColors.body,
        isWeb: isWeb,
      ),
    );
  }
}

class WebOutlinedRoundedButton extends WebOutlinedButton {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Colors? textColor;

  WebOutlinedRoundedButton({
    super.key,
    required this.text,
    this.onTap,
    this.fillSpace = true,
    this.iconData,
    this.borderRadius = 12,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.foregroundColor,
    this.backgroundColor,
    this.textColor,
  }) : super(
          text: text,
          onTap: onTap,
          fillSpace: fillSpace,
          iconData: iconData,
          iconPosition: iconPosition,
          edgeIcon: edgeIcon,
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            side: BorderSide(
              color: foregroundColor ?? AppColors.body,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        );
}

class WebOutlinedRectangleButton extends WebOutlinedButton {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;

  WebOutlinedRectangleButton({
    super.key,
    required this.text,
    this.onTap,
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
          style: OutlinedButton.styleFrom(
            foregroundColor: color,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            side: BorderSide(
              color: color ?? AppColors.body,
              width: 2,
            ),
          ),
        );
}

class TabletOutlinedRectangleButton extends WebOutlinedButton {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;

  TabletOutlinedRectangleButton({
    super.key,
    required this.text,
    this.onTap,
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
          style: OutlinedButton.styleFrom(
            foregroundColor: color,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 8,
            ),
            side: BorderSide(
              color: color ?? AppColors.body,
            ),
          ),
        );
}
