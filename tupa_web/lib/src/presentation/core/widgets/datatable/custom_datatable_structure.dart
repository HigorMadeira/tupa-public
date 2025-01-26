import 'package:flutter/cupertino.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

import 'custom_datatable.dart';
import 'custom_datatable_column.dart';

class CustomDatatableStructure extends StatelessWidget {
  const CustomDatatableStructure({
    super.key,
    required this.columns,
    this.isHeader = true,
  });

  final List<CustomDataTableColumn> columns;
  final bool isHeader;

  @override
  Widget build(BuildContext context) {
    final List<Widget> columnWidgets = [];
    for (final column in columns) {
      columnWidgets.add(
        column.widget ??
            Flexible(
              flex: column.flex,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: CustomDataTableColumnWidget(
                  centered: column.centered,
                  child: SizedBox(
                    width: (column.editButton || column.iconData != null)
                        ? 64
                        : column.width,
                    child: (column.editButton || column.iconData != null)
                        ? Center(
                            child: column.editButton
                                ? EditButton(
                                    onTap: column.onTap!,
                                  )
                                : GestureDetector(
                                    onTap: column.onTap,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Icon(
                                        column.iconData,
                                        size: 24,
                                        color: AppColors.bodyTextColor,
                                      ),
                                    ),
                                  ),
                          )
                        : column.title != null
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    column.title!,
                                    overflow: TextOverflow.ellipsis,
                                    style: isHeader
                                        ? TextStyles.subtitle2.copyWith(
                                            color: AppColors
                                                .whiteElevations.shade200,
                                            fontWeight: FontWeight.w500,
                                          )
                                        : TextStyles.body2.copyWith(
                                            color: AppColors.offBlack,
                                          ),
                                  ),
                                  if (column.subtitle != null) ...[
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      column.subtitle!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyles.body2.copyWith(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ]
                                ],
                              )
                            : column.titleWidget,
                  ),
                ),
              ),
            ),
      );
    }
    return Row(
      children: [...columnWidgets],
    );
  }
}
