import 'package:tupa_domain/tupa_domain.dart';

abstract class ITowerDatasource {
  Future<List<Tower>> getTowers(int projectId);
  Future<Tower> createTower(Tower tower);
  Future<Tower> updateTower(Tower tower);
  Future<Tower> deleteTower(String id);
}
