import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/presentation/project/widgets/new_project_modal.dart';
import 'package:tupa_web/src/presentation/project/widgets/project_card.dart';

class ProjectsDatatable extends StatefulWidget {
  const ProjectsDatatable({super.key});

  @override
  State<ProjectsDatatable> createState() => _ProjectsDatatableState();
}

class _ProjectsDatatableState extends State<ProjectsDatatable> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectWatcherCubit, ProjectWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          error: (_) => const Center(child: Text('Erro ao carregar projetos')),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (s) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        controller: _scrollController,
                        padding: const EdgeInsets.all(16),
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 620,
                          mainAxisExtent: 220,
                          crossAxisSpacing: 18,
                          mainAxisSpacing: 18,
                        ),
                        itemCount: s.projects.length,
                        itemBuilder: (context, index) {
                          return ProjectCard(project: s.projects[index]);
                        },
                      ),
                    ),
                    Container(
                      color: AppColors.blue50,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          IconTextButton(
                            iconData: Icons.add,
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) =>
                                  NewProjectModal(project: Project.empty()),
                            ),
                            text: 'Novo Projeto',
                            large: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
