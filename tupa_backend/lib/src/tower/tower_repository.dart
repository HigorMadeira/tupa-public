import 'package:tupa_backend/src/tower/i_tower_datasource.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

class TowerRepository implements ITowerRepository {
  final ITowerDatasource _datasource;
  final ILogger _logger;

  TowerRepository(this._datasource, this._logger);
  @override
  Future<Either<TowerFailure, List<Tower>>> getTowers(int projectId) async {
    try {
      final result = await _datasource.getTowers(projectId);
      return right(result);
    } catch (e) {
      _logger.error('Error getting towers: ', e);
      return left(const TowerFailure.serverError());
    }
  }

  @override
  Future<Either<TowerFailure, Tower>> createTower(Tower tower) {
    // TODO: implement createTower
    throw UnimplementedError();
  }

  @override
  Future<Either<TowerFailure, Tower>> deleteTower(String id) {
    // TODO: implement deleteTower
    throw UnimplementedError();
  }

  @override
  Future<Either<TowerFailure, Tower>> updateTower(Tower tower) {
    // TODO: implement updateTower
    throw UnimplementedError();
  }
}
