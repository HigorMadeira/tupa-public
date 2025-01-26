import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

part 'project_form_state.dart';
part 'project_form_cubit.freezed.dart';

class ProjectFormCubit extends Cubit<ProjectFormState> {
  ProjectFormCubit(this._projectRepository) : super(ProjectFormState.initial());

  final IProjectRepository _projectRepository;

  void initForm(Project project) {
    emit(state.copyWith(
      project: project,
      isEditing: project.id != null,
      hasChanged: false,
      saveFailureOrSuccessOption: none(),
      deleteFailureOrOption: none(),
    ));
  }

  void newProject() {
    emit(state.copyWith(
      project: Project(
        id: null,
        costumer: '',
        location: '',
        title: '',
        towers: [],
        thumbnail: '',
        createdAt: DateTime.now(),
      ),
      isEditing: false,
      hasChanged: false,
      saveFailureOrSuccessOption: none(),
    ));
  }

  void editProject(Project project) {
    emit(state.copyWith(
      project: project,
    ));
  }

  void changeTitle(String title) {
    emit(state.copyWith(project: state.project!.copyWith(title: title)));
  }

  void changeCostumer(String costumer) {
    emit(state.copyWith(project: state.project!.copyWith(costumer: costumer)));
  }

  void changeLocation(String location) {
    emit(state.copyWith(project: state.project!.copyWith(location: location)));
  }

  void changeThumbnail(String thumbnail) {
    emit(
        state.copyWith(project: state.project!.copyWith(thumbnail: thumbnail)));
  }

  Future<void> save() async {
    final project = state.project;
    emit(state.copyWith(isSaving: true));
    final failureOrOption = state.isEditing
        ? await _projectRepository.updateProject(project!)
        : await _projectRepository.createProject(project!);
    emit(state.copyWith(
        isSaving: false,
        saveFailureOrSuccessOption: optionOf(failureOrOption)));
  }

  Future<void> deleteProject(int id) async {
    emit(state.copyWith(isDeleting: true));
    final failureOrOption = await _projectRepository.deleteProject(id);
    emit(state.copyWith(
        isDeleting: false,
        project: Project.empty(),
        deleteFailureOrOption: optionOf(failureOrOption)));
  }
}
