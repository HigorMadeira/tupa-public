import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class TowerList extends StatelessWidget {
  const TowerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
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
            const Expanded(child: TowerDataTableMobile())
          ],
        ),
      ),
    );
  }
}

class TowerDataTableMobile extends StatelessWidget {
  const TowerDataTableMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TowerWatcherCubit, TowerWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Center(child: CircularProgressIndicator()),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          error: (_) => const Center(child: Text('Erro ao carregar torres')),
          loaded: (s) {
            final towers = s.towers;
            return ListView.builder(
              itemCount: towers.length,
              itemBuilder: (context, index) {
                final tower = towers[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildRow('ID', tower.id.toString(), 0),
                        _buildRow('Extensão da Torre',
                            tower.towerExtension.toString(), 1),
                        _buildRow('Perna A', tower.legA.toString(), 2),
                        _buildRow('Perna B', tower.legB.toString(), 3),
                        _buildRow('Perna C', tower.legC.toString(), 4),
                        _buildRow('Perna D', tower.legD.toString(), 5),
                        _buildRow('Perna de Referência', tower.referenceLeg, 6),
                        _buildRow('Elevação da Perna de Referência',
                            tower.elevationReferenceLeg.toString(), 7),
                        _buildRow('Cota de Piquete Central',
                            tower.centralStakeElevation.toString(), 8),
                        _buildRow(
                            'Diferença de Altura', tower.dh.toString(), 9),
                        _buildRow('Variação da Altura da Torre',
                            tower.towerHeightVariation.toString(), 10),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildRow(String label, String value, int rowIndex) {
    final backgroundColor = rowIndex % 2 == 0
        ? AppColors.offWhite
        : AppColors.label.withOpacity(0.2);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            flex: 3,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
