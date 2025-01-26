import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

part 'tower_watcher_cubit.freezed.dart';
part 'tower_watcher_state.dart';

class TowerWatcherCubit extends Cubit<TowerWatcherState> {
  TowerWatcherCubit(this._towerRepository)
      : super(const TowerWatcherState.initial());

  final ITowerRepository _towerRepository;

  Future<List<Tower>> getTowers(int projectId) async {
    emit(const TowerWatcherState.loading());
    final result = await _towerRepository.getTowers(projectId);
    final List<Tower> towers = result.fold((l) => [], (r) => r);

    emit(TowerWatcherState.loaded(towers));
    return towers;
  }
}
