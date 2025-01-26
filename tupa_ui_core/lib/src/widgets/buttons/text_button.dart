// ignore_for_file: overridden_fields
// ignore_for_file: annotate_overrides
import 'package:tupa_ui_core/tupa_ui_core.dart';

import '../../theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class WebTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;
  final ButtonStyle? style;
  final bool underline;

  const WebTextButton({
    super.key,
    required this.text,
    this.onTap,
    this.fillSpace = true,
    this.iconData,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.style,
    this.color,
    this.underline = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: style,
      child: CustomWebButton(
        text: text,
        fillSpace: fillSpace,
        iconData: iconData,
        iconPosition: iconPosition,
        edgeIcon: edgeIcon,
        textColor: color ?? AppColors.bodyTextColor,
        iconColor: color ?? AppColors.offWhite,
        underline: underline,
      ),
    );
  }
}

class WebTextUnderlinedButton extends IconTextButton {
  final String text;
  final VoidCallback onTap;
  final bool fillSpace;
  final bool edgeIcon;
  final Color? color;

  const WebTextUnderlinedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fillSpace = true,
    this.edgeIcon = false,
    this.color,
  }) : super(
          text: text,
          onTap: onTap,
        );
}

class TabletTextButton extends WebTextButton {
  final String text;
  final VoidCallback onTap;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final Color? color;

  TabletTextButton({
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
          underline: false,
          style: TextButton.styleFrom(
            foregroundColor: color,
            disabledForegroundColor: color?.withOpacity(0.38),
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
