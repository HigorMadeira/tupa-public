import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/src/role/domain_role.dart';

abstract class IRoleRepository {
  Future<Either<RoleFailure, List<Role>>> getAllRoles();
}
