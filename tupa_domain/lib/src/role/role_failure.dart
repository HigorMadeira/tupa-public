import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';

part 'role_failure.freezed.dart';

@freezed
class RoleFailure with _$RoleFailure {
  const factory RoleFailure.serverError() = RoleServerError;
}
