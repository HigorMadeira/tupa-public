import '../../theme/app_colors.dart';
import 'package:flutter/material.dart';

enum IconPosition { left, right }

class CustomWebButton extends StatelessWidget {
  final String text;
  final bool fillSpace;
  final IconData? iconData;
  final IconPosition iconPosition;
  final bool edgeIcon;
  final bool underline;
  final Color? iconColor;
  final Color? textColor;
  final bool isWeb;

  const CustomWebButton({
    super.key,
    required this.text,
    this.fillSpace = true,
    this.iconData,
    this.iconPosition = IconPosition.left,
    this.edgeIcon = false,
    this.underline = false,
    this.iconColor,
    this.textColor,
    this.isWeb = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _getIconPadding(),
      child: SizedBox(
        height: isWeb ? 32 : 24,
        child: Row(
          mainAxisSize: fillSpace ? MainAxisSize.max : MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconData != null && iconPosition == IconPosition.left) ...[
              Icon(
                iconData,
                color: iconColor ?? Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 8),
            ],
            Flexible(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: textColor ?? Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            if (underline)
              Flexible(
                child: Container(
                  height: 2,
                  color: AppColors.bodyTextColor,
                ),
              ),
            if (iconData != null && iconPosition == IconPosition.right) ...[
              const SizedBox(width: 8),
              Icon(
                iconData,
                color: iconColor ?? Theme.of(context).primaryColor,
              ),
            ]
          ],
        ),
      ),
    );
  }

  EdgeInsetsGeometry _getIconPadding() {
    EdgeInsetsGeometry iconPadding = const EdgeInsets.all(0);
    if (iconData != null && fillSpace == false) {
      iconPadding = EdgeInsets.only(
        right: 8 + (fillSpace ? 32 : 0),
      );
      if (iconPosition == IconPosition.right) {
        iconPadding = EdgeInsets.only(
          left: 8 + (fillSpace ? 32 : 0),
        );
      }
    }
    return iconPadding;
  }
}
