import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';

class AuthRepository implements IAuthRepository {
  final SupabaseClient client;
  final ILogger _logger;

  AuthRepository(this.client, this._logger);

  @override
  Future<Option<CustomUser>> getSignedInUser() async {
    final user = client.auth.currentUser;

    if (user != null) {
      List<Role> userRoles = await getUserRoles(user.id);

      final notificationsRead = await getNotificationsRead(user.id, userRoles);
      return some(CustomUser(
        uuid: user.id,
        name: user.email!,
        email: user.email!,
        userRoles: userRoles,
        notificationsRead: notificationsRead,
      ));
    }

    return none();
  }

  Future<List<int>> getNotificationsRead(
      String userId, List<Role> roles) async {
    List<int> notificationsRead = <int>[];

    if (roles.where((role) => role.name == 'teacher').isNotEmpty) {
      final notificationsReadData = await client
          .from('allowedUser')
          .select('notifications_read')
          .eq('user_id', userId);

      if (notificationsReadData.isNotEmpty &&
          notificationsReadData[0]['notifications_read'] != null) {
        notificationsRead =
            (notificationsReadData[0]['notifications_read'] as List<dynamic>)
                .map((notification) => notification as int)
                .toList();
      }
    }

    return notificationsRead;
  }

  Future<List<Role>> getUserRoles(String id) async {
    final userRolesData = await client.from('user_role').select('''
        role_id(*)
        ''').eq('user_id', id);

    final userRoles = (userRolesData as List<dynamic>)
        .map((userRole) => Role(
              id: userRole['role_id']['id'],
              name: userRole['role_id']['name'],
            ))
        .toList();
    return userRoles;
  }

  @override
  Future<Either<AuthFailure, CustomUser>> signIn(
      String email, String password) async {
    try {
      final result = await client.auth
          .signInWithPassword(email: email, password: password);
      // print(result.toString());

      bool isUserActive = false;

      final allowedUser = await client
          .from('allowedUser')
          .select()
          .eq('user_id', result.user!.id);

      isUserActive = allowedUser[0]['active'] as bool;

      if (!isUserActive) {
        return left(const AuthFailure.emailNotAllowed());
      }

      final dynamic user =
          await client.from('user').select().eq('id', result.user!.id);
      final userRolesData = await client.from('user_role').select('''
          role_id(*)
          ''').eq('user_id', result.user!.id);

      final userRoles = (userRolesData as List<dynamic>)
          .map((userRole) => Role(
                id: userRole['role_id']['id'],
                name: userRole['role_id']['name'],
              ))
          .toList();

      final notificationsRead = await getNotificationsRead(user.id, userRoles);

      return right(CustomUser(
          uuid: user[0]['id'] as String,
          name: user[0]['name'] as String,
          userRoles: userRoles,
          notificationsRead: notificationsRead));
    } catch (e, stack) {
      _logger.error('RepositoryError', e, stack);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, CustomUser>> signUp(
      AllowedUser allowedUser, String password) async {
    try {
      final result = await client.auth
          .signInWithPassword(email: allowedUser.email!, password: password);

      await client
          .from('user')
          .insert({'id': result.user?.id, 'name': allowedUser.name}).select();

      await client
          .from('user_role')
          .insert({'user_id': result.user?.id, 'role_id': allowedUser.roleId});

      final userRolesData = await client.from('user_role').select('''
          role_id(*)
          ''').eq('user_id', result.user!.id);

      final userRoles = (userRolesData as List<dynamic>)
          .map((userRole) => Role(
                id: userRole['role_id']['id'],
                name: userRole['role_id']['name'],
              ))
          .toList();

      final isTeacherOrCoordinator = userRoles
          .where((role) =>
              role.name == 'teacher' || role.name == 'schoolCoordinator')
          .isNotEmpty;

      if (isTeacherOrCoordinator) {
        final isTeacher =
            userRoles.where((role) => role.name == 'teacher').isNotEmpty;

        for (final schoolId in allowedUser.schoolIds!) {
          await client.from('school_user').insert({
            'user_id': result.user?.id,
            'allowedUser_id': allowedUser.id,
            'schools_id': schoolId,
            'isTeacher': isTeacher,
            'isCoordinator': !isTeacher,
          });
        }
      }

      if (userRoles.where((role) => role.name == 'student').isNotEmpty) {
        await client.from('school_user').update({
          'user_id': result.user?.id,
        }).eq('userAllowed_id', allowedUser.id!);
      }

      await client.from('allowedUser').update({
        'name': allowedUser.name!,
        'email': allowedUser.email!,
        'user_id': result.user?.id,
        'signedUp': true,
        'active': true,
      }).eq('id', allowedUser.id!);

      return right(
        CustomUser(
          uuid: result.user!.id,
          name: allowedUser.name!,
          email: allowedUser.email!,
          userRoles: userRoles,
        ),
      );
    } catch (e, stack) {
      _logger.error('RepositoryError', e, stack);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    return client.auth.signOut();
  }

  @override
  Future<Either<AuthFailure, UserAccount>> signInUserAccount(
      String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, UserAccount>> signInWithGoogle(
      String email, String idToken) {
    throw UnimplementedError();
  }
}
