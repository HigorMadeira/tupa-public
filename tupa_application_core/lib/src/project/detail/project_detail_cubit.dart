import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

part 'project_detail_state.dart';

class ProjectDetailCubit extends Cubit<ProjectDetailState> {
  ProjectDetailCubit() : super(ProjectDetailState.initial());

  Future<void> selectProject(Project project) async {
    emit(state.copyWith(
      projectSelected: project,
    ));
  }

  void goToMainPage() {
    emit(ProjectDetailState.initial());
  }
}
