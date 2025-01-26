part of 'project_form_cubit.dart';

@freezed
class ProjectFormState with _$ProjectFormState {
  const factory ProjectFormState({
    required Project? project,
    required bool hasChanged,
    required bool isSaving,
    required bool isEditing,
    required bool isDeleting,
    required Option<Either<ProjectFailure, Project>> saveFailureOrSuccessOption,
    required Option<Either<ProjectFailure, int>> deleteFailureOrOption,
  }) = _ProjectFormState;

  factory ProjectFormState.initial() => ProjectFormState(
        project: null,
        hasChanged: false,
        isSaving: false,
        isEditing: false,
        isDeleting: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrOption: none(),
      );
}
