import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

abstract class ITowerRepository {
  Future<Either<TowerFailure, List<Tower>>> getTowers(int projectId);
  Future<Either<TowerFailure, Tower>> createTower(Tower tower);
  Future<Either<TowerFailure, Tower>> updateTower(Tower tower);
  Future<Either<TowerFailure, Tower>> deleteTower(String id);
}
