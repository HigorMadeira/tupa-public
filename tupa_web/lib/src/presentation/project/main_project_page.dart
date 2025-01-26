import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/presentation/project/widgets/projects_datatable.dart';

class MainProjectPage extends StatelessWidget {
  const MainProjectPage({super.key});

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
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  width: 96,
                  child: WebOutlinedButton(
                    text: 'SAIR',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Confirmação'),
                            content:
                                const Text('Você tem certeza que quer sair?'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Cancelar'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Sair'),
                                onPressed: () {
                                  context.read<AuthCubit>().signOut();
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'PROJETOS',
              style: TextStyles.headline6,
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 24,
            ),
            const Expanded(
              child: ProjectsDatatable(),
            )
          ],
        ),
      ),
    );
  }
}
