// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'project_detail_cubit.dart';

class ProjectDetailState {
  final Project? projectSelected;

  ProjectDetailState({required this.projectSelected});

  factory ProjectDetailState.initial() => ProjectDetailState(
        projectSelected: null,
      );

  ProjectDetailState copyWith({
    Project? projectSelected,
  }) {
    return ProjectDetailState(
      projectSelected: projectSelected ?? this.projectSelected,
    );
  }

  @override
  bool operator ==(covariant ProjectDetailState other) {
    if (identical(this, other)) return true;

    return other.projectSelected == projectSelected;
  }

  @override
  int get hashCode => projectSelected.hashCode;
}
