import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/application/project/form/project_form_cubit.dart';
import 'package:tupa_web/src/presentation/project/widgets/project_form_fields_button.dart';

class NewProjectModal extends StatefulWidget {
  const NewProjectModal({super.key, required this.project});
  final Project project;
  @override
  State<NewProjectModal> createState() => _NewProjectModalState();
}

class _NewProjectModalState extends State<NewProjectModal> {
  @override
  void initState() {
    context.read<ProjectFormCubit>().initForm(widget.project);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 40,
      ),
      duration: const Duration(milliseconds: 100),
      curve: Curves.decelerate,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                width: 920,
                color: AppColors.background,
                child: const SingleChildScrollView(
                  child: ProjectFormFields(),
                ),
              ),
            )),
      ),
    );
  }
}

class ProjectFormFields extends StatelessWidget {
  const ProjectFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectFormCubit, ProjectFormState>(
      listener: (context, state) {
        if (state.isSaving) {
          EasyLoading.show(
              status: 'Salvando Projeto...',
              maskType: EasyLoadingMaskType.black);
        } else if (state.isDeleting) {
          EasyLoading.show(
              status: 'Deletando Projeto...',
              maskType: EasyLoadingMaskType.black);
        } else {
          EasyLoading.dismiss();
        }
        state.saveFailureOrSuccessOption.fold(
          () => {},
          (a) => a.fold(
            (l) => FlashHelper.errorBar(
              context,
              message: "Erro ao salvar Projeto, por favor contate o suporte.",
            ),
            (r) {
              FlashHelper.successBar(
                context,
                message: "Projeto salvo com sucesso.",
              );
              context.read<ProjectWatcherCubit>().addOrUpdateLocalProject(r);
              Navigator.pop(context);
            },
          ),
        );
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  const Text(
                    'DETALHES DO PROJETO',
                    style: TextStyles.headline6,
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    decoration:
                        BoxDecorations.inputDecoration('Nome do projeto'),
                    onChanged: (t) =>
                        context.read<ProjectFormCubit>().changeTitle(t),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    decoration: BoxDecorations.inputDecoration('Cliente'),
                    onChanged: (t) =>
                        context.read<ProjectFormCubit>().changeCostumer(t),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    decoration: BoxDecorations.inputDecoration('Local'),
                    onChanged: (t) =>
                        context.read<ProjectFormCubit>().changeLocation(t),
                  ),
                ],
              ),
            ),
            ProjectFormFieldsButton(state: state),
          ],
        );
      },
    );
  }
}
