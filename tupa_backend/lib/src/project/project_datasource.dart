import 'package:tupa_backend/src/project/i_project_datasource.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

class ProjectDatasource implements IProjectDatasource {
  final SupabaseClient _client;

  ProjectDatasource(this._client);

  @override
  Future<List<Project>> getAllProjects() async {
    //   final response = await _client.from('project').select('''
    //   *,
    //   towers:tower_project(
    //     id,
    //     tower:tower_id(*)
    //   )
    // ''').order('created_at', ascending: false);

    final response = await _client
        .from('project')
        .select()
        .order('created_at', ascending: false);
    final projects = (response as List).map((e) => Project.fromMap(e)).toList();
    return projects;
  }

  @override
  Future<Project> createProject(Project project) async {
    final projectResponse = await _client
        .from('project')
        .insert(project.toDbMapWithoutId())
        .select();

    final projectId = (projectResponse as List).first['id'] as int;

    return project.copyWith(
      id: projectId,
    );
  }

  @override
  Future<void> deleteProject(int id) {
    // TODO: implement deleteProject
    throw UnimplementedError();
  }

  @override
  Future<Project> getProject(int id) {
    // TODO: implement getProject
    throw UnimplementedError();
  }

  @override
  Future<Project> updateProject(Project project) {
    // TODO: implement updateProject
    throw UnimplementedError();
  }
}
