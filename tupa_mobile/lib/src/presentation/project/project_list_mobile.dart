import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_mobile/src/presentation/project/widgets/project_card.dart';

class ProjectListMobile extends StatelessWidget {
  const ProjectListMobile({super.key});

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
            return Column(
              children: [
                ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  physics: const BouncingScrollPhysics(),
                  itemCount: s.projects.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    return ProjectCard(project: s.projects[index]);
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
