import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/application/navigation/web_navigation_cubit.dart';
import 'package:tupa_web/src/presentation/project/main_project_page.dart';
import 'package:tupa_web/src/presentation/project/tower/tower_page.dart';

class HomePageSelector extends StatelessWidget {
  const HomePageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WebNavigationCubit, WebNavigationState>(
      builder: (context, state) {
        final page = state.when(
          projects: () => const ProjectsPage(),
        );
        return page;
      },
    );
  }
}

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectDetailCubit, ProjectDetailState>(
      builder: (context, state) {
        return PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
            return SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.scaled,
              fillColor: AppColors.whiteElevations.shade200,
              child: child,
            );
          },
          child: state.projectSelected == null
              ? const MainProjectPage()
              : const TowerPage(),
        );
      },
    );
  }
}
