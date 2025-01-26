import 'package:tupa_backend/tupa_backend.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

class TowerDatasource implements ITowerDatasource {
  final SupabaseClient _client;

  TowerDatasource(this._client);
  @override
  Future<List<Tower>> getTowers(int projectId) async {
    final response = await _client.from('tower_project').select('''
        tower_id,
        tower:tower_id(*)
      ''').eq('project_id', projectId);
    final towers =
        (response as List).map((e) => Tower.fromMap(e['tower'])).toList();
    return towers;
  }

  @override
  Future<Tower> createTower(Tower tower) {
    // TODO: implement createTower
    throw UnimplementedError();
  }

  @override
  Future<Tower> deleteTower(String id) {
    // TODO: implement deleteTower
    throw UnimplementedError();
  }

  @override
  Future<Tower> updateTower(Tower tower) {
    // TODO: implement updateTower
    throw UnimplementedError();
  }
}
