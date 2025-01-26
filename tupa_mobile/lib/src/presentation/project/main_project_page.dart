import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_mobile/src/presentation/project/project_page.dart';
import 'package:tupa_mobile/src/presentation/tower/tower_list.dart';

class MainProjectPage extends StatelessWidget {
  const MainProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectDetailCubit, ProjectDetailState>(
      builder: (context, state) {
        return state.projectSelected == null
            ? const ProjectPage()
            : const TowerList();
      },
    );
  }
}
