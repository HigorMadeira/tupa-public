import 'package:tupa_domain/tupa_domain.dart';

abstract class IProjectDatasource {
  Future<List<Project>> getAllProjects();
  Future<Project> getProject(int id);
  Future<Project> createProject(Project project);
  Future<Project> updateProject(Project project);
  Future<void> deleteProject(int id);
}
