import 'package:flutter/material.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/presentation/core/dialog/custom_dialog.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    super.key,
    required this.title,
    required this.message,
    required this.deleteText,
    required this.onDelete,
  });

  final String title;
  final String message;
  final String deleteText;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: title,
      body: Text(
        message,
      ),
      actions: Row(
        children: [
          Expanded(
            child: WebTextUnderlinedButton(
              text: 'CANCELAR',
              onTap: () => Navigator.pop(context),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Expanded(
            child: WebElevatedRoundedButton(
              color: AppColors.chili,
              text: deleteText,
              onTap: onDelete,
            ),
          ),
        ],
      ),
    );
  }
}
