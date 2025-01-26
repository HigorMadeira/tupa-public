import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/src/user/domain_user.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, List<AllowedUser>>> getAllAllowedUsers(
      Map<String, dynamic>? filter);
  Future<Either<UserFailure, AllowedUser>> createAllowedUser(
      AllowedUser allowedUser);
  Future<Either<UserFailure, AllowedUser>> updateAllowedUser(
      AllowedUser allowedUser);
  Future<Either<UserFailure, AllowedUser>> deleteAllowedUser(AllowedUser user);
}
