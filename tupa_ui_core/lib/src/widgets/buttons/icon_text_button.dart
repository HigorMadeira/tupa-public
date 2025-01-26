import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';

import 'package:flutter/material.dart';

class IconTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final bool large;
  final IconData? iconData;

  const IconTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.large = false,
    this.iconData,
  });

  @override
  IconTextButtonState createState() => IconTextButtonState();
}

class IconTextButtonState extends State<IconTextButton> {
  bool _isPressed = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
    widget.onTap();
  }

  void _handleTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapDown: _handleTapDown,
        onTapUp: _handleTapUp,
        onTapCancel: _handleTapCancel,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          transform: _isPressed
              ? (Matrix4.identity()..scale(0.95))
              : Matrix4.identity(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.iconData != null)
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.accentOrangeLighter,
                  ),
                  child: Icon(
                    widget.iconData,
                    size: widget.large ? 16 : 12,
                    color: AppColors.offWhite,
                  ),
                ),
              SizedBox(
                width: widget.large ? 8 : 4,
              ),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Text(
                      widget.text,
                      style: TextStyles.subtitle2.copyWith(
                        color: AppColors.bodyTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: widget.large ? 16 : 14,
                      ),
                    ),
                    Container(
                      height: 2,
                      color: AppColors.bodyTextColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
