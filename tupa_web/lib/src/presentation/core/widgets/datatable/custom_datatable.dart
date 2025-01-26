import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class CustomDataTableColumn {
  final double? width;
  final int flex;
  final bool centered;
  final String? title;
  final String? subtitle;
  final Widget? titleWidget;
  final Widget? widget;
  final bool editButton;
  final IconData? iconData;
  final VoidCallback? onTap;

  CustomDataTableColumn({
    this.width,
    this.flex = 1,
    this.centered = false,
    this.title,
    this.subtitle,
    this.titleWidget,
    this.editButton = false,
    this.iconData,
    this.onTap,
    this.widget,
  })  : assert(
          (onTap == null && (iconData == null || editButton == false)) ||
              (onTap != null && (iconData != null || editButton == true)),
          'Missing onTap parameter for iconData or editButton',
        ),
        assert(
            titleWidget != null || title != null, 'Column must have a title');
}

class CustomDatatable extends StatelessWidget {
  final Widget header;
  final Widget body;
  final Widget? footer;

  const CustomDatatable({
    super.key,
    required this.header,
    required this.body,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: AppShadows.shadowSmall,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                color: AppColors.whiteElevations.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            color: AppColors.bodyTextColor,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12 + 6,
                            ),
                            child: header,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: body,
                                ),
                                if (footer != null)
                                  Container(
                                    color: AppColors.blue50,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 20,
                                    ),
                                    child: footer,
                                  ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
