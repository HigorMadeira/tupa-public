import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

abstract class IProjectRepository {
  Future<Either<ProjectFailure, List<Project>>> getAllProjects();
  Future<Either<ProjectFailure, Project>> getProject(int id);
  Future<Either<ProjectFailure, Project>> createProject(Project project);
  Future<Either<ProjectFailure, Project>> updateProject(Project project);
  Future<Either<ProjectFailure, int>> deleteProject(int id);
}
