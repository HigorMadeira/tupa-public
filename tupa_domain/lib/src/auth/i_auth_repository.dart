import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';

import 'package:tupa_domain/src/auth/domain_auth.dart';
import 'package:tupa_domain/src/user/allowed_user.dart';

abstract class IAuthRepository {
  Future<Option<CustomUser>> getSignedInUser();
  Future<Either<AuthFailure, CustomUser>> signIn(String email, String password);
  Future<Either<AuthFailure, CustomUser>> signUp(
      AllowedUser allowedUser, String password);
  Future<void> signOut();
  Future<Either<AuthFailure, UserAccount>> signInUserAccount(
      String email, String password);
  Future<Either<AuthFailure, UserAccount>> signInWithGoogle(
      String email, String idToken);
}
