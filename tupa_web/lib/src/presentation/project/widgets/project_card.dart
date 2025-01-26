import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: () async {
          EasyLoading.show(
              status: 'Carregando...', maskType: EasyLoadingMaskType.black);
          await Future.wait([
            context.read<TowerWatcherCubit>().getTowers(widget.project.id!),
            context.read<ProjectDetailCubit>().selectProject(widget.project)
          ]);
          EasyLoading.dismiss();
        },
        child: Container(
          decoration: BoxDecoration(
            color: isHovering
                ? AppColors.whiteElevations[100]
                : AppColors.offWhite,
            borderRadius: BorderRadius.circular(12),
            boxShadow: AppShadows.shadowMedium,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: widget.project.thumbnail != null
                          ? ExtendedImage.network(
                              widget.project.thumbnail!,
                              height: 96,
                              width: 120,
                              fit: BoxFit.cover,
                            )
                          : ExtendedImage.asset(
                              'assets/core/empty_image.png',
                              height: 96,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.project.title,
                            style: TextStyles.headline6,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.project.costumer,
                            style: TextStyles.body,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
