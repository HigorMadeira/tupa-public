import 'package:tupa_backend/src/project/i_project_datasource.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

class ProjectRepository implements IProjectRepository {
  final IProjectDatasource _datasource;
  final ILogger _logger;
  ProjectRepository(this._datasource, this._logger);

  @override
  Future<Either<ProjectFailure, List<Project>>> getAllProjects() async {
    try {
      final result = await _datasource.getAllProjects();
      return right(result);
    } catch (e) {
      _logger.error('Error getting all projects: ', e);
      return left(const ProjectFailure.serverError());
    }
  }

  @override
  Future<Either<ProjectFailure, Project>> createProject(Project project) async {
    try {
      final projectCreated = await _datasource.createProject(project);
      return right(projectCreated);
    } catch (e) {
      _logger.error('Error creating project', e);
      return left(const ProjectFailure.serverError());
    }
  }

  @override
  Future<Either<ProjectFailure, int>> deleteProject(int id) {
    // TODO: implement deleteProject
    throw UnimplementedError();
  }

  @override
  Future<Either<ProjectFailure, Project>> getProject(int id) {
    // TODO: implement getProject
    throw UnimplementedError();
  }

  @override
  Future<Either<ProjectFailure, Project>> updateProject(Project project) {
    // TODO: implement updateProject
    throw UnimplementedError();
  }
}
