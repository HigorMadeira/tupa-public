import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';

part 'project_failure.freezed.dart';

@freezed
class ProjectFailure with _$ProjectFailure {
  const factory ProjectFailure.serverError() = ProjectFailureServerError;
}
