import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/presentation/project/tower/widgets/tower_datatable.dart';

class TowerPage extends StatelessWidget {
  const TowerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    context.read<ProjectDetailCubit>().goToMainPage();
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'TORRES',
                  style: TextStyles.headline6,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 24,
            ),
            const Expanded(child: TowerDatatable())
          ],
        ),
      ),
    );
  }
}
