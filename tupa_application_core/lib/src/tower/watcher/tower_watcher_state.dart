part of 'tower_watcher_cubit.dart';

@freezed
class TowerWatcherState with _$TowerWatcherState {
  const factory TowerWatcherState.initial() = _Initial;
  const factory TowerWatcherState.loading() = _Loading;
  const factory TowerWatcherState.error(TowerFailure failure) = _Error;
  const factory TowerWatcherState.loaded(List<Tower> towers) = _Loaded;
}
