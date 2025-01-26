import 'package:flutter/material.dart';
import 'custom_datatable_structure.dart';
import 'custom_datatable.dart';

class CustomDatatableHeader extends StatelessWidget {
  const CustomDatatableHeader({
    super.key,
    required this.columns,
    this.expandable = false,
  });

  final List<CustomDataTableColumn> columns;
  final bool expandable;

  @override
  Widget build(BuildContext context) {
    if (expandable) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
        child: Row(
          children: [
            Expanded(
              child: CustomDatatableStructure(
                columns: columns,
              ),
            ),
            Opacity(
              opacity: 0,
              child: IgnorePointer(
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.arrow_downward),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: CustomDatatableStructure(columns: columns),
    );
  }
}
