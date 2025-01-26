import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'custom_datatable_structure.dart';
import 'custom_datatable.dart';

class CustomDatatableRow extends StatefulWidget {
  const CustomDatatableRow({
    super.key,
    required this.columns,
    this.expandable = false,
    this.expandableWidget,
    this.isSelected = false,
    this.onTap,
  }) : assert(
          expandable == false || expandableWidget != null,
          'Expandable widget must not be null',
        );

  final List<CustomDataTableColumn> columns;
  final bool expandable;
  final bool isSelected;
  final Widget? expandableWidget;
  final VoidCallback? onTap;

  @override
  State<CustomDatatableRow> createState() => _CustomDatatableRowState();
}

class _CustomDatatableRowState extends State<CustomDatatableRow> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    Widget child = CustomDatatableStructure(
      columns: widget.columns,
      isHeader: false,
    );

    if (widget.expandable) {
      child = ExpandableNotifier(
        child: Column(
          children: [
            Expandable(
              collapsed: ExpandableButton(
                child: Row(
                  children: [
                    Expanded(child: child),
                    ExpandableIcon(),
                  ],
                ),
              ),
              expanded: Column(children: [
                ExpandableButton(
                  child: Row(
                    children: [
                      Expanded(child: child),
                      ExpandableIcon(),
                    ],
                  ),
                ),
                widget.expandableWidget!,
              ]),
            ),
          ],
        ),
      );
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (details) => setState(() => isHovering = true),
      onExit: (details) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          decoration: BoxDecoration(
            color: isHovering ? AppColors.blue100 : AppColors.blue50,
            borderRadius: BorderRadius.circular(4),
            border: widget.isSelected
                ? Border.all(color: AppColors.blue400)
                : Border.all(color: AppColors.blue50),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: child,
        ),
      ),
    );
  }
}
