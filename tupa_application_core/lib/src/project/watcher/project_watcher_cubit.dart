import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

part 'project_watcher_state.dart';
part 'project_watcher_cubit.freezed.dart';

class ProjectWatcherCubit extends Cubit<ProjectWatcherState> {
  ProjectWatcherCubit(this._projectRepository)
      : super(const ProjectWatcherState.initial());

  final IProjectRepository _projectRepository;

  Future<void> getAllProjects() async {
    final projects = await _projectRepository.getAllProjects();
    projects.fold(
      (l) => emit(ProjectWatcherState.error(l)),
      (r) => emit(ProjectWatcherState.loaded(r)),
    );
  }

  void addOrUpdateLocalProject(Project project) {
    state.maybeWhen(
      loaded: (projects) {
        emit(const ProjectWatcherState.loading());
        emit(ProjectWatcherState.loaded(
            ApplicationUtils.getUpdatedLocalList(project, projects)));
      },
      orElse: () => {},
    );
  }
}
