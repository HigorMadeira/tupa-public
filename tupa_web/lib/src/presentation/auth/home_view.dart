import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/application/navigation/web_navigation_cubit.dart';
import 'package:tupa_web/src/presentation/auth/home_page_selector.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
    this.userRole,
  });

  final Role? userRole;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (widget.userRole != null && widget.userRole!.name == 'admin') {
        context.read<WebNavigationCubit>().goToProjects();
        // } else if (widget.userRole != null &&
        //     widget.userRole!.name == 'contentManager') {
        //   context.read<WebNavigationCubit>().goToLessons();
        // } else if (widget.userRole != null &&
        //     widget.userRole!.name == 'schoolCoordinator') {
        //   context.read<WebNavigationCubit>().goToStudentRegister();
        // } else if (widget.userRole != null &&
        //     widget.userRole!.name == 'teacher') {
        //   context.read<WebNavigationCubit>().goToSchools();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryBlue,
        child: Row(
          children: [
            // const SideBar(),
            Expanded(
              child: Container(
                color: AppColors.whiteElevations.shade200,
                child: const Column(
                  children: [
                    // UserInfo(),
                    Expanded(
                      child: HomePageSelector(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
