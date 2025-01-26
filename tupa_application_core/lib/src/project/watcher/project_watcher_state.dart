part of 'project_watcher_cubit.dart';

@freezed
class ProjectWatcherState with _$ProjectWatcherState {
  const factory ProjectWatcherState.initial() = _Initial;
  const factory ProjectWatcherState.loading() = _Loading;
  const factory ProjectWatcherState.error(ProjectFailure failure) = _Error;
  const factory ProjectWatcherState.loaded(List<Project> projects) = _Loaded;
}
