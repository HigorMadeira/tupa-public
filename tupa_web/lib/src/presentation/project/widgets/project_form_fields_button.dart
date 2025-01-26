import 'package:flutter/material.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/application/project/form/project_form_cubit.dart';
import 'package:tupa_web/src/presentation/core/dialog/delete_dialog.dart';

class ProjectFormFieldsButton extends StatelessWidget {
  const ProjectFormFieldsButton({super.key, required this.state});
  final ProjectFormState state;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 40),
      color: AppColors.inputTextColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          WebTextUnderlinedButton(
            onTap: () => Navigator.pop(context),
            text: 'CANCELAR',
          ),
          const SizedBox(
            width: 16,
          ),
          if (state.isEditing) ...[
            SizedBox(
              width: 120,
              child: WebElevatedRoundedButton(
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => DeleteDialog(
                    title: 'Excluir project',
                    message: 'Tem certeza que deseja excluir o projeto?.',
                    deleteText: 'EXCLUIR',
                    onDelete: () => context
                        .read<ProjectFormCubit>()
                        .deleteProject(state.project!.id!),
                  ),
                ),
                color: AppColors.chili,
                text: 'EXCLUIR',
              ),
            ),
            const SizedBox(
              width: 16,
            ),
          ],
          SizedBox(
            width: 120,
            child: WebElevatedRoundedButton(
              color: AppColors.accentBlue,
              onTap: state.project!.isValid()
                  ? () => context.read<ProjectFormCubit>().save()
                  : null,
              text: 'SALVAR',
            ),
          )
        ],
      ),
    );
  }
}
