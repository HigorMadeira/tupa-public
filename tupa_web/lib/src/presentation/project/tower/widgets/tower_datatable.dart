import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_web/src/presentation/core/widgets/datatable/custom_datatable.dart';
import 'package:tupa_web/src/presentation/core/widgets/datatable/custom_datatable_header.dart';
import 'package:tupa_web/src/presentation/core/widgets/datatable/custom_datatable_row.dart';

class TowerDatatable extends StatefulWidget {
  const TowerDatatable({super.key});

  @override
  State<TowerDatatable> createState() => _TowerDatatableState();
}

class _TowerDatatableState extends State<TowerDatatable> {
  @override
  Widget build(BuildContext context) {
    return CustomDatatable(
        header: CustomDatatableHeader(
          columns: [
            CustomDataTableColumn(
                title: 'EXTENÇÃO DA TORRE', flex: 2, centered: true),
            CustomDataTableColumn(title: 'PERNA A', centered: true),
            CustomDataTableColumn(title: 'PERNA B', centered: true),
            CustomDataTableColumn(title: 'PERNA C', centered: true),
            CustomDataTableColumn(title: 'PERNA D', centered: true),
            CustomDataTableColumn(
                title: 'PERNA DE REFERENCIA', flex: 2, centered: true),
            CustomDataTableColumn(
                title: 'Elevação da perna de referência',
                flex: 3,
                centered: true),
            CustomDataTableColumn(
                title: 'Cota de piquete central', flex: 3, centered: true),
            CustomDataTableColumn(title: 'DH', flex: 2, centered: true),
            CustomDataTableColumn(
                title: 'Variação da altura da torre', flex: 3, centered: true),
          ],
        ),
        body: BlocBuilder<TowerWatcherCubit, TowerWatcherState>(
            builder: (context, state) {
          return state.map(
              initial: (_) => const Center(child: CircularProgressIndicator()),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (_) =>
                  const Center(child: Text('Erro ao carregar torres')),
              loaded: (s) {
                return ListView.builder(
                    itemCount: s.towers.length,
                    itemBuilder: (context, index) {
                      final tower = s.towers[index];
                      return CustomDatatableRow(
                        columns: [
                          CustomDataTableColumn(
                            centered: true,
                            flex: 2,
                            title: tower.towerExtension.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            title: tower.legA.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            title: tower.legB.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            title: tower.legC.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            title: tower.legD.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            flex: 2,
                            title: tower.referenceLeg,
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            flex: 3,
                            title: tower.elevationReferenceLeg.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            flex: 3,
                            title: tower.centralStakeElevation.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            flex: 2,
                            title: tower.dh.toString(),
                          ),
                          CustomDataTableColumn(
                            centered: true,
                            flex: 3,
                            title: tower.towerHeightVariation.toString(),
                          ),
                        ],
                      );
                    });
              });
        }));
  }
}
